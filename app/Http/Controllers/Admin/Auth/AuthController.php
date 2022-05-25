<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
// use App\Http\Requests\LoginRequest;
// use App\Http\Requests\RegisterRequest;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    /**
     * Show form login
     */
    public function login()
    {
        return view('admin.auth.login');
    }

    /**
     * Handle an authentication attempt.
     */
    public function authenticate(Request $request)
    {
        $user = User::where('email', $request->email)->firstOrFail();
        if (!$user->role) {
            return back()->withErrors(['message1' => 'Đăng nhập thất bại']);
        }
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $request->session()->regenerate();
            return redirect()->route('users.index');
        }
        return back()->withInput();
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
