<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    /**
     * Get prducts
     */
    public function index(Request $request)
    {
        $products = [];
        if ($request->query('type') === 'hightlight') {
            $products = Product::highlightProducts()->paginate(4);
        } elseif ($request->query('type') === 'newest') {
            $products = Product::newestProducts()->paginate(4);
        } else {
            $products = Product::orderBy('id', 'desc')->paginate(4);
        }
        return $products;
    }
}
