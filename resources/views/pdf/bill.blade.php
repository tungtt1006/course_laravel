<!doctype html>
<html lang="vi">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>
        body {
            font-family: DejaVu Sans;
        }
        .main, .main th, .main td {
            border: 1px solid black;
            border-collapse: collapse;
            text-align: center;
        }
        .main th, .main td {
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="left">
            <h3 style="margin-bottom: 0px;">Trung Tâm Đào Tạo XT</h3>
            <p style="text-align: right;margin: 0px;">Hà Nội, Ngày 21 Tháng 04 Năm 2022</p>
            <address>
                Địa chỉ:<br>
                Đại học Giao thông vận tải<br>
                Số 3, Cầu Giấy, Đống Đa, Hà Nội<br>
                Việt Nam
            </address>

            <h3 style="margin-bottom: 0px;">Học viên:</h3>
            <address>
                {{ $order->user->name }}<br>
                {{ $order->user->email }}<br>
                {{ $order->user->phone }}<br>
            </address>
        </div>
    </div>

    <h4 style="text-align: center;">Hóa đơn đăng ký học</h4>
    <div>
        <table style="margin:auto;" class="main">
            <tr>
                <th>Lớp</th>
                <th>Ngày đăng kí</th>
                <th>Giảm giá (VND)</th>
                <th>Giá (VND)</th>
                <th>Thành tiền (VND)</th>
            </tr>
            <tr>
                <td>{{ $order->class->class_name }}</td>
                <td>{{ $order->created_at }}</td>
                <td>0</td>
                <td>{{ number_format($order->price) }}</td>
                <td>{{ number_format($order->price) }}</td>
            </tr>
            <tr>
                <td colspan="4"><h4>Tổng hóa đơn:</h4></th>
                <td>{{ number_format($order->price) }}</td>
            </tr>
        </table>
    </div>

    <div style="margin-top: 30px;">
        <table style="margin:auto; width: 100%">
            <tr>
                <th>Học viên</th>
                <th style="text-align: center;">Người lập đơn</th>
            </tr>
            <tr>
                <td></td>
                <td style="text-align: center;">Tùng</td>
            </tr>
            <tr>
                <td></td>
                <td style="text-align: center;">Phạm Xuân Tùng</td>
            </tr>
        </table>
    </div>
    <h3 style="text-align: center;margin-top: 40px;">Chúc bạn có một quá trình học tập bổ ích!</h3>
</body>
</html>
