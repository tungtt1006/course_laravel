@extends('backend.auth.Layout')

@section('titleCategory', 'Đăng ký')

@section('main')
<div class="register-form">
    @php
        /**
        * Name
        */
        if (old('name') != '')
            $name = old('name');
        else
            $name = '';

        /**
        * Email
        */
        if (old('email') != '')
            $email = old('email');
        else
            $email = '';

        /**
        * Phone
        */
        if (old('phone') != '')
            $phone = old('phone');
        else
            $phone = '';

        /**
        * Address
        */
        if (old('address') != '')
            $address = old('address');
        else
            $address = '';

        /**
        * Gender
        */
        if (old('gender') != '')
            $gender = old('gender');
        else
            $gender = 1;
    @endphp
    <form method="post" action="{{ route('auth.authRegister') }}">
        @csrf
        <!-- Name -->
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <input
                    type="text"
                    name="name"
                    class="form-control form-control-lg"
                    placeholder="Tên"
                    required
                    value="{{ $name }}"
                    autofocus
                >
            </div>
        </div>

        <!-- Email -->
        <div class="row mt-3">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <input
                    type="email"
                    name="email"
                    class="form-control form-control-lg"
                    placeholder="Email"
                    required
                    value="{{ $email }}"
                >
            </div>
        </div>

        <!-- Password -->
        <div class="row mt-3">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <input
                    type="password"
                    name="password"
                    class="form-control form-control-lg"
                    placeholder="Mật khẩu"
                    required
                >
            </div>
        </div>

        <!-- Password_confirmation -->
        <div class="row mt-3">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <input
                    type="password"
                    name="password_confirmation"
                    class="form-control form-control-lg"
                    placeholder="Xác nhận mật khẩu"
                    required
                >
            </div>
        </div>

        <!-- Phone & Gender -->
        <div class="row mt-3">
            <div class="col-md-1"></div>
            <div class="col-md-5">
                <input
                    type="text"
                    name="phone"
                    class="form-control form-control-lg"
                    placeholder="Số điện thoại"
                    required
                    value="{{ $phone }}"
                >
            </div>
            <div class="col-md-4">
                <div class="form-check">
                    <input
                        type="radio"
                        name="gender"
                        value="1"
                        {{ ($gender == 1) ? 'checked' : '' }}
                    >
                    <label class="form-check-label mr-3">Nam</label>
                    <input
                        type="radio"
                        name="gender"
                        value="0"
                        {{ ($gender == 0) ? 'checked' : '' }}
                    >
                    <label class="form-check-label mr-3">Nữ</label>
                    <input
                        type="radio"
                        name="gender"
                        value="2"
                        {{ ($gender == 2) ? 'checked' : '' }}
                    >
                    <label class="form-check-label">Khác</label>
                </div>
            </div>
        </div>

        <!-- Address -->
        <div class="row mt-3">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <input
                    type="text"
                    name="address"
                    class="form-control form-control-lg"
                    placeholder="Địa chỉ"
                    value="{{ $address }}"
                >
            </div>
        </div>

        <div class="row my-5">
            <div class="col text-center">
                <input type="submit" value="Đăng ký" class="btn btn-register">
            </div>
        </div>
  </form>
<div>
@include('backend.form-error')
@endsection