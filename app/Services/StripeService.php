<?php

namespace App\Services;

use Stripe\StripeClient;

class StripeService
{
    private $stripe;

    public function __construct()
    {
        $this->stripe = new StripeClient(
            'sk_test_51KolHaFokwkgT8NS78dyKARlomMT10SbbtuvpNQ9SjKag0QV6JcBHlF2ytz4ZPAS2E7ihlKDbQVo3xl9OtK8miHz00DVOqklp6'
        );
    }

    private function createPrice($productId, $unitAmount)
    {
        return $this->stripe->prices->create([
            'unit_amount' => $unitAmount,
            'currency' => 'vnd',
            'product' => $productId,
        ]);
    }

    public function createProduct()
    {
        $this->createPrice();
        return $this->stripe->prices->create([
            'unit_amount' => $unitAmount,
            'currency' => 'vnd',
            'product' => $productId,
        ]);
    }

    public function createSession($class)
    {
        return $this->stripe->checkout->sessions->create([
            'success_url' => env('FE_WEB_HOST_NAME') . '/#/product/' . $class->product->id . '?status=success&class=' . $class->id,
            'cancel_url' => env('FE_WEB_HOST_NAME') . '/#/product/' . $class->product->id . '?status=fail',
            'line_items' => [
                [
                    'price' => $class->product->stripe_price_id,
                    'quantity' => 1,
                ],
            ],
            'payment_intent_data' => [
                'description' => 'Đăng ký thành công',
            ],
            'mode' => 'payment',
            'customer_email' => auth('api')->user()->email,
        ]);
    }
}
