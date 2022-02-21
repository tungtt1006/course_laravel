<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
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
    public function index(Request $request)
    {
        $type = isset($request->type) ? $request->type : 'display';
        $order = isset($request->order) ? $request->order : 'desc';
        $category = Category::orderBy($type, $order)->paginate(5);
        return view('admin.category.category-read', ["data" => $category]);
    }

    /**
     * Sắp xếp theo request
     *
     * return data được sắp xếp
     */
    // public function arrangeCategory($cate, $type)
    // {
    //     $data = Category::select('id', 'name', 'display')
    //         ->orderBy($cate, $type)
    //         ->paginate(5);
    //     return view('admin.category_read', ["data" => $data]);
    // }

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
        $category = new Category;
        $category->name = $request->name;
        $category->description = isset($request->description) ? $request->description : '';
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
    // public function show($id)
    // {
    //     $products = Category::find($id)->products()->paginate(5);
    //     $category = Category::find($id);
    //     // dd($data);
    //     return view('client.DetailCategory', ["products" => $products, "category" => $category]);
    // }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = Category::find($id);
        if ($category) {
            return view('admin.category.category-create-update', ['data' => $category]);
        } else {
            return redirect(route("403"));
        }
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
        $category->description = isset($request->description) ? $request->description : '';
        $category->display = $request->display;
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
        if ($category != null) {
            $category->delete();
            return redirect(route("category.index"));
        } else {
            return redirect(route("403"));
        }
    }
}
