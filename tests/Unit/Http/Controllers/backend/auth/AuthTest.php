<?php

namespace Tests\Unit\Http\Controllers\backend\auth;

use Illuminate\Support\Facades\Session;
use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use App\Models\User;
// use Illuminate\Foundation\Testing\DatabaseTransactions;

class AuthTest extends TestCase
{
    use WithFaker;
    // use DatabaseTransactions;

    /**
     * Test function login
     *
     * @return void
     */
    public function testLoginSuccess()
    {
        $response = $this->get('admin/login');
        $response->assertOk();
    }

    /**
     * Test function authLogin successfully
     *
     * @return void
     */
    public function testAuthLoginSuccess()
    {
        Session::start();
        $user = User::first();
        $response = $this->post('admin/login', [
            '_token' => csrf_token(),
            'email' => $user->email,
            'password' => '12345678',
        ]);
        $response->assertStatus(302);
        $response->assertRedirect('admin/users');
    }

    /**
     * Test function authLogin fail in validate
     * @param string $email
     * @param string $password
     *
     * @dataProvider providerTestAuthLoginFailInValidate
     */
    public function testAuthLoginFailInValidate($email, $password)
    {
        Session::start();
        $response = $this->post('admin/login', [
            '_token' => csrf_token(),
            'email' => $email,
            'password' => $password,
        ]);
        $response->assertStatus(302);
        $response->assertRedirect('/');
    }

    public function providerTestAuthLoginFailInValidate()
    {
        return [
            ['kuphal.estella@hotmail.com', '12345678op'],
            ['', '12345678'],
            ['kuphal.estella@hotmail.com', ''],
            ['', ''],
            [' ', ' '],
            ['kuphal.estellahotmail.com', '12345678'],
        ];
    }

    /**
     * Test function authLogin fail when is wrong email
     *
     * @return void
     */
    public function testAuthLoginFailWWrongEmail()
    {
        Session::start();
        $response = $this->post('admin/login', [
            '_token' => csrf_token(),
            'email' => 'kup.estella@hotmail.com',
            'password' => '12345678',
        ]);
        $response->assertStatus(302);
        $response->assertRedirect('/');
    }

    /**
     * Test function authLogin fail when is wrong password
     *
     * @return void
     */
    public function testAuthLoginFailWWrongPassword()
    {
        Session::start();
        $response = $this->post('admin/login', [
            '_token' => csrf_token(),
            'email' => 'kuphal.estella@hotmail.com',
            'password' => '123456789',
        ]);
        $response->assertStatus(302);
        $response->assertRedirect('/');
    }

    /**
     * Test function register
     *
     * @return void
     */
    public function testRegisterSuccess()
    {
        $response = $this->get('admin/register');
        $response->assertOk();
    }

    /**
     * Test function authRegister successfully
     *
     * @return void
     */
    public function testAuthRegisterSuccess()
    {
        Session::start();
        $email = $this->faker->email();
        $response = $this->post('admin/register', [
            '_token' => csrf_token(),
            'name' => 'Minh',
            'password' => '12345678',
            'password_confirmation' => '12345678',
            'email' => $email,
            'address' => '80 Hao Nam',
            'phone' => '0989842021',
            'gender' => 1
        ]);
        $this->assertDatabaseHas('users', [
            'name' => 'Minh',
            'email' => $email,
            'address' => '80 Hao Nam',
            'phone' => '0989842021',
            'gender' => 1
        ]);
        $response->assertStatus(302);
        $response->assertRedirect('admin/users');
    }

    /**
     * Test function authRegister fail in validate
     * @param string $email
     * @param string $password
     *
     * @dataProvider providerTestAuthRegisterFailInValidate
     */
    public function testAuthRegisterFailInValidate($email, $password)
    {
        Session::start();
        $response = $this->post('admin/register', [
            '_token' => csrf_token(),
            'name' => 'Minh',
            'password' => $password,
            'password_confirmation' => $password,
            'email' => $email,
            'address' => '80 Hao Nam',
            'phone' => '0989842021',
            'gender' => 1
        ]);
        $response->assertStatus(302);
        $response->assertRedirect('/');
    }

    public function providerTestAuthRegisterFailInValidate()
    {
        return [
            ['kuphal.estella@hotmail.com', '12345678op'],
            ['', '12345678'],
            ['kuphal.est23ella@hotmail.com', ''],
            ['', ''],
            [' ', ' '],
            ['kuphal.estellahotmail.com', '12345678'],
        ];
    }
}
