@component('mail::message')
# Trung tâm XT
<h1>Thông báo hủy đơn</h1>

@component('mail::panel')
Xác nhận hủy đăng kí lớp {{ $theClass->class_name }} của hóa đơn {{ $order->id }} thành công. Vui lòng giữ email để được hoàn tiền.
@endcomponent

@endcomponent
