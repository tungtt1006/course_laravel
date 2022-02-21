@extends("admin-layout.layout")

@section("main")
<h4 class="ps-3 mt-3">Quản lý tài khoản</h4>

<div class="row px-3 mt-4">
    @if (isset($data))
        <form method="post" action="{{ route('category.update', ['category' => $data->id]) }}" enctype="multipart/form-data">
            @method('PUT')
    @else
        <form method="post" action="{{ route('category.store') }}" enctype="multipart/form-data">
    @endif
        @csrf
        @php
            /**
                * Name
                */
            if (isset($data))
                $name = $data->name;
            elseif (old('name') != '')
                $name = old('name');
            else
                $name = '';
            /**
                * Description
                */
            if (isset($data))
                $description = $data->description;
            elseif (old('description') != '')
                $description = old('description');
            else
                $description = '';

            /**
                * Display
                */
            if (isset($data))
                $display = $data->display;
            elseif (old('display') != '')
                $display= old('display');
            else
                $display = 1;
        @endphp
        <!-- Name -->
        <div class="row" style="margin-top:5px;">
            <div class="col-md-1">Tên</div>
            <div class="col-md-10 pl-0">
                <input
                    type="text"
                    name="name"
                    class="form-control"
                    required
                    value="{{ $name }}"
                >
            </div>
        </div>

        <!-- Description -->
        <div class="row mt-3">
            <div class="col-md-1">Mô tả</div>
            <div class="col-md-10 pl-0">
                <textarea class="form-control" name ="description" rows="4">{{ $description }}</textarea>
            </div>
        </div>


        <!-- Display -->
        <div class="row mt-3">
            <div class="col-md-1">Hiển thị</div>
            <div class="col-md-3 pl-0">
                <div class="form-check p-0">
                    <input
                        type="radio"
                        name="display"
                        value="1"
                        {{ ($display == 1) ? 'checked' : '' }}
                    >
                    <label class="form-check-label mr-3">Hiển thị</label>
                    <input
                        type="radio"
                        name="display"
                        value="0"
                        {{ ($display == 0) ? 'checked' : '' }}
                    >
                    <label class="form-check-label mr-3">Ẩn</label>
                </div>
            </div>
        </div>

        <!-- Buttons -->
        <div class="row mt-5 mb-2">
            <div class="col-9"></div>
            <div class="col-2 p-0">
                <a
                    type="button"
                    class="btn btn-primary mr-2"
                    href="{{ route('category.index') }}"
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