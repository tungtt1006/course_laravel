<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Client\ClientController;

class ClassController extends ClientController
{
    public function getLearningClass()
    {
        $class = $this->auth()->user()->classes()
            ->where('start_day', '<=', now())
            ->where('end_day', '>=', now())
            ->first();
        return $this->responseSuccess($class);
    }
}
