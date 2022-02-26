@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Thêm sản phẩm mới</h3>
    </div>
</div>
@endsection

@section("main")
<div class="row m-3">
    <div class="col-4"></div>
    <div class="col-8">
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
        <div class="row">
            <div class="col-6">
                <label class="form-label fw-bolder">Tên</label>
                <input
                    type="text"
                    name="name"
                    class="form-control"
                    required
                    value="{{ $name }}"
                >
            </div>
            <div class="col-6">
                <label class="form-label fw-bolder">Chứng chỉ</label>
                <select class="form-select" aria-label="Default select example">
                    @foreach ($certificates as $certificate)
                        <option value="{{ $certificate->id }}">{{ $certificate->name }}</option>
                    @endforeach
                </select>
            </div>
        </div>

        <!-- Description -->
        <div class="row mt-3">
            <div class="col">
                <label class="form-label fw-bolder">Mô tả</label>
                <textarea class="form-control" name ="description" rows="3">{{ $description }}</textarea>
            </div>
        </div>

        <!-- Content -->
        <div class="row mt-3">
            <div class="col">
                <label class="form-label fw-bolder">Nội dung</label>
                <textarea class="form-control" name ="content" rows="5">{{ $description }}</textarea>
            </div>
        </div>

        <!-- Display -->
        <div class="row mt-3">
            <div class="col-5">
                <label class="form-label fw-bolder">Nội dung</label>
                <div class="form-check form-check-inline ms-2">
                    <input class="form-check-input" type="radio" name="display" value="1" {{ ($display == 1) ? 'checked' : '' }}>
                    <label class="form-check-label">Hiển thị</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="display" value="0" {{ ($display == 0) ? 'checked' : '' }}>
                    <label class="form-check-label">Ẩn</label>
                </div>
            </div>
            <div class="col-5">
                <label class="form-label fw-bolder">Nổi bật</label>
                <div class="form-check form-check-inline ms-2">
                    <input
                        class="form-check-input"
                        type="radio"
                        name="display"
                        value="1"
                        {{ ($display == 1) ? 'checked' : '' }}
                    >
                    <label class="form-check-label">Có</label>
                </div>
                <div class="form-check form-check-inline">
                    <input
                        class="form-check-input"
                        type="radio"
                        name="display"
                        value="0"
                        {{ ($display == 0) ? 'checked' : '' }}
                    >
                    <label class="form-check-label">Không</label>
                </div>
            </div>
        </div>

        <!-- Buttons -->
        <div class="row mt-5">
            <div class="col-9"></div>
            <div class="col-3">
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
</div>
@include('admin.form-error')
@endsection