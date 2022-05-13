<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Kourse | Admin</title>
    <meta name="description" content="Course | Admin">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- <script src="{{ asset('js/app.js') }}"></script> -->
    <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
    <link rel="stylesheet" href="{{ asset('font-awesome-4.7.0/css/font-awesome.min.css') }}">
</head>

<body>
    <div class="container-fluid bg-light">
        <div class="row">
            <div class="col-3 ps-0 h-100">
                @include('admin-layout.sidebar')
            </div>
            <div class="col-9">
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
                </div>
            </div>
        </div>
    </div>
<!-- <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script> -->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
