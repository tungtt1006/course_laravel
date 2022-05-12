<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StatisticController extends Controller
{
    public function index()
    {
        $registers = DB::table('orders')
            ->select(DB::raw('MONTH(created_at) as month, COUNT(MONTH(created_at)) as total'))
            ->whereYear('created_at', date("Y"))
            ->groupByRaw('MONTH(created_at)')
            ->get();
        $number = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        foreach ($registers as $register) {
            $number[$register->month-1] = $register->total;
        }
        $monthlyIncome = DB::table('orders')
            ->select(DB::raw('MONTH(created_at) as month, SUM(price) as income'))
            ->whereYear('created_at', date("Y"))
            ->groupByRaw('MONTH(created_at)')
            ->get();
        $annualIncome = 0;
        foreach ($monthlyIncome as $item) {
            $annualIncome += $item->income;
        }
        return view('admin.statistic.read', [
            'number' => $number,
            'annualIncome' => $annualIncome,
            'monthlyIncome' => $monthlyIncome,
        ]);
    }
}
