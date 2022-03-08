<?php

namespace App\Http\Controllers\Admin;

use App\Models\Classes;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use Illuminate\Support\Facades\DB;

class ClassController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $type = isset($request->type) ? $request->type : 'id';
        $order = isset($request->order) ? $request->order : 'asc';
        $arrangeClasses = Classes::arrangeClasses()->orderBy($type, $order)->paginate(50);
        $learningClasses = Classes::learningClasses()->orderBy($type, $order)->paginate(50);
        $finishClasses = Classes::finishClasses()->orderBy($type, $order)->paginate(50);
        return view('admin.class.class-read', [
            'arrangeClasses' => $arrangeClasses,
            'learningClasses' => $learningClasses,
            'finishClasses' => $finishClasses,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
     * @param  \App\Class  $class
     * @return \Illuminate\Http\Response
     */
    public function show(Classes $class)
    {
        return view('admin.class.class-show', [
            'users' => $class->users,
            'teacher' => $class->teacher,
            'product' => $class->product,
            'class' => $class,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Class  $class
     * @return \Illuminate\Http\Response
     */
    public function edit(Classes $class)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Class  $class
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Classes $class)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Class  $class
     * @return \Illuminate\Http\Response
     */
    public function destroy(Classes $class)
    {
        //
    }
}
