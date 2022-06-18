<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Teacher;
use App\Models\Product;
use Illuminate\Support\Facades\Storage;
use App\Http\Requests\Admin\TeacherRequest;

class TeacherController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $teachers = Teacher::with('product')->paginate(10);
        return view('admin.teacher.read', ['teachers' => $teachers]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $products = Product::all();
        return view('admin.teacher.create-update', ['products' => $products]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TeacherRequest $request)
    {
        $request->validate(['photo' => 'bail|required|image']);

        $photoName = time() . '_' . str_replace(' ', '', $request->name) . '.' . $request->photo->extension();
        $teacher = Teacher::create([
            'name' => $request->name,
            'product_id' => $request->product,
            'description' => $request->editor,
            'photo' => '/storage/img/avatar/' . $photoName,
        ]);
        return redirect()->route('teachers.index');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */
    public function edit(Teacher $teacher)
    {
        $products = Product::all();
        return view('admin.teacher.create-update', [
            'products' => $products,
            'teacher' => $teacher,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */
    public function update(TeacherRequest $request, Teacher $teacher)
    {
        $arr = [
            'name' => $request->name,
            'product_id' => $request->product,
            'description' => $request->editor,
        ];

        if ($request->hasFile('photo')) {
            $nameImg = substr($teacher->photo, 9);
            $photoName = time() . '_' . str_replace(' ', '', $request->name) . '.' . $request->photo->extension();
            $arr['photo'] = '/storage/img/avatar/' . $photoName;
        }

        $rowUpdated = $teacher->update($arr);
        if (!$rowUpdated) {
            return redirect()->back()->withInput();
        }

        if ($request->hasFile('photo') && Storage::disk('public')->exists($nameImg)) {
            Storage::disk('public')->delete($nameImg);
            $request->photo->storeAs('img/avatar', $photoName, 'public');
        }

        return redirect()->route('teachers.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */
    public function destroy(Teacher $teacher)
    {
        $teacher->delete();
        return redirect()->route('teachers.index');
    }
}
