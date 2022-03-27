<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;

class OrderController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Order::create([
            'class_id' => $request->class_id,
            'user_id' => $request->user_id,
            'price' => $request->price,
            'admin_id' => 1,
        ]);
        return ['message' => 'Success'];
    }
}
