<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Requests\UserRequest;
use App\Http\Requests\UserUpdateRequest;

class UserController extends Controller
{
    /**
     * Display a list of the resource
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $userList = User::limit(5)->get();
        if ($userList) {
            return view('backend.UserRead', ['data' => $userList]);
        } else {
            return redirect(route("403"));
        }
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
            return view("backend.UserCreateUpdate", ["data" => $user]);
        } else {
            return redirect(route("403"));
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UserUpdateRequest $request, $id)
    {
        $users = User::find($id);
        $users->name = $request->name;
        $users->email = $request->email;
        if (isset($request->password)
            && $users->password === $request->password_confirmation
        ) {
            $users->password = bcrypt($request->password);
        }
        $users->address = $request->address;
        $users->phone = $request->phone;
        $users->role = $request->role;
        $users->gender = $request->gender;
        // Upload file
        // if ($request->photo != '') {
        //     $path = public_path().'/upload/users/';
        //     // code for remove old file
        //     if ($users->photo != '' && $users->photo != null) {
        //         unlink($path.$users->photo);
        //     }

        //     // Upload new file
        //     $image = $request->file('photo');
        //     $storedPath = $image->move('upload/users', $image->getClientOriginalName());

        //     if ($image->getClientOriginalName() != null) {
        //         $users->photo = $image->getClientOriginalName();
        //     } else {
        //         $users->photo = '';
        //     }
        // }
        if ($users->save()) {
            return redirect(route("users.index"));
        } else {
            return redirect(route("403"));
        }
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
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("backend.UserCreateUpdate");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->address = isset($request->address) ? $request->address : '';
        $user->phone = $request->phone;
        $user->role = $request->role;
        $user->gender = $request->gender;
        // $user->file = '';
        $user->save();
        return redirect(route("users.index"));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function show($id)
    // {
    //     //
    // }

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
