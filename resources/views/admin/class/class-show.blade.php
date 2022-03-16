@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Chi tiết lớp học</h3>
    </div>
</div>
@endsection

@section("main")
<div class="container">
    <div class="row px-3 pt-4">
        <div class="col-4">
            <p>Tên lớp: <span class="fw-bold">{{ $class->getName() }}</span></p>
            <p>Ngày bắt đầu: <span class="fw-bold">{{ $class->start_day }}</span></p>
            <p>Giờ vào: <span class="fw-bold">18:00</span></p>
        </div>
        <div class="col-4">
            <p>Môn: <span class="fw-bold">{{ $product->name }}</span></p>
            <p>Thứ học: <span class="fw-bold">{{ $class->days_of_week }}</span></p>
            <p>Giờ ra: <span class="fw-bold">21:00</span></p>
        </div>
        <div class="col-4">
            <p>Giáo viên: <span class="fw-bold">{{ $teacher->name }}</span></p>
            <p>Số buổi: <span class="fw-bold">{{ $class->sessions }}</span></p>
        </div>
    </div>

    <div class="row">
        <h3 class="m-0 fw-normal">Danh sách người học</h3>
        <a href="{{ route('classes.users.index', $class->id) }}" class="ms-3 text-black fw-bold mt-2">Xem chi tiết danh sách tại đây</a>
    </div>

    <div class="row mt-4">
        <div  class="col-6">
            <h3 class="m-0 fw-normal">Danh sách buổi</h3>
        </div>
        <div class="col-6 d-flex justify-content-end">{{ $periods->links() }}</div>
    </div>
    <table class="table table-bordered mt-3">
        <thead class="table-light">
            <tr>
                <th class="text-center">Id</th>
                <th class="text-center">Thứ tự buổi</th>
                <th class="text-center">Thời gian vào học</th>
                <th class="text-center">Thời gian kết thúc</th>
            </tr>
        </thead>
        <tbody>
            @foreach($periods as $period)
            <tr>
                <td class="text-center">{{ $period->id }}</td>
                <td class="text-center">{{ $period->number }}</td>
                <td class="text-center">{{ $period->time_in }}</td>
                <td class="text-center">{{ $period->time_out }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection