<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Classes;

class ClassController extends Controller
{
    public function getLearningClass()
    {
        $class = Classes::where('start_day', '<=', now())
            ->where('end_day', '>=', now())
            ->first();
        return $class->orders()->with('class')->where('user_id', auth('api')->user()->id)->first();
    }
}
