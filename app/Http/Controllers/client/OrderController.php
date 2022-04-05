<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Events\OrderRegisterd;
use App\Models\Classes;

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
        if (auth('api')->user()->orders()->where('class_id', $request->class_id)->first()) {
            return response()->json(['message' => 'Bạn đã đăng kí lớp này'], 400);
        }
        $order = auth('api')->user()->orders()->create([
            'class_id' => $request->class_id,
            'price' => $request->price,
            'admin_id' => 1,
        ]);
        event(new OrderRegisterd($order));
        return response()->json(['message' => 'Success']);
    }
}
