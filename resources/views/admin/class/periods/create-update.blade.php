@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>{{ (count($periods) > 0) ? 'Cập nhật' : 'Thêm mới' }} buổi học</h3>
    </div>
    <div class="col-2">
        <a href="{{ route('periods.export_pdf', $class->id) }}" type="button" class="btn btn-warning btn-sm mt-1">
            <i class="fa fa-print" aria-hidden="true"></i> In danh sách
        </a>
    </div>
</div>
@endsection

@section("main")
<div class="row px-3 mt-4">
    <div class="col-2">
        <p class="fs-5 text-center">Lớp: <b class="fs-5">{{ $class->className }}</b></p>
    </div>
    <div class="col-3">
        <p class="fs-5 text-center">Ngày bắt đầu: <b class="fs-5">{{ $class->start_day }}</b></p>
    </div>
    <div class="col-3">
        <p class="fs-5 text-center">Thứ học: <b class="fs-5">{{ $class->days_of_week }}</b></p>
    </div>
    <div class="col-4">
        <p class="fs-5 text-center">Giờ học: <b class="fs-5">{{ $class->time_in }} ~ {{ $class->time_out }}</b></p>
    </div>
</div>

<div class="row p-3">
    <form method="post" action="{{ route('classes.periods.store', $class->id) }}" enctype="multipart/form-data">
        @csrf
        @for ($i = 1; $i <= $class->sessions; $i++)
            <div class="row {{ ($i !== 1) ? 'mt-4' : '' }} shadow-sm mx-2 p-3">
                <div class="col-1">
                    <p class="fw-bolder mt-3">Buổi {{ $i }}</p>
                </div>
                <div class="col-3">
                    <label class="form-label fw-bolder">Ngày học:</label>
                    <input
                        type="date"
                        name="date[{{ $i }}]"
                        class="form-control"
                        required
                        value="{{ (count($periods) > 0) && isset($periods[$i-1]) ? $periods[$i-1]->date : '' }}"
                    >
                </div>
                <div class="col-3">
                    <label class="form-label fw-bolder">Giờ vào:</label>
                    <input
                        type="time"
                        name="timeIn[{{ $i }}]"
                        class="form-control"
                        required
                        value="{{ (count($periods) > 0) && isset($periods[$i-1]) ? $periods[$i-1]->timeIn : '18:00' }}"
                    >
                </div>
                <div class="col-3">
                    <label class="form-label fw-bolder">Giờ tan:</label>
                    <input
                        type="time"
                        name="timeOut[{{ $i }}]"
                        class="form-control"
                        required
                        value="{{ (count($periods) > 0) && isset($periods[$i-1]) ? $periods[$i-1]->timeOut : '21:00' }}"
                    >
                </div>
            </div>
        @endfor

        <!-- Buttons -->
        <div class="row mt-3">
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
                    value="{{ (count($periods) > 0) ? 'Cập nhật' : 'Thêm mới' }}"
                    class="btn btn-success"
                >
            </div>
    </form>
</div>

@include('admin.form-error')
@endsection

