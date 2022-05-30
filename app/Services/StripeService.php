<?php

namespace App\Services;

use Stripe\StripeClient;
use App\Traits\ProductHelper;

class StripeService
{
    use ProductHelper;

    private $stripe;

    public function __construct()
    {
        $this->stripe = new StripeClient(
            'sk_test_51KolHaFokwkgT8NS78dyKARlomMT10SbbtuvpNQ9SjKag0QV6JcBHlF2ytz4ZPAS2E7ihlKDbQVo3xl9OtK8miHz00DVOqklp6'
        );
    }

    public function createPrice($productId, $unitAmount)
    {
        return $this->stripe->prices->create([
            'product' => $productId,
            'unit_amount_decimal' => (string) $unitAmount,
            'currency' => 'vnd',
            'billing_scheme' => 'per_unit',
        ]);
    }

    public function createProduct($product)
    {
        $stripeProduct = $this->stripe->products->create([
            'name' => $product->name,
        ]);

        $unitAmount = $this->calcPrice($product->price, $product->discount);
        $productPrice = $this->createPrice($stripeProduct->id, $unitAmount);

        return [
            'stripe_product_id' => $stripeProduct->id,
            'stripe_price_id' => $productPrice->id,
        ];
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
