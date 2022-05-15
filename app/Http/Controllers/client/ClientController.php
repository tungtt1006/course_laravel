<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;

class ClientController extends Controller
{
    public function auth()
    {
        return auth('api');
    }

    public function responseError($data = [], $statusCode = 400)
    {
        return response()->json($data, $statusCode);
    }

    public function responseSuccess($data = [], $statusCode = 200)
    {
        return response()->json([
            'data' => $data,
            'message' => 'success',
        ], $statusCode);
    }

    public function response404()
    {
        return abort(Response::HTTP_NOT_FOUND);
    }
}
