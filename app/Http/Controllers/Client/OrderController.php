<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Client\ClientController;
use Illuminate\Http\Request;

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
        if ($user->orders()->where('class_id', $request->class_id)->exists()) {
            return $this->responseError('Hiện tại bạn đã đăng kí lớp này');
        }

        if ($user->classes()->where('end_day', '>=', now())->exists()) {
            return $this->responseError('Hiện tại bạn đang trong một lớp học khác');
        }

        $order = auth('api')->user()->orders()->create([
            'class_id' => $request->class_id,
            'price' => $request->price,
            'admin_id' => 1,
        ]);
        return response()->json(['message' => 'Success']);
    }
}
