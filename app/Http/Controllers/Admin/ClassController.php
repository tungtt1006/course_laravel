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
        Classes::create([
            'product_id' => $request->product,
            'teacher_id' => $request->teacher,
            'sessions' => $request->sessions,
            'start_day' => $request->startday,
            'time_in' => $request->timein,
            'time_out' => $request->timeout,
            'days_of_week' => $request->daysofweek,
            'number' => Classes::calculateNumber($request->product),
        ]);
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
        if (!Classes::isUpdated($class)) {
            return back()->withInput();
        }
        $class->update([
            'product_id' => $request->product,
            'teacher_id' => $request->teacher,
            'sessions' => $request->sessions,
            'start_day' => $request->startday,
            'time_in' => $request->timein,
            'time_out' => $request->timeout,
            'days_of_week' => $request->daysofweek,
        ]);
        return redirect()->route('classes.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Class  $class
     * @return \Illuminate\Http\Response
     */
    public function destroy(Classes $class)
    {
        $class->delete();
        return redirect()->route('classes.index');
    }
}
