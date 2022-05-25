@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Quản lý hóa đơn</h3>
    </div>
    <!-- <div class="col-2">
        <a href="{{ route('orders.create') }}" type="button" class="btn btn-light btn-sm text-success mt-1">
            <i class="fa fa-plus" aria-hidden="true"></i> Thêm mới
        </a>
    </div> -->
</div>
@endsection

@section("main")
<div class="row">
    <div class="col">
        <table class="table table-hover">
            <thead class="table-light">
                <tr>
                    <th>Id</th>
                    <th class="text-center">Học viên</th>
                    <th class="text-center">Lớp</th>
                    <th class="text-center">Giá (VND)</th>
                    <th class="text-center">Ngày tạo</th>
                    <th class="text-center">Trạng thái</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach($orders as $rows)
                <tr>
                    <td>{{ $rows->id }}</td>
                    <td class="text-center">{{ $rows->user->name }}</td>
                    <td class="text-center">{{ $rows->class->class_name }}</td>
                    <td class="text-center">{{ number_format($rows->price) }}</td>
                    <td class="text-center">{{ $rows->created_at }}</td>
                    <td class="text-center">
                        @if ($rows->status)
                            <span class="badge bg-success">Đã thanh toán</span>
                        @else
                            <span class="badge bg-danger">Chưa thanh toán</span>
                        @endif
                    </td>
                    <td class="text-center d-flex justify-content-center">
                        <a class="btn btn-warning btn-sm" href="{{ route('orders.export_pdf', $rows->id) }}" target="_blank">
                            <i class="fa fa-print" aria-hidden="true"></i>
                        </a>
                        <a class="btn btn-success btn-sm mx-2" href="{{ route('orders.edit', $rows->id) }}">
                            <i class="fa fa-pencil" aria-hidden="true"></i>
                        </a>
                        <form
                            action="{{ route('orders.destroy', $rows->id) }}"
                            method="POST"
                            onsubmit="return confirm('Are you sure you want to delete?');"
                        >
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm">
                                <i class="fa fa-trash-o" aria-hidden="true"></i>
                            </button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
<div class="row">
    {{ $orders->links() }}
</div>
@endsection
