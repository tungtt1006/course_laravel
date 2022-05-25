<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Client\ClientController;
use App\Models\Classes;

class ClassController extends ClientController
{
    public function getLearningClass()
    {
        $class = $this->auth()->user()->classes()
            ->wherePivot('status', 1)
            ->where('start_day', '<=', now())
            ->where('end_day', '>=', now())
            ->first();
        return $this->responseSuccess($class);
    }

    public function getRegisterClass()
    {
        $class = $this->auth()->user()->classes()->with('teacher')->orderBy('start_day', 'desc')->get();
        return $this->responseSuccess($class);
    }

    public function destroy(Classes $class)
    {
        if ($class->end_day < now()) {
            return $this->responseError('Không thể  xóa lớp đã kết thúc');
        }
        $order = $this->auth()->user()->orders()->where('class_id', $class->id)->firstOrFail();
        if ($order) {
            $order->delete();
            return $this->responseSuccess([
                'message' => 'Cancel successfully',
            ]);
        }
    }
}
