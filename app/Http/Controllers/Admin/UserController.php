<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Requests\UserRequest;
use App\Http\Requests\UserUpdateRequest;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a list of the resource
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $type = isset($request->type) ? $request->type : 'id';
        $order = isset($request->order) ? $request->order : 'asc';
        $userList = User::orderBy($type, $order)->paginate(50);
        return view('admin.user.user-read', [
            'data' => $userList,
            'actions' => true,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::find($id);
        if ($user) {
            return view("admin.user.user-create-update", ["data" => $user]);
        }
        return redirect()->route("403");
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UserUpdateRequest $request, User $user)
    {
        $user->name = $request->name;
        $user->email = $request->email;
        if (isset($request->password)
            && isset($request->password_confirmation)
            && Hash::check($request->password_confirmation, $user->password)
        ) {
            $user->password = bcrypt($request->password);
        }
        $user->address = $request->address;
        $user->phone = $request->phone;
        $user->role = $request->role;
        $user->gender = $request->gender;

        if ($user->save()) {
            return redirect(route("users.index"));
        }
        return redirect(route("403"));
    }

    /**
     * Arrange User
     *
     */
    public function arrangeUser($cate, $type)
    {
        $user_list = User::orderBy($cate, $type)->get();
        $html = $this->ajax($user_list);
        return (["html" => $html, "status" => "200 OK"]);
    }

    /**
     * Show the form for creating the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("admin.user.user-create-update");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'address' => isset($request->address) ? $request->address : '',
            'phone' => $request->phone,
            'role' => $request->role,
            'gender' => $request->gender,
        ]);
        return redirect()->route("users.index");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::find($id);
        if ($user != null) {
            $user->delete();
            return redirect(route("users.index"));
        } else {
            return redirect(route("403"));
        }
    }
}
