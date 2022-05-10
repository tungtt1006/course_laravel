<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StatisticController extends Controller
{
    public function index()
    {
        $orders = DB::table('orders')
            ->select(DB::raw('MONTH(created_at) as month, COUNT(MONTH(created_at)) as total'))
            ->whereYear('created_at', date("Y"))
            ->groupByRaw('MONTH(created_at)')
            ->get();
        $number = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        foreach ($orders as $order) {
            $number[$order->month-1] = $order->total;
        }
        return view('admin.statistic.read', [
            'number' => $number,
        ]);
    }
}
