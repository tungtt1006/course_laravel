<?php

namespace App\Traits;

trait ProductHelper
{
    protected function calcPrice($price, $discount)
    {
        $result = ((int) $price) * ((100 - (int) $discount) / 100);
        return floor($result);
    }
}
