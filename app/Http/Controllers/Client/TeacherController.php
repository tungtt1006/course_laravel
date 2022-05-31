<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Client\ClientController;
use App\Models\Teacher;

class TeacherController extends ClientController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $teacher = Teacher::with('product')->paginate(9);
        return $this->responseSuccess($teacher);
    }
}
