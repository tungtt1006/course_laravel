<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Client\ClientController;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends ClientController
{
    public function getNewestProducts(Request $request)
    {
        if (!isset($request->page_size)) {
            return $this->responseError();
        }
        $newestProducts = Product::newestProducts()->simplePaginate($request->page_size);
        return $this->responseSuccess($newestProducts);
    }

    public function getHotProducts()
    {
        $hotProducts = Product::highlightProducts()->limit(4)->get();
        return $this->responseSuccess($hotProducts);
    }

    public function show($productId)
    {
        $product = Product::with('certificate')->findOrFail($productId);
        $class = $product->classes()->with('teacher')
            ->where('start_day', '>', now())
            ->whereNotNull('end_day')
            ->first();

        return $this->responseSuccess([
            'product' => $product,
            'class' => $class,
        ]);
    }
}
