<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Client\ClientController;
use Illuminate\Http\Request;
use App\Models\Classes;

class ClassPeriodController extends ClientController
{
    public function index(Request $request, Classes $class)
    {
        $periods = $class->periods()->where('class_id', $class->id)
            ->where('date', '>=', $request->from)
            ->where('date', '<=', $request->to)
            ->orderBy('number')
            ->get();
        $arr = [];
        foreach ($periods as $period) {
            $arr[$period->date] = $period;
        }
        return $this->responseSuccess($arr);
    }
}
