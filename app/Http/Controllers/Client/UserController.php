<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Client\ClientController;
use App\Http\Requests\Client\User\UpdateRequest;
use Illuminate\Support\Facades\Hash;

class UserController extends ClientController
{
    public function show()
    {
        $user = $this->auth()->user();
        $orders = $user->orders()->withTrashed()->get();
        $user->orderNumber = $orders->count();
        foreach ($orders as $order) {
            $user->totalMoney += $order->price;
        }
        return $this->responseSuccess($user);
    }

    public function update(UpdateRequest $request)
    {
        $user = [
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'gender' => $request->gender,
            'address' => $request->address,
        ];

        if ($request->filled('oldPassword')
            && $request->filled('newPassword')
            && Hash::check($request->oldPassword, $this->auth()->user()->password)
        ) {
            $user['password'] = Hash::make($request->newPassword);
        }

        $rowNum = $this->auth()->user()->update($user);
        if ($rowNum) {
            return $this->responseSuccess(['message' => 'Update successfully']);
        }
        return $this->responseError();
    }
}
