<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Classes;
use App\Models\Period;

class PeriodController extends Controller
{
    public function create(Classes $class)
    {
        $periods = [];
        if ($class->periods->count()) {
            foreach ($class->periods as $period) {
                $periods[] = (object) [
                    'date' => $period->date,
                    'timeOut' => $period->time_out,
                    'timeIn' => $period->time_in,
                ];
            }
        }
        return view('admin.class.periods.create-update', [
            'class' => $class,
            'periods' => $periods,
        ]);
    }

    public function store(Request $request, Classes $class)
    {
        if ($class->periods->count() > 0) {
            Period::where('class_id', $class->id)->forceDelete();
        }
        $arr = [];
        for ($i = 1; $i <= $class->sessions; $i++) {
            $arr[] = [
                'class_id' => $class->id,
                'date' => $request->date[$i],
                'number' => $i,
                'time_in' => $request->timeIn[$i],
                'time_out' => $request->timeOut[$i],
                'created_at' => now(),
                'updated_at' => now(),
            ];
        }
        Period::insert($arr);
        $class->update([
            'start_day' => $request->date[1],
            'end_day' => $request->date[$class->sessions],
        ]);
        return redirect()->route('classes.periods.create', $class->id);
    }
}
