<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Http\Requests\CategoryRequest;

class CategoryController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $category = Category::all();
        return view('backend.CategoryRead', ["data" => $category]);
    }

    /**
     * Sắp xếp theo request
     *
     * return data được sắp xếp
     */
    public function arrangeCategory($cate, $type)
    {
        $data = Category::select('id', 'name', 'display')
            ->orderBy($cate,$type)
            ->paginate(5);
        return view('backend.category_read', ["data" => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.CategoryCreateUpdate');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CategoryRequest $request)
    {
        $category = new Category;
        $category->name = $request->name;
        $category->description = $request->description;
        $category->display = $request->display;
        if ($category->save()) {
            return redirect(route('category.index'));
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
        $data = Category::find($id)->products1()->paginate(5);
        return view('backend.product_read', ["data" => $data, "id" => $id]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = Category::find($id);
        return view('backend.CategoryCreateUpdate', ['data' => $category]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(CategoryRequest $request, $id)
    {
        $category = Category::find($id);
        $category->name = $request->name;
        $category->description = $request->description;
        $category->display = $request->display;
        $category->save();
        if ($category->save()) {
            return redirect(route('category.index'));
        } else {
            return redirect(route("403"));
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $category = Category::find($id);
        if ($category->delete()) {
            return redirect(route("category.index"));
        } else {
            return redirect(route("403"));
        } 
    }
}
