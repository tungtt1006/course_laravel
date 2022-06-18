@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>{{ isset($teacher) ? $teacher->name : 'Thêm mới giáo viên' }}</h3>
    </div>
</div>
@endsection

@section("pre-script")
<script type="text/javascript" src="{{ asset('assets/ckeditor/ckeditor.js') }}"></script>
@endsection

@section("main")
<div class="row px-3 mt-4">
    @if (isset($teacher))
        <form method="post" action="{{ route('teachers.update', $teacher->id) }}" enctype="multipart/form-data" class="row">
            @method('PUT')
    @else
        <form method="post" action="{{ route('teachers.store') }}" enctype="multipart/form-data" class="row">
    @endif
        @csrf
        <div class="col-4">
            <img
                id="output"
                src="{{ isset($teacher->photo) ? asset($teacher->photo) : '#' }}"
                class="img-fluid shadow-sm border border-success w-100"
                style="height: 250px"
                alt="..."
            >
            <div class="mt-4 px-3">
                <input class="form-control" type="file" name="photo" onchange="loadFile(event)">
            </div>
        </div>
        @php
            /**
             * Name
             */
            if (isset($teacher))
                $name = $teacher->name;
            elseif (old('name') != '')
                $name = old('name');
            else
                $name = '';

            /**
             * Product
             */
            if (isset($teacher))
                $productId = $teacher->product->id;
            elseif (old('product') != '')
                $productId = old('product');
            else
                $productId = '';

            /**
             * Description
             */
            if (isset($teacher))
                $description = $teacher->description;
            elseif (old('description') != '')
                $description = old('description');
            else
                $description = '';
        @endphp
        <div class="col-8">
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
                    <label class="form-label fw-bolder">Khóa học</label>
                    <select class="form-select" aria-label="Default select example" name="product">
                        @foreach ($products as $row)
                            <option
                                value="{{ $row->id }}"
                                {{ ($productId == $row->id) ? 'selected' : '' }}
                            >
                                {{ $row->name }}
                            </option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="row mt-4">
                <label class="form-label fw-bolder">Giới thiệu</label>
                <textarea name="editor">{{ $description }}</textarea>
                <script>
                    CKEDITOR.replace('editor');
                </script>
            </div>

            <!-- Buttons -->
            <div class="row mt-5 mb-2">
            <div class="col-9"></div>
            <div class="col-3 p-0">
                <a
                    type="button"
                    class="btn btn-primary mr-2"
                    href="{{ route('teachers.index') }}"
                >
                    Hủy
                </a>
                <input
                    type="submit"
                    value="{{ isset($teacher) ? 'Cập nhật' : 'Thêm mới' }}"
                    class="btn btn-success"
                >
            </div>
        </div>
    </form>
</div>
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


