<?php

namespace App\Http\Controllers\client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    /**
     * Get detail prduct
     *
     */
    public function getDetailProduct($id)
    {
        $product = Product::find($id);
        return view('client.DetailProduct', ['product' => $product]);
    }
}
