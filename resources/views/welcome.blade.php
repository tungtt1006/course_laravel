<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <title>Laravel</title>
        <meta name="csrf-token" content="{{ csrf_token() }}">
    </head>
    <body>
        <div id="app">
            <App></App>
        </div>
        <script src="/js/app.js"></script>
    </body>
</html>
