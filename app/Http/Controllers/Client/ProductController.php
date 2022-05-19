<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Client\ClientController;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends ClientController
{
    public function index(Request $request)
    {
        $products = [];
        if ($request->query('type') === 'hightlight') {
            $products = Product::highlightProducts()->paginate(4);
        } elseif ($request->query('type') === 'newest') {
            $products = Product::newestProducts()->paginate(4);
        } else {
            $products = Product::orderBy('id', 'desc')->paginate(9);
        }
        return $products;
    }

    public function show(Product $product)
    {
        $class = $product->classes()->with('teacher')
            ->where('start_day', '>', now())
            ->whereNotNull('end_day')
            ->first();
        $product = $product::with('certificate')->find($product->id);

        return $this->responseSuccess([
            'product' => $product,
            'class' => $class,
        ]);
    }
}
