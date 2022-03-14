@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Lớp học</h3>
    </div>
</div>
@endsection

@section("main")
<div class="container">
    <div class="row px-3 pt-4">
        <div class="col-4">
            <p>Tên lớp: <span class="fw-bold">{{ $class->name }}</span></p>
            <p>Ngày bắt đầu: <span class="fw-bold">{{ $class->start_day }}</span></p>
        </div>
        <div class="col-4">
            <p>Môn: <span class="fw-bold">{{ $product->name }}</span></p>
            <p>Thứ học: <span class="fw-bold">{{ $class->days_of_week }}</span></p>
        </div>
        <div class="col-4">
            <p>Giáo viên: <span class="fw-bold">{{ $teacher->name }}</span></p>
            <p>Số buổi: <span class="fw-bold">{{ $class->sessions }}</span></p>
        </div>
    </div>

    <div class="row mt-3">
        <div  class="col-6">
            <h3 class="m-0 fw-normal">Danh sách người học</h3>
        </div>
        <div class="col-6 d-flex justify-content-end">{{ $users->links() }}</div>
    </div>
    <table class="table table-bordered mt-3">
        <thead class="table-light">
            <tr>
                <th class="text-center">Id</th>
                <th class="text-center">Tên</th>
                <th class="text-center">Email</th>
                <th class="text-center">Chi tiết</th>
            </tr>
        </thead>
        <tbody>
            @foreach($users as $user)
            <tr>
                <td class="text-center">{{ $user->id }}</td>
                <td class="text-center">{{ $user->name }}</td>
                <td class="text-center">{{ $user->email }}</td>
                <td class="text-center">
                    <a class="btn btn-info btn-sm" href="{{ route('categories.products.index', $user->id) }}">
                        <i class="fa fa-bars text-light" aria-hidden="true"></i>
                    </a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    <hr class="my-5">
    <div class="row">
        <div  class="col-6">
            <h3 class="m-0 fw-normal">Danh sách buổi</h3>
        </div>
        <div class="col-6 d-flex justify-content-end">{{ $users->links() }}</div>
    </div>
    <table class="table table-bordered mt-3">
        <thead class="table-light">
            <tr>
                <th class="text-center">Id</th>
                <th class="text-center">Tên</th>
                <th class="text-center">Email</th>
                <th class="text-center">Chi tiết</th>
            </tr>
        </thead>
        <tbody>
            @foreach($users as $user)
            <tr>
                <td class="text-center">{{ $user->id }}</td>
                <td class="text-center">{{ $user->name }}</td>
                <td class="text-center">{{ $user->email }}</td>
                <td class="text-center">
                    <a class="btn btn-info btn-sm" href="{{ route('categories.products.index', $user->id) }}">
                        <i class="fa fa-bars text-light" aria-hidden="true"></i>
                    </a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection