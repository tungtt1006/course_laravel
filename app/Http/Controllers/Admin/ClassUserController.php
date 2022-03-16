<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Classes;

class ClassUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Classes $class)
    {
        return view('admin.user.user-read', [
            'class' => $class,
            'data' => $class->users()->paginate(10),
            'actions' => ($class->status == 'finish') ? false : true,
        ]);
    }
}
