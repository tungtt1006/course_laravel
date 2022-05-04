@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Quản lý hóa đơn</h3>
    </div>
</div>
@endsection

@section("main")
<div class="row px-3 mt-4">
    @if (isset($data))
        <form method="post" action="{{ route('orders.update', $data->id) }}" enctype="multipart/form-data">
            @method('PUT')
    @else
        <form method="post" action="{{ route('orders.store') }}" enctype="multipart/form-data">
    @endif
        @csrf
        @php
            /**
             * User
             */
            if (isset($data))
                $userId = $data->user_id;
            elseif (old('userId') != '')
                $userId = old('product');
            else
                $userId = '';

            /**
             * Class
             */
            if (isset($data))
                $classId = $data->class_id;
            elseif (old('classId') != '')
                $classId = old('class');
            else
                $classId = '';

            /**
             * Price
             */
            if (isset($data))
                $price = $data->price;
            elseif (old('sessions') != '')
                $price = old('price');
            else
                $price = '';
        @endphp
        <!-- Users -->
        <div class="row">
            <div class="col-2">
                <label class="form-label fw-bolder">Mã người tạo (Id)</label>
            </div>
            <div class="col-5">
                <input type="text" name="userId" class="form-control" required value="{{ $userId }}">
            </div>
            <div class="col-5">
                <a href="{{ route('users.index') }}" target="_blank" class="text-dark fw-bolder">( Xem danh sách người dùng )</a>
            </div>
        </div>

        <!-- Classes -->
        <div class="row mt-4">
            <div class="col-2">
                <label class="form-label fw-bolder">Lớp</label>
            </div>
            <div class="col-5">
                <select class="form-select" aria-label="Default select example" name="class">
                    @foreach ($classes as $row)
                        <option value="{{ $row->id }}" {{ ($classId == $row->id) ? 'selected' : '' }}>
                            {{ $row->class_name }}
                        </option>
                    @endforeach
                </select>
            </div>
        </div>

        <!-- Price -->
        <div class="row mt-4">
            <div class="col-2">
                <label class="form-label fw-bolder">Giá (VND)</label>
            </div>
            <div class="col-5">
                <input type="text" name="price" class="form-control" required value="{{ $price }}">
            </div>
        </div>

        <!-- Buttons -->
        <div class="row mt-5 mb-2">
            <div class="col-10"></div>
            <div class="col-2 p-0">
                <a
                    type="button"
                    class="btn btn-primary mr-2"
                    href="{{ route('orders.index') }}"
                >
                    Hủy
                </a>
                <input
                    type="submit"
                    value="{{ isset($data) ? 'Cập nhật' : 'Thêm mới' }}"
                    class="btn btn-success"
                >
            </div>
    </form>
</div>
@include('admin.form-error')
@endsection
