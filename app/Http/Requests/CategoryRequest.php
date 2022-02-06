<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoryRequest extends FormRequest
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
            'name' => 'bail| required| alpha| between: 1, 10',
            'description' => 'bail| between: 1, 100',
            'display' => 'bail| required| numeric| between: 0,1'
        ];
    }

    /**
     * Get the error messages for the defined validation rules.
     *
     * @return array
     */
    public function messages()
    {
        return [
            'name.required' => 'Tên không được bỏ trống',
            'name.between' => 'Tên phải có độ dài từ 1 đến 10 chữ cái',
            'name.alpha' => 'Tên chỉ được chứa chữ cái',
            'description.between' => 'Mô tả không được quá 100 kí tự',
            'display.required' => 'Giới tính không được bỏ trống',
            'display.numeric' => 'Giới tính không được là chữ',
            'display.between' => 'Chỉ được chọn các giá trị cho sẵn',
        ];
    }
}
