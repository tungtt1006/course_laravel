@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>{{ isset($class) ? $class->class_name : 'Thêm mới lớp học' }}</h3>
    </div>
</div>
@endsection

@section("main")
<div class="row px-3 mt-4">
    @if (isset($class))
        <form method="post" action="{{ route('classes.update', $class->id) }}" enctype="multipart/form-data">
            @method('PUT')
    @else
        <form method="post" action="{{ route('classes.store') }}" enctype="multipart/form-data">
    @endif
        @csrf
        @php
            /**
             * Product
             */
            if (isset($class))
                $productId = $class->product->id;
            elseif (old('productId') != '')
                $productId = old('product');
            else
                $productId = '';

            /**
             * Teachers
             */
            if (isset($class))
                $teacherId = $class->teacher_id;
            elseif (old('teacher') != '')
                $teacherId = old('teacher');
            else
                $teacherId = '';

            /**
             * Sessions
             */
            if (isset($class))
                $sessions = $class->sessions;
            elseif (old('sessions') != '')
                $sessions = old('sessions');
            else
                $sessions = '';

            /**
             * Day & Time
             */
            if (isset($class)) {
                $startDay = $class->start_day;
                $timeIn = $class->time_in;
                $timeOut = $class->time_out;
                $daysOfWeek = $class->days_of_week;
            } elseif (old('startday') != '') {
                $startDay = old('startday');
                $timeIn = old('timein');
                $timeOut = old('timeout');
                $daysOfWeek = old('daysofweek');
            } else {
                $startDay = '';
                $timeIn = '';
                $timeOut = '';
                $daysOfWeek = '';
            }
        @endphp
        <div class="row">
            <div class="col-4">
                <label class="form-label fw-bolder">Khóa học</label>
                <select class="form-select" aria-label="Default select example" name="product" {{ isset($class) ? 'disabled' : '' }}>
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
            <div class="col-4">
                <label class="form-label fw-bolder">Giáo viên</label>
                <select class="form-select" aria-label="Default select example" name="teacher">
                    @foreach ($teachers as $row)
                        <option
                            value="{{ $row->id }}"
                            {{ ($teacherId == $row->id) ? 'selected' : '' }}
                        >
                            {{ $row->name }}
                        </option>
                    @endforeach
                </select>
            </div>
            <div class="col-4">
                <label class="form-label fw-bolder">Số buổi</label>
                <input type="text" name="sessions" class="form-control" required value="{{ $sessions }}">
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-3">
                <label class="form-label fw-bolder">Ngày bắt đầu</label>
                <input type="date" name="startday" class="form-control" required value="{{ $startDay }}">
            </div>
            <div class="col-3">
                <label class="form-label fw-bolder">Giờ vào</label>
                <input type="time" name="timein" class="form-control" required value="{{ $timeIn }}">
            </div>
            <div class="col-3">
                <label class="form-label fw-bolder">Giờ tan</label>
                <input type="time" name="timeout" class="form-control" required value="{{ $timeOut }}">
            </div>
            <div class="col-3">
                <label class="form-label fw-bolder">Thứ học</label>
                <input type="text" name="daysofweek" class="form-control" required value="{{ $daysOfWeek }}">
            </div>
        </div>

        <!-- Buttons -->
        <div class="row mt-5 mb-2">
            <div class="col-10"></div>
            <div class="col-2 p-0">
                <a
                    type="button"
                    class="btn btn-primary mr-2"
                    href="{{ route('classes.index') }}"
                >
                    Hủy
                </a>
                <input
                    type="submit"
                    value="{{ isset($class) ? 'Cập nhật' : 'Thêm mới' }}"
                    class="btn btn-success"
                >
            </div>
    </form>
</div>
@include('admin.form-error')
@endsection

@section("content-1")
    @include('admin.class.user')
@endsection

