<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
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
            'name' => 'bail| required| alpha| min:1| max:10',
            'email' => 'bail| required| email',
            'password' => 'bail| required| confirmed| min:8| max:11',
            'phone' => 'bail| required| numeric| size:10',
            'role' => 'bail| required| numeric'
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
            'name.min' => 'Tên phải có độ dài từ 1 đến 10 chữ cái',
            'name.max' => 'Tên phải có độ dài từ 1 đến 10 chữ cái',
            'name.alpha' => 'Tên chỉ được chứa chữ cái',
            'email.required' => 'Email không được bỏ trống',
            'email.required' => 'Bạn chưa nhập đúng định dạng email',
            'password.required' => 'Mật khẩu không được bỏ trống',
            'password.min' => 'Mật khẩu phải có độ dài từ 1 đến 10 kí tự',
            'password.max' => 'Mật khẩu phải có độ dài từ 1 đến 10 kí tự',
            'password.confirmed' => 'Mật khẩu nhập lại không khớp',
            'phone.required' => 'Số điện thoại không được bỏ trống',
            'phone.numeric' => 'Số điện thoại không được là chữ',
            'phone.size' => 'Số điện thoại không được quá 10 chữ số',
        ];
    }
}
