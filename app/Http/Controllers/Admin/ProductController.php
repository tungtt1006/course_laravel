<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use App\Models\Certificate;

class ProductController extends Controller
{
    /**
     * Get category
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Category $category)
    {
        $products = $category->products;
        return view('admin.product.product-read', [
            'category' => $category,
            'data' => $products,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Category $category)
    {
        $certificates = Certificate::all();
        return view('admin.product.product-create-update', [
            'certificates' => $certificates,
            'category' => $category,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Category $category)
    {
        $product = $category->products()->create([
            'name' => $request->name,
            'certificate_id' => $request->certificateid,
            'description' => $request->description,
            'content' => $request->content,
            'display' => $request->display,
            'hot' => $request->hot,
            'sessions' => $request->sessions,
            'price' =>$request->price,
        ]);
        if ($product) {
            return redirect()->route('categories.products.index', $category->id);
        }
        return redirect()->route('403');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category, Product $product)
    {
        $certificates = Certificate::all();
        return view('admin.product.product-create-update', [
            'certificates' => $certificates,
            'category' => $category,
            'data' => $product,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category, Product $product)
    {
        $product = $product->update([
            'name' => $request->name,
            'certificate_id' => $request->certificateid,
            'description' => $request->description,
            'content' => $request->content,
            'display' => $request->display,
            'hot' => $request->hot,
            'sessions' => $request->sessions,
            'price' =>$request->price,
        ]);
        if ($product) {
            return redirect()->route('categories.products.index', $category->id);
        }
        return redirect()->route('403');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category, Product $product)
    {
        if ($product->delete()) {
            return redirect()->route('categories.products.index', $category->id);
        }
        return redirect()->route("403");
    }
}
