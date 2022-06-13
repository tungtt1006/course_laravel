@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>{{ isset($data) ? $data->name : 'Thêm mới danh mục'  }}</h3>
    </div>
</div>
@endsection

@section("main")
@if (isset($data))
    <form
        method="post"
        action="{{ route('category.update', ['category' => $data->id]) }}"
        enctype="multipart/form-data"
        class="row m-3"
    >
        @method('PUT')
@else
    <form
        method="post"
        action="{{ route('category.store') }}"
        enctype="multipart/form-data"
        class="row m-3"
    >
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
    <div class="col-4">
        <img
            id="output"
            src="{{ isset($data->photo) ? asset($data->photo) : '#' }}"
            class="img-fluid shadow-sm border border-success w-100"
            style="height: 250px"
            alt="..."
        >
        <div class="mt-4 px-3">
            <input class="form-control" type="file" name="photo" onchange="loadFile(event)">
        </div>
    </div>
    <div class="col-8 ">
        <!-- Name -->
        <div class="row mt-3">
            <div class="col-2">Tên</div>
            <div class="col-9">
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
            <div class="col-2">Mô tả</div>
            <div class="col-9">
                <textarea class="form-control" name ="description" rows="4">{{ $description }}</textarea>
            </div>
        </div>


        <!-- Display -->
        <div class="row mt-3">
            <div class="col-2 p-0">Trạng thái</div>
            <div class="col-9">
                <div class="form-check p-0">
                    <input
                        type="radio"
                        name="display"
                        value="1"
                        {{ ($display == 1) ? 'checked' : '' }}
                    >
                    <label class="form-check-label me-3">Hiển thị</label>
                    <input
                        type="radio"
                        name="display"
                        value="0"
                        {{ ($display == 0) ? 'checked' : '' }}
                    >
                    <label class="form-check-label">Ẩn</label>
                </div>
            </div>
        </div>

        <!-- Buttons -->
        <div class="row mt-5">
            <div class="col-8"></div>
            <div class="col-4 p-0">
                <a
                    type="button"
                    class="btn btn-primary"
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
        </div>
    </div>
</form>
@include('admin.form-error')

<script>
    var loadFile = function(event) {
        var output = document.getElementById('output');
        output.src = URL.createObjectURL(event.target.files[0]);
        output.onload = function() {
        URL.revokeObjectURL(output.src) // free memory
        }
    }
</script>
@endsection
