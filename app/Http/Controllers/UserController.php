<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    /**
     * Display a list of the resource
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $userList = User::all();
        return view('backend.UserRead', ['data' => $userList]);
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
        return view("backend.UserCreateUpdate", ["data" => $user, "action" => "update"]);
    }

    /** 
     * Sắp xếp
     *  
     */
    public function arrangeUser($cate, $type)
    {
        $user_list = User::orderBy($cate,$type)->get();
        $html = $this->ajax($user_list);
        return (["html" => $html, "status" => "200 OK"]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $users = User::find($id);
        $users->name = $request->name;
        if ($request->password != "" && $users->password === $request->confirm_password) {
            $users->password = bcrypt($request->password);
        }
        $users->address = $request->address;
        $users->phone = $request->phone;
        $users->role = $request->role;
        $users->gender = 1;
        /**
         * Upload file
         */
        if ($request->photo != '') {        
            $path = public_path().'/upload/users/';
            // code for remove old file
            if ($users->photo != '' && $users->photo != null) {
               unlink($path.$users->photo);
            }

            //upload new file
            $image = $request->file('photo');
            $storedPath = $image->move('upload/users', $image->getClientOriginalName());
          
            if ($image->getClientOriginalName() != null) 
                $users->photo = $image->getClientOriginalName(); 
            else 
                $users->photo = '';

        }
        $users->save();
        return redirect(route("users.index"));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
