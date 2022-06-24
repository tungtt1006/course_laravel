@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>{{ isset($data) ? $data->name : 'Thêm khóa học mới' }}</h3>
    </div>
</div>
@endsection

@section("main")
@if (isset($data))
    <form method="post" action="{{ route('categories.products.update', ['category' => $category->id, 'product' => $data->id]) }}" class="row m-3" enctype="multipart/form-data">
        @method('PUT')
@else
    <form method="post" action="{{ route('categories.products.store', $category->id) }}" enctype="multipart/form-data" class="row m-3">
@endif
    @csrf
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
    <div class="col-8">
        @php
            /**
            * Name
            */
            if (isset($data) && $data->name)
                $name = $data->name;
            elseif (old('name') != '')
                $name = old('name');
            else
                $name = '';

            /**
            * Certificate
            */
            if (isset($data) && $data->certificate_id)
                $certificateId = $data->certificate_id;
            elseif (old('certificate_id') != '')
                $certificateId = old('certificate_id');
            else
                $certificateId = $certificates[0]->id;

            /**
            * Price
            */
            if (isset($data) && $data->price)
                $price = $data->price;
            elseif (old('price') != '')
                $price = old('price');
            else
                $price = 0;

            /**
             * Discount
             */
            if (isset($data) && $data->discount)
                $discount = $data->discount;
            elseif (old('discount') != '')
                $discount = old('discount');
            else
                $discount = 0;

            /**
            * Sessions
            */
            if (isset($data) && $data->sessions)
                $sessions = $data->sessions;
            elseif (old('sessions') != '')
                $sessions = old('sessions');
            else
                $sessions = '';

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
            * Content
            */
            if (isset($data))
                $content = $data->content;
            elseif (old('content') != '')
                $content = old('content');
            else
                $content = '[
                    {
                        "title": "Chương số 1",
                        "content": [
                        "Bài 1",
                        "Bài 2",
                        "Bài 3",
                        "Bài 4",
                        "Bài 5",
                        "Bài 6"
                        ]
                    },
                    {
                        "title": "Chương số 2",
                        "content": [
                        "Bài 1",
                        "Bài 2",
                        "Bài 3",
                        "Bài 4",
                        "Bài 5",
                        "Bài 6"
                        ]
                    },
                    {
                        "title": "Chương số 3",
                        "content": [
                        "Bài 1",
                        "Bài 2",
                        "Bài 3",
                        "Bài 4",
                        "Bài 5",
                        "Bài 6"
                        ]
                    }
                ]';

            /**
            * Display
            */
            if (isset($data))
                $display = $data->display;
            elseif (old('display') != '')
                $display= old('display');
            else
                $display = 1;

            /**
            * Hot
            */
            if (isset($data))
                $hot = $data->hot;
            elseif (old('hot') != '')
                $hot= old('hot');
            else
                $hot = 1;
        @endphp
        <!-- Name & Certificates-->
        <div class="row">
            <div class="col-3">
                <label class="form-label fw-bolder">Tên</label>
                <input
                    type="text"
                    name="name"
                    class="form-control"
                    required
                    value="{{ $name }}"
                >
            </div>
            <div class="col-3">
                <label class="form-label fw-bolder">Chứng chỉ</label>
                <select class="form-select" aria-label="Default select example" name="certificateid">
                    @foreach ($certificates as $certificate)
                        <option
                            value="{{ $certificate->id }}"
                            {{ ($certificateId == $certificate->id) ? 'selected' : '' }}
                        >
                            {{ $certificate->name }}
                        </option>
                    @endforeach
                </select>
            </div>
            <div class="col-3">
                <label class="form-label fw-bolder">Giá (VNĐ)</label>
                <input type="number" min="0" name="price" class="form-control" required value="{{ $price }}">
            </div>
            <div class="col-3">
                <label class="form-label fw-bolder">Giảm giá (%)</label>
                <input type="number" min="0" max="100" name="discount" class="form-control" required value="{{ $discount }}">
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
                <label class="form-label fw-bolder">Nội dung khóa học</label>
                <textarea class="form-control" name ="content" rows="5">{{ $content }}</textarea>
            </div>
        </div>

        <!-- Display & Hot-->
        <div class="row mt-3">
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
            <div class="col-5">
                <label class="form-label fw-bolder">Nổi bật</label>
                <div class="form-check form-check-inline ms-2">
                    <input class="form-check-input" type="radio" name="hot" value="1" {{ ($hot == 1) ? 'checked' : '' }}>
                    <label class="form-check-label">Có</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="hot" value="0" {{ ($hot == 0) ? 'checked' : '' }}>
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
                    href="{{ route('categories.products.index', ['category' => $category->id]) }}"
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
