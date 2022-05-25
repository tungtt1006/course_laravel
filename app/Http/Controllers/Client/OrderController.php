<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Client\ClientController;
use Illuminate\Http\Request;
use App\Models\Classes;

class OrderController extends ClientController
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $class = Classes::with('product')->findOrFail($request->class_id);
        $user = $this->auth()->user();
        if ($user->orders()->where('class_id', $class->id)->exists()) {
            return $this->responseError('Hiện tại bạn đã đăng kí lớp này');
        }

        if ($user->classes()->where('end_day', '>=', now())->exists()) {
            return $this->responseError('Hiện tại bạn đang trong một lớp học khác');
        }

        $price = $class->product->price * ((100 - $class->product->discount) / 100);

        $user->orders()->create([
            'class_id' => $class->id,
            'price' => $price,
            'admin_id' => 1,
        ]);
        return response()->json(['message' => 'Success']);
    }
}
