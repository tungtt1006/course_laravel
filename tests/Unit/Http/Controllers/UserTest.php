<?php

namespace Tests\Unit\Http\Controllers;

use Tests\TestCase;
use App\Models\User;
use Illuminate\Support\Facades\Session;
use Illuminate\Foundation\Testing\WithFaker;

class UserTest extends TestCase
{
    use WithFaker;

    /**
     * Test function index
     *
     * @return void
     */
    public function testIndex()
    {
        $response = $this->get('admin/users');
        $this->assertEquals(200, $response->getStatusCode());
        $data = $response->getOriginalContent()->getData();
        $this->assertTrue(isset($data['data']) && count($data['data']) <= 5 && count($data['data']) >=0);
    }

    /**
     * Test function create with status 200
     *
     * @return void
     */
    public function testCreateStatus200()
    {
        $response = $this->get('admin/users/create');
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
        $email = $this->faker->email();
        $response = $this->post('admin/users', [
            '_token' => csrf_token(),
            'name' => 'Tung',
            'password' => '12345678',
            'password_confirmation' => '12345678',
            'email' => $email,
            'address' => '80 Hao Nam',
            'phone' => '0989842021',
            'role' => 1,
            'gender' => 1
        ]);
        $response->assertStatus(302);
        $this->assertDatabaseHas('users', [
            'name' => 'Tung',
            'email' => $email,
            'address' => '80 Hao Nam',
            'phone' => '0989842021',
            'role' => 1,
            'gender' => 1
        ]);
        $response->assertRedirect('admin/users');
    }

    /**
     * Test function store when create fail in validate
     *
     * @return void
     */
    public function testStoreFailInValidate()
    {
        Session::start();
        $response = $this->post('admin/users', [
            '_token' => csrf_token(),
            'name' => 'Tung',
            'password' => '12345678',
            'password_confirmation' => '123456789',
            'email' => 'kkkkk',
            'address' => '80 Hao Nam',
            'phone' => '0989842021',
            'role' => 1,
            'gender' => 1
        ]);
        $response->assertStatus(302);
        $response->assertRedirect('/');
    }

    /**
     * Test function store when create fail in validate
     *
     * @return void
     */
    public function testStoreFailInValidate()
    {
        Session::start();
        $response = $this->post('admin/users', [
            '_token' => csrf_token(),
            'name' => 'Tung',
            'password' => '12345678',
            'password_confirmation' => '123456789',
            'email' => 'kkkkk',
            'address' => '80 Hao Nam',
            'phone' => '0989842021',
            'role' => 1,
            'gender' => 1
        ]);
        $response->assertStatus(302);
        $response->assertRedirect('/');
    }

    /**
     * Test function edit with status 200
     *
     * @return void
     */
    public function testEditStatus200()
    {
        $user = User::first();
        $response = $this->get('admin/users/'.$user->id.'/edit');
        $response->assertStatus(200);
        $data = $response->getOriginalContent()->getData();
        $this->assertTrue(isset($data['data']));
        $this->assertDatabaseHas('users', [
            'email' => $data['data']->email
        ]);
    }

    /**
     * Test function edit with status 302
     *
     * @return void
     */
    public function testEditStatus302()
    {
        $response = $this->get('admin/users/-1/edit');
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
        $user = User::first();
        $response = $this->put('admin/users/'.$user->id, [
            '_token' => csrf_token(),
            'name' => 'Tung',
            'email' => 'Tunghaha@gmail.com',
            'password' => '12345678',
            'password_confirmation' => '12345678',
            'address' => '80 Hao Nam',
            'phone' => '0989842021',
            'role' => 1,
            'gender' => 1
        ]);
        $response->assertStatus(302);
        $this->assertDatabaseHas('users', [
            'id' => $user->id,
            'name' => 'Tung',
            'email' => 'Tunghaha@gmail.com',
            'address' => '80 Hao Nam',
            'phone' => '0989842021',
            'gender' => 1,
            'role' => 1
        ]);
        $response->assertRedirect('admin/users');
    }

    /**
     * Test function update when update fail
     *
     * @return void
     */
    public function testUpdateFail()
    {
        Session::start();
        $user = User::first();
        $response = $this->put('admin/users/'.$user->id, [
            '_token' => csrf_token(),
            'name' => 'Tung',
            'email' => 'Tunghaha@gmail.com',
            'password' => '12345678',
            'password_confirmation' => '12345678',
            'address' => '80 Hao Nam',
            'phone' => '09898420210000',
            'role' => 1,
            'gender' => 1
        ]);
        $response->assertStatus(302);
        $response->assertRedirect('/');
    }

    /**
     * Test function delete when delete successfully
     *
     * @return void
     */
    public function testDeleteSuccess()
    {
        // Session::start();
        // $user = User::first();
        // $response = $this->delete('admin/users/'.$user->id, [
        //     '_token' => csrf_token()
        // ]);
        // $user1 = User::find($user->id);
        // $this->assertNotEquals(null, $user1->deleted_at);
        // $response->assertStatus(302);
        // $response->assertRedirect('admin/users');
    }

    /**
     * Test function delete when delete fail
     *
     * @return void
     */
    public function testDeleteFail()
    {
        // Session::start();
        // $response = $this->delete('admin/users/-1', [
        //     '_token' => csrf_token()
        // ]);
        // $response->assertStatus(302);
        // $response->assertRedirect('admin/403');
    }
}
