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
            <p>Tên lớp: <span class="fw-bold">{{ $class->class_name }}</span></p>
            <p>Ngày học: <span class="fw-bold">{{ $class->start_day }} ~ {{ $class->end_day }}</span></p>
            <p>Giờ học: <span class="fw-bold">{{ $class->time_in }} ~ {{ $class->time_out }}</span></p>
        </div>
        <div class="col-4">
            <p>Môn: <span class="fw-bold">{{ $class->product->name }}</span></p>
            <p>Thứ học: <span class="fw-bold">{{ $class->days_of_week }}</span></p>
        </div>
        <div class="col-4">
            <p>Giáo viên: <span class="fw-bold">{{ $class->teacher->name }}</span></p>
            <p>Số buổi: <span class="fw-bold">{{ $class->sessions }}</span></p>
        </div>
    </div>

    <div class="row mt-4">
        <div  class="col-6">
            <h3 class="m-0 fw-normal">Danh sách học viên</h3>
        </div>
        <div class="col-6">{{ $users->links() }}</div>
    </div>
    <table class="table table-bordered mt-3">
        <thead class="table-light">
            <tr>
                <th class="text-center">Id</th>
                <th class="text-center">Tên</th>
                <th class="text-center">Email</th>
                <th class="text-center">Số điện thoại</th>
            </tr>
        </thead>
        <tbody>
            @foreach($users as $user)
            <tr>
                <td class="text-center">{{ $user->id }}</td>
                <td class="text-center">{{ $user->name }}</td>
                <td class="text-center">{{ $user->email }}</td>
                <td class="text-center">{{ $user->phone }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
