<?php

namespace App\Http\Controllers\Admin;

use App\Models\Classes;
use App\Models\Product;
use App\Models\Teacher;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;

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
        $order = isset($request->order) ? $request->order : 'desc';
        $classes = Classes::orderBy($type, $order)->paginate(50);
        return view('admin.class.class-read', [
            'classes' => $classes,
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
        // if (Carbon::parse($request->startday)->dayOfWeek !== 1) {
        //     return back()->withInput();
        // }
        // $daysOfWeek = explode("/", $request->daysofweek);
        // $weekNumber = ceil($request->sessions / count($daysOfWeek)) - 1;
        // if ($request->sessions % count($daysOfWeek) == 0) {
        //     $addDay = $weekNumber * 7 + ((int) $daysOfWeek[count($daysOfWeek) - 1] - 1);
        // } else {
        //     $restDay = $request->sessions % count($daysOfWeek);
        //     $addDay = $weekNumber * 7 + ((int) $daysOfWeek[$restDay - 1] - 1);
        // }
        Classes::create([
            'product_id' => $request->product,
            'teacher_id' => $request->teacher,
            'sessions' => $request->sessions,
            'start_day' => $request->startday,
            // 'end_day' => Carbon::parse($request->startday)->addDays($addDay - 1),
            'time_in' => $request->timein,
            'time_out' => $request->timeout,
            'days_of_week' => $request->daysofweek,
            'number' => Classes::calculateNumber($request->product),
        ]);
        return redirect()->route('classes.index');
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
            'users' => $class->users()->paginate(10),
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
        $class->update([
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
