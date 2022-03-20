<?php

namespace App\Http\Controllers\Admin;

use App\Models\Classes;
use App\Models\Product;
use App\Models\Teacher;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

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
        $arrangeClasses = Classes::ofStatus('arrange')->orderBy($type, $order)->paginate(50);
        $learningClasses = Classes::ofStatus('learning')->orderBy($type, $order)->paginate(50);
        $finishClasses = Classes::ofStatus('finish')->orderBy($type, $order)->paginate(50);
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
        return view('admin.class.class-create-update', [
            'products' => Product::all(),
            'teachers' => Teacher::all(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (Classes::isArrange($request->product)) {
            return back()->withInput();
        }
        $class = new Classes();
        $class->product_id = $request->product;
        $class->teacher_id = $request->teacher;
        $class->sessions = $request->sessions;
        $class->start_day = $request->startday;
        $class->time_in = $request->timein;
        $class->time_out = $request->timeout;
        $class->days_of_week = $request->daysofweek;
        $class->number = $class->caculateNumber($request->product);
        $class->save();
        return redirect()->route('classes.index');
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
            'periods' => $class->periods()->orderBy('id', 'asc')->paginate(8),
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
        return view('admin.class.class-create-update', [
            'products' => Product::all(),
            'teachers' => Teacher::all(),
            'class' => $class,
        ]);
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
