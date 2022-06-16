<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class StatisticController extends Controller
{
    public function index()
    {
        $registerNumber = $this->calcMonthlyRegister();
        $number = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        foreach ($registerNumber as $register) {
            $number[$register->month-1] = $register->total;
        }

        $monthlyIncome = $this->calcMonthlyIncome();
        $annualIncome = 0;
        foreach ($monthlyIncome as $item) {
            $annualIncome += $item->income;
        }

        $productRegisters = $this->calcProductRegister();

        return view('admin.statistic.read', [
            'number' => $number,
            'annualIncome' => $annualIncome,
            'monthlyIncome' => $monthlyIncome,
            'productRegisters' => $productRegisters,
        ]);
    }

    private function calcMonthlyRegister()
    {
        return DB::table('orders')
            ->select(DB::raw('MONTH(created_at) as month, COUNT(MONTH(created_at)) as total'))
            ->whereNull('deleted_at')
            ->whereYear('created_at', date("Y"))
            ->groupByRaw('MONTH(created_at)')
            ->get();
    }

    private function calcMonthlyIncome()
    {
        return DB::table('orders')
            ->select(DB::raw('MONTH(created_at) as month, SUM(price) as income'))
            ->whereNull('deleted_at')
            ->whereYear('created_at', date("Y"))
            ->groupByRaw('MONTH(created_at)')
            ->get();
    }

    private function calcProductRegister()
    {
        $classRegisterNum = DB::table('orders')
            ->select('class_id', DB::raw('COUNT(class_id) as total'))
            ->whereNull('deleted_at')
            ->whereYear('created_at', date("Y"))
            ->groupBy('class_id');
        $k = DB::table('classes')
            ->select('classes.product_id', 'products.name', DB::raw('SUM(class_register_num.total) as total'))
            ->joinSub($classRegisterNum, 'class_register_num', function ($join) {
                $join->on('classes.id', '=', 'class_register_num.class_id');
            })
            ->join('products', 'products.id', '=', 'classes.product_id')
            ->whereNull('classes.deleted_at')
            ->whereNull('products.deleted_at')
            ->groupByRaw('classes.product_id')
            ->get();
        $productRegisters = [];
        foreach ($k as $item) {
            $color = 'rgba('.rand(0, 255).', '.rand(0, 255).', '.rand(0, 255).', 0.73)';
            $productRegisters['color'][] = $color;
            $productRegisters['name'][] = $item->name;
            $productRegisters['total'][] = $item->total;
        }
        return $productRegisters;
    }
}
