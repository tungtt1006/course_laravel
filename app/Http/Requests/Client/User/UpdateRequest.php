<?php

namespace App\Http\Requests\Client\User;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|max: 50',
            'email' => [
                'required',
                'email',
                Rule::unique('users')->ignore(auth('api')->user()->id),
            ],
            'phone' => 'required|regex: /[0-9]/|size: 10',
            'gender' => 'required|numeric|between: 0,2',
            'newPassword' => 'between: 8, 11',
            'oldPassword' => 'between: 8, 11',
            'address'  => 'required|string|between:0,100',
        ];
    }
}
