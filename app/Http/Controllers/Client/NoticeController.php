<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Client\ClientController;
use Illuminate\Http\Request;
use App\Models\NewClassNotice;
use App\Models\Product;

class NoticeController extends ClientController
{
    public function storeNotiNewClass(Request $request)
    {
        if ($request->filled('productId')) {
            $product = Product::findOrFail($request->productId);
            NewClassNotice::create([
                'user_id' => $this->auth()->user()->id,
                'product_id' => $product->id,
                'status' => 0,
            ]);
            return $this->responseSuccess(['message' => 'Set notification successfully']);
        }
        return $this->responseError();
    }
}
