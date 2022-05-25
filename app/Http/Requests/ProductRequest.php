<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
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
            'name' => 'required|max:50',
            'certificateid' => 'required|numeric',
            'description' => 'required',
            'content' => 'required|json',
            'display' => 'required|boolean',
            'hot' => 'required|boolean',
            'price' => 'required|numeric',
            'discount' => 'required|numeric|between:0,100',
        ];
    }
}
