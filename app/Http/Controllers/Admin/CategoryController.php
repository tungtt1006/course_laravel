<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Http\Requests\CategoryRequest;
use Illuminate\Support\Facades\Storage;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $category = Category::get();
        return view('admin.category.category-read', ["data" => $category]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.category.category-create-update');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CategoryRequest $request)
    {
        $request->validate(['photo' => 'required|image']);

        $photoName = time() . '_' . str_replace(' ', '', $request->name) . '.' . $request->photo->extension();
        $category = Category::create([
            'name' => $request->name,
            'description' => $request->description,
            'display' => $request->display,
            'photo' => '/storage/img/categories/' . $photoName,
        ]);

        if ($category) {
            $request->photo->storeAs('img/categories', $photoName, 'public');
            return redirect(route('category.index'));
        }
        return redirect()->route("403");
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        return view('admin.category.category-create-update', ['data' => $category]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(CategoryRequest $request, Category $category)
    {
        $arr = [
            'name' => $request->name,
            'description' => $request->description,
            'display' => $request->display,
        ];
        if ($request->hasFile('photo')) {
            $nameImg = substr($category->photo, 9);
            $photoName = time() . '_' . str_replace(' ', '', $request->name) . '.' . $request->photo->extension();
            $arr['photo'] = '/storage/img/categories/' . $photoName;
        }

        if (!$category->update($arr)) {
            return redirect(route("403"));
        }

        if ($request->hasFile('photo') && Storage::disk('public')->exists($nameImg)) {
            Storage::disk('public')->delete($nameImg);
            $request->photo->storeAs('img/categories', $photoName, 'public');
        }
        return redirect()->route('category.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        if ($category->delete()) {
            return redirect()->route("category.index");
        }
        return redirect()->route("403");
    }
}
