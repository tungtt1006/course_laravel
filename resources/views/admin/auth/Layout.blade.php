<!DOCTYPE html>
<html>
<head>
    <title>Auth</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="{{ asset('backend/assets/css/login_register.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<body>
    <div class="container-fluid">
        <div class="main-auth">
            <h1 class="mt-5 text-center">
                @yield('titleCategory')
            </h1>
            @yield('main')
        </div>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>