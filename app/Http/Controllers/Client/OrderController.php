<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Client\ClientController;
use Illuminate\Http\Request;
use App\Models\Classes;
use Stripe\StripeClient;

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

        $order = $user->orders()->create([
            'class_id' => $class->id,
            'price' => $price,
            'admin_id' => 1,
            'status' => 0,
        ]);

        $stripe = new StripeClient(
            'sk_test_51KolHaFokwkgT8NS78dyKARlomMT10SbbtuvpNQ9SjKag0QV6JcBHlF2ytz4ZPAS2E7ihlKDbQVo3xl9OtK8miHz00DVOqklp6'
        );
        $checkoutSession = $stripe->checkout->sessions->create([
            'success_url' => env('FE_WEB_HOST_NAME') . '/#/product/' . $class->product->id . '?status=success',
            'cancel_url' => env('FE_WEB_HOST_NAME') . '/#/product/' . $class->product->id . '?status=fail',
            'line_items' => [
              [
                'price' => 'price_1L3G2yFokwkgT8NSrhYkWD0W',
                'quantity' => 1,
              ],
            ],
            'payment_intent_data' => [
                'description' => 'order_id: ' . $order->id,
            ],
            'mode' => 'payment',
            'customer_email' => $this->auth()->user()->email,
        ]);

        return $checkoutSession;
    }

    public function handleWebhook($request)
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

        return $user->orders()->create([
            'class_id' => $class->id,
            'price' => $price,
            'admin_id' => 1,
        ]);
    }
}
