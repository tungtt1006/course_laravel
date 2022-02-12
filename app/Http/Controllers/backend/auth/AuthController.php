<?php

namespace App\Http\Controllers\backend\auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\RegisterRequest;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    /**
     * show form login
     */
    public function login()
    {
        return view('backend.auth.Login');
    }

    /**
     * authentic account
     */
    public function authLogin(LoginRequest $request)
    {
        $user = User::where('email', '=', $request->email)->first();
        if ($user != null
            && Hash::check($request->password, $user->password)
        ) {
            return redirect(route('users.index'));
        } else {
            return redirect()->back()->withInput()->withErrors(['msg' => 'Kiểm tra lại mất khẩu hoặc email']);
        }
    }

    /**
     * show form register
     */
    public function register()
    {
        return view('backend.auth.Register');
    }

    /**
     * insert an account into db
     */
    public function authRegister(RegisterRequest $request)
    {
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->address = isset($request->address) ? $request->address : '';
        $user->phone = $request->phone;
        $user->role = 0;
        $user->gender = $request->gender;
        $user->save();
        return redirect(route("users.index"));
    }
}
