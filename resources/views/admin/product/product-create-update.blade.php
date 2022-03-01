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
        <form method="post" action="{{ route('categories.products.update',  ['category' => $category->id, 'product' => $data->id]) }}" enctype="multipart/form-data">
            @method('PUT')
    @else
        <form method="post" action="{{ route('categories.products.store', $category->id) }}" enctype="multipart/form-data">
    @endif
        @csrf
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
                $price = '';

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
             * Day start && Day end
             */
            if (isset($data) && $data->day_start && $data->day_end) {
                $dayStart = $data->day_start;
                $dayEnd = $data->day_end;
            } elseif (old('day_start') != '' && old('day_end') != '') {
                $dayStart = old('day_start');
                $dayEnd = old('day_end');
            } else {
                $dayStart = '';
                $dayEnd = '';
            }

            /**
             * Time start && Time end
             */
            if (isset($data) && $data->time_start && $data->time_end) {
                $timeStart = $data->time_start;
                $timeEnd = $data->time_end;
            } elseif (old('time_start') != '' && old('time_end') != '') {
                $timeStart = old('time_start');
                $timeEnd = old('time_end');
            } else {
                $timeStart = '';
                $timeEnd = '';
            }

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
                $content = '';

            /**
             * Display
             */
            if (isset($data) && $data->display)
                $display = $data->display;
            elseif (old('display') != '')
                $display= old('display');
            else
                $display = 1;

            /**
             * Hot
             */
            if (isset($data) && $data->hot)
                $hot = $data->hot;
            elseif (old('hot') != '')
                $hot= old('hot');
            else
                $hot = 1;
        @endphp
        <!-- Name & Certificates-->
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
        </div>

        <!-- Price & Sessions-->
        <div class="row mt-3">
            <div class="col-6">
                <label class="form-label fw-bolder">Giá (VNĐ)</label>
                <input type="text" name="price" class="form-control" required value="{{ $price }}">
            </div>
            <div class="col-6">
                <label class="form-label fw-bolder">Thứ học</label>
                <input type="text" name="sessions" class="form-control" required value="{{ $sessions }}" placeholder="2/4/6">
            </div>
        </div>

        <!--Time start & Time end-->
        <div class="row mt-3">
            <div class="col-3">
                <label class="form-label fw-bolder">Ngày bắt đầu</label>
                <input type="date" name="daystart" class="form-control" required value="{{ $dayStart }}">
            </div>
            <div class="col-3">
                <label class="form-label fw-bolder">Ngày kết thúc</label>
                <input type="date" name="dayend" class="form-control" required value="{{ $dayEnd }}">
            </div>
            <div class="col-3">
                <label class="form-label fw-bolder">Giờ vào</label>
                <input type="time" name="timestart" class="form-control" required value="{{ $timeStart }}">
            </div>
            <div class="col-3">
                <label class="form-label fw-bolder">Giờ tan</label>
                <input type="time" name="timeend" class="form-control" required value="{{ $timeEnd }}">
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
                    href="{{ url()->previous() }}"
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