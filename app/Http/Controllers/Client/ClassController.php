<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Client\ClientController;
use App\Mail\OrderDeleted;
use App\Models\Classes;
use Illuminate\Support\Facades\Mail;

class ClassController extends ClientController
{
    public function getLearningClass()
    {
        $class = $this->auth()->user()->classes()
            ->wherePivot('status', 1)
            ->learningClass()
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
        if ($class->end_day <= now()) {
            return $this->responseError('Không thể  xóa lớp đã kết thúc');
        }
        $order = $this->auth()->user()
            ->orders()
            ->where('class_id', $class->id)
            ->firstOrFail();
        $order->delete();
        Mail::to($this->auth()->user()->email)->send(new OrderDeleted($order));
        return $this->responseSuccess([
            'message' => 'Cancel successfully',
        ]);
    }
}
