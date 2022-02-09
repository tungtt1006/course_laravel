@extends('backend.auth.Layout')

@section('titleCategory', 'Đăng nhập')

@section('main')
<div class="login-form">
    @php
        $email = (old('email') != null) ? old('email') : '';
    @endphp
    <form method="post" action="{{ route('auth.authLogin') }}">
        @csrf
        <!-- Email -->
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <input
                    type="email"
                    name="email"
                    class="form-control form-control-lg"
                    placeholder="Email"
                    required autocomplete="email"
                    autofocus
                    value="{{ $email }}"
                >
            </div>
        </div>

        <!-- Password -->
        <div class="row mt-3">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <input type="password" name="password" class="form-control form-control-lg"  placeholder="Mật khẩu" required autocomplete="current-password">
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-1"></div>
            <div class="col-md-5">
                <div class="form-check">
                <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                    <label class="form-check-label" for="remember">
                        Nhớ mật khẩu
                    </label>
                </div>
            </div>
            <div class="col-md-5 text-end">
                <a class="forgot-pass" href="">Quên mật khẩu?</a>
            </div>
        </div>

        @if ($errors->any())
            <div class="row mt-3">
                <div class="col-md-1"></div>
                <div class="alert alert-danger col-md-10">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            </div>
        @endif

        <div class="row my-5">
            <div class="col text-center">
                <input type="submit" value="Đăng nhập" class="btn btn-login">
            </div>
        </div>
    </form>
<div>
@endsection