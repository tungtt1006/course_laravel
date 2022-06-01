@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>{{ isset($banner) ? $banner->name : 'Thêm mới quảng cáo' }}</h3>
    </div>
</div>
@endsection

@section("main")
@if (isset($banner))
    <form method="post" action="{{ route('banners.update', $banner->id) }}" class="row m-3" enctype="multipart/form-data">
        @method('PUT')
@else
    <form method="post" action="{{ route('banners.store') }}" enctype="multipart/form-data" class="row m-3">
@endif
    @csrf
    <div class="col-4">
        <img
            id="output"
            src="{{ isset($banner->photo) ? asset($banner->photo) : '#' }}"
            class="img-fluid shadow-sm border border-success w-100"
            style="height: 250px"
            alt="..."
        >
        <div class="mt-4 px-3">
            <input class="form-control" type="file" name="photo" onchange="loadFile(event)">
        </div>
    </div>
    <div class="col-8">
        @php
            /**
             * Name
             */
            if (isset($banner) && $banner->name)
                $name = $banner->name;
            elseif (old('name') != '')
                $name = old('name');
            else
                $name = '';

            /**
             * Display
             */
            if (isset($banner))
                $display = $banner->display;
            elseif (old('display') != '')
                $display= old('display');
            else
                $display = 1;
        @endphp
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
        </div>

        <div class="row mt-4">
            <div class="col-5">
                <label class="form-label fw-bolder">Hiển thị</label>
                <div class="form-check form-check-inline ms-2">
                    <input class="form-check-input" type="radio" name="display" value="1" {{ ($display == 1) ? 'checked' : '' }}>
                    <label class="form-check-label">Có</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="display" value="0" {{ ($display == 0) ? 'checked' : '' }}>
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
                    href="{{ route('banners.index') }}"
                >
                    Hủy
                </a>
                <input
                    type="submit"
                    value="{{ isset($banner) ? 'Cập nhật' : 'Thêm mới' }}"
                    class="btn btn-success"
                >
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
