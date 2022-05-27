<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Client\ClientController;
use Illuminate\Http\Request;
use App\Models\Classes;
use App\Services\StripeService;

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

        $stripe = new StripeService;
        $checkoutSession = $stripe->createSession($class);

        return $checkoutSession;
    }

    public function handleWebhook(Request $request)
    {
        $class = Classes::with('product')->findOrFail($request->class_id);

        $price = $class->product->price * ((100 - $class->product->discount) / 100);

        $order = $this->auth()->user()->orders()->create([
            'class_id' => $class->id,
            'price' => $price,
            'admin_id' => 1,
            'status' => 1,
        ]);

        return $this->responseSuccess(['message' => 'Successs']);
    }
}
