@component('mail::message')
# Trung tâm XT
<h1>Thông báo mở lớp</h1>

Lớp học bạn quan tâm đã mở rồi nè.

@component('mail::button', [
    'url' => 'http://localhost:8080/#/product/' . $theClass->product_id,
    'color' => 'success',
])
Nhấn để xem
@endcomponent

@endcomponent
