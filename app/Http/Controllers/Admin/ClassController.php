<?php

namespace App\Http\Controllers\Admin;

use App\Models\Classes;
use App\Models\Product;
use App\Models\Teacher;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Excel;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Exports\UserExport;
use App\Events\ClassCreated;

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
        $classes = Classes::with('teacherWithTrashed')->orderBy($type, $order)->paginate(10);
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
            'teachers' => $this->getFreeTeachers(),
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
        $class = Classes::create([
            'product_id' => $request->product,
            'teacher_id' => $request->teacher,
            'sessions' => $request->sessions,
            'start_day' => $request->startday,
            'time_in' => $request->timein,
            'time_out' => $request->timeout,
            'days_of_week' => $request->daysofweek,
            'number' => Classes::calculateNumber($request->product),
        ]);
        event(new ClassCreated($class));
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
            'teachers' => $this->getFreeTeachers()->where('product_id', $class->product_id),
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

    public function exportUsers(Classes $class)
    {
        return Excel::download(new UserExport($class), 'users.xlsx');
    }

    public function exportPeriods($classId)
    {
        $class = Classes::with(['periods', 'teacher'])->findOrFail($classId);

        if ($class->periods->count() <= 0) {
            return redirect()->back();
        }

        $pdf = Pdf::loadView('pdf.class-list', compact('class'));
        return $pdf->download('class_list.pdf');
    }

    private function getFreeTeachers()
    {
        $teacherIds = Classes::where('end_day', '>=', now())->get()->pluck(['teacher_id']);
        return Teacher::with('product')->whereNotIn('id', $teacherIds)->get();
    }
}
