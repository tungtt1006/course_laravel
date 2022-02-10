<?php

namespace Tests\Unit\Http\Controllers\backend;

use App\Models\Category;
use Tests\TestCase;
use Illuminate\Support\Facades\Session;
use Illuminate\Foundation\Testing\DatabaseTransactions;

class CategoryTest extends TestCase
{
    use DatabaseTransactions;

    public $category = null;

    protected function setUp(): void
    {
        parent::setUp();
        // $this->category = Category::first();
    }
     /**
     * Test function index
     *
     * @return void
     */
    public function testIndex()
    {
        $response = $this->get('admin/category');
        $response->assertOk();
        $data = $response->getOriginalContent()->getData();
        $this->assertTrue(isset($data['data']) && count($data['data']) <= 5 && count($data['data']) >=0);
    }

    /**
     * Test function create
     *
     * @return void
     */
    public function testCreate()
    {
        $response = $this->get('admin/category/create');
        $response->assertStatus(200);
    }

    /**
     * Test function store when create successfully
     *
     * @return void
     */
    public function testStoreSuccess()
    {
        Session::start();
        $response = $this->post('admin/category', [
            '_token' => csrf_token(),
            'name' => 'Tung',
            'description' => 'Hello world',
            'display' => 1,
        ]);
        $this->assertDatabaseHas('categories', [
            'name' => 'Tung',
            'description' => 'Hello world',
            'display' => 1,
        ]);
        $response->assertStatus(302);
        $response->assertRedirect('admin/category');
    }

    /**
     * Test function store when doesn't has description
     *
     * @return void
     */
    public function testStoreWithoutDescription()
    {
        Session::start();
        $response = $this->post('admin/category', [
            '_token' => csrf_token(),
            'name' => 'Tung',
            'display' => 1,
        ]);
        $this->assertDatabaseHas('categories', [
            'name' => 'Tung',
            'description' => '',
            'display' => 1,
        ]);
        $response->assertStatus(302);
        $response->assertRedirect('admin/category');
    }

    /**
     * Test function store fail in validate
     * @param string $name
     * @param string $description
     * @param int $display
     *
     * @dataProvider providerTestStoreFailInValidate
     */
    public function testStoreFailInValidate($name, $description, $display)
    {
        Session::start();
        $response = $this->post('admin/category', [
            '_token' => csrf_token(),
            'name' => $name,
            'description' => $description,
            'display' => $display,
        ]);
        $response->assertStatus(302);
        $response->assertRedirect('/');
    }

    public function providerTestStoreFailInValidate()
    {
        return [
            ['', '12345678op', 1],
            ['Tung', '12345678', 'bkbk'],
            ['kuphal.estella@hotmail.com', '', 3],
            ['', '', 0],
        ];
    }

    /**
     * Test function edit with status 200
     *
     * @return void
     */
    public function testEditStatus200()
    {
        $GLOBALS['category'] = Category::first();
        $response = $this->get('admin/category/'.$GLOBALS['category']->id.'/edit');
        $response->assertStatus(200);
        $data = $response->getOriginalContent()->getData();
        $this->assertTrue(isset($data['data']));
        $this->assertEquals($GLOBALS['category']->name, $data['data']->name);
        $this->assertEquals($GLOBALS['category']->description, $data['data']->description);
        $this->assertEquals($GLOBALS['category']->display, $data['data']->display);
    }

    /**
     * Test function edit with status 302
     *
     * @return void
     */
    public function testEditStatus302()
    {
        $response = $this->get('admin/category/-1/edit');
        $response->assertStatus(302);
        $response->assertRedirect("admin/403");
    }

    /**
     * Test function update when update successfully
     *
     * @return void
     */
    public function testUpdateSuccess()
    {
        Session::start();
        $user = Category::first();
        $response = $this->put('admin/category/'.$GLOBALS['category']->id, [
            '_token' => csrf_token(),
            'name' => 'Tung',
            'description' => 'Hello world',
            'display' => 1,
        ]);
        $response->assertStatus(302);
        $this->assertDatabaseHas('categories', [
            'name' => 'Tung',
            'description' => 'Hello world',
            'display' => 1,
        ]);
        $response->assertRedirect('admin/category');
    }

    /**
     * Test function delete when delete successfully
     *
     * @return void
     */
    public function testDeleteSuccess()
    {
        Session::start();
        $response = $this->delete('admin/category/'.$GLOBALS['category']->id, [
            '_token' => csrf_token()
        ]);
        $category = Category::withTrashed()->where('id', '=', $GLOBALS['category']->id)->first();
        $this->assertNotEquals(null, $category->deleted_at);
        $response->assertStatus(302);
        $response->assertRedirect('admin/category');
    }

    /**
     * Test function delete when delete fail
     *
     * @return void
     */
    public function testDeleteFail()
    {
        Session::start();
        $response = $this->delete('admin/category/-1', [
            '_token' => csrf_token()
        ]);
        $response->assertStatus(302);
        $response->assertRedirect("admin/403");
    }
}
