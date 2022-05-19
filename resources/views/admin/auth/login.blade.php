@extends('admin.auth.layout')

@section('main')
<div class="row">
    <div class="col-3"></div>
    <div class="col-6 border p-5 rounded shadow">
        <h1 class="text-center text-success mb-0">Đăng nhập</h1>
        @php
            $email = (old('email') != null) ? old('email') : '';
        @endphp
        <form class="mt-5" method="post" action="{{ route('auth.authenticate') }}">
            @csrf
            <!-- Email -->
            <div class="row">
                <div class="col">
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
                <div class="col">
                    <input type="password" name="password" class="form-control form-control-lg"  placeholder="Mật khẩu" required>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-6">
                    <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                        <label class="form-check-label" for="remember">Nhớ mật khẩu?</label>
                    </div>
                </div>
                <div class="col-6 text-end">
                    <a class="forgot-pass text-decoration-none text-black" href="">Quên mật khẩu?</a>
                </div>
            </div>

            @if ($errors->any())
                <div class="row mt-3">
                    <div class="alert alert-danger col">
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
                    <input type="submit" value="Đăng nhập" class="btn btn-success">
                </div>
            </div>
        </form>
    </div>
</div>
@endsection
