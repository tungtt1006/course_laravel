<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserUpdateRequest extends FormRequest
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
            'name' => 'bail| required| max: 50',
            'email' => 'bail| required| email',
            'phone' => 'bail| required| regex: /[0-9]/| size: 10',
            'role' => 'bail| required| numeric',
            'gender' => 'bail| required| numeric| between: 0,2'
        ];
    }
}
