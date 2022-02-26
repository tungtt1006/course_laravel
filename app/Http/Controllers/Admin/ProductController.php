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
    public function index($categoryId)
    {
        $category = Category::find($categoryId);
        if ($category == null) {
            return redirect()->route('403');
        }
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
    public function create()
    {
        $certificates = Certificate::all();
        return view('admin.product.product-create-update', [
            'certificates' => $certificates,
        ]);
    }
}
