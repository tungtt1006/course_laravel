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
        $user = $this->auth()->user();
        $class = Classes::with('product')->findOrFail($request->class_id);

        if ($user->orders()->where('class_id', $class->id)->exists()) {
            return $this->responseError('Hiện tại bạn đã đăng kí lớp này');
        }

        if ($user->classes()->where('end_day', '>=', now())->exists()) {
            return $this->responseError('Hiện tại bạn đang trong một lớp học khác');
        }

        auth('api')->user()->orders()->create([
            'class_id' => $class->id,
            'price' => $class->product->price,
            'admin_id' => 1,
        ]);
        return response()->json(['message' => 'Success']);
    }
}
