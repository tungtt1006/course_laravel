<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Requests\UserRequest;

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
        return view("backend.UserCreateUpdate", ["data" => $user]);
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
        $users->gender = $request->gender;
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
        $user->address = $request->address;
        $user->phone = $request->phone;
        $user->role = $request->role;
        $user->gender = $request->gender;
        // $user->file = '';
        if ($user->save()) {
            return redirect(route("users.index"));
        } else {
            return redirect(route("403"));
        }
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
