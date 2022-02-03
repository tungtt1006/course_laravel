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
            'name' => 'bail| required| alpha| between: 1, 10',
            'email' => 'bail| required| email',
            'password' => 'bail| required| confirmed| between: 8, 11',
            'phone' => 'bail| required| regex: /[0-9]/| size: 10',
            'role' => 'bail| required| numeric',
            'gender' => 'bail| required| numeric| between: 0,2'
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
            'email.required' => 'Email không được bỏ trống',
            'email.required' => 'Bạn chưa nhập đúng định dạng email',
            'password.required' => 'Mật khẩu không được bỏ trống',
            'password.between' => 'Mật khẩu phải có độ dài từ 8 đến 10 kí tự',
            'password.confirmed' => 'Mật khẩu nhập lại không khớp',
            'phone.required' => 'Số điện thoại không được bỏ trống',
            'phone.regex' => 'Số điện thoại chưa đúng định dạng',
            'phone.size' => 'Số điện thoại phải đủ 10 chữ số',
            'gender.required' => 'Giới tính không được bỏ trống',
            'gender.numeric' => 'Giới tính không được là chữ',
            'gender.between' => 'Chỉ được chọn các giá trị cho sẵn',
        ];
    }
}
