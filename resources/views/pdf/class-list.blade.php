<!DOCTYPE html>
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
        </div>
    </div>

    <h2 style="text-align: center;">Danh sách buổi học</h2>
    <p>Lớp: <b>{{ $class->class_name }}</b></p>
    <p>Giáo viên: <b>{{ $class->teacher->name }}</b></p>
    <p>Số buổi: <b>{{ $class->sessions }}</b></p>
    <div>
        <table style="margin:auto;" class="main">
            <tr class="text-center">
                <th>Thứ tự buổi</th>
                <th>Ngày học</th>
                <th>Thời gian</th>
            </tr>
            @foreach ($class->periods as $period)
                <tr class="text-center">
                    <td>{{ $period->number }}</td>
                    <td>{{ $period->date }}</td>
                    <td>{{ $period->time_in . ' ~ ' . $period->time_out }}</td>
                </tr>
            @endforeach
        </table>
    </div>
</body>
</html>
