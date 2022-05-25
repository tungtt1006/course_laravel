<!doctype html>
<html class="no-js bg-light" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Kourse | Admin</title>
    <meta name="description" content="Course | Admin">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
    <link rel="stylesheet" href="{{ asset('font-awesome-4.7.0/css/font-awesome.min.css') }}">
    <script src="{{ asset('js/app.js') }}"></script>
    @yield('pre-script')
</head>

<body>
    <div class="container-fluid bg-light">
        <div class="row">
            <div class="col-3 ps-0 h-100">
                @include('admin-layout.sidebar')
            </div>
            <div class="col-9 pb-4">
                <div class="container-fluid p-0">
                    <div class="container shadow-sm p-0 mt-3">
                        <div class="card">
                            <div class="card-header text-white bg-success">
                                @yield('header')
                            </div>
                            <div class="card-body p-0">
                                @yield('main')
                            </div>
                        </div>
                    </div>
                    @yield('content-1')
                    @yield('content-2')
                </div>
            </div>
        </div>
    </div>
</body>
</html>
