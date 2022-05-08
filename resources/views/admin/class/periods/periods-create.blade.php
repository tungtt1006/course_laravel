@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Thêm mới buổi học</h3>
    </div>
</div>
@endsection

@section("main")
<div class="row px-3 mt-4">
    <form method="post" action="{{ route('classes.periods.store_periods', $class->id) }}" enctype="multipart/form-data">
        @csrf
        @for ($i = 1; $i <= $class->sessions; $i++)
            <div class="row {{ ($i !== 1) ? 'mt-4' : '' }} shadow-sm mx-2 p-3">
            <div class="col-1">
                    <p class="fw-bolder mt-3">Buổi {{ $i }}</p>
                </div>
                <div class="col-3">
                    <label class="form-label fw-bolder">Ngày học:</label>
                    <input type="date" name="date[{{ $i }}]" class="form-control" required>
                </div>
                <div class="col-3">
                    <label class="form-label fw-bolder">Giờ vào:</label>
                    <input type="time" name="timeIn[{{ $i }}]" class="form-control" required value="18:00">
                </div>
                <div class="col-3">
                    <label class="form-label fw-bolder">Giờ tan:</label>
                    <input type="time" name="timeOut[{{ $i }}]" class="form-control" required value="21:00">
                </div>
            </div>
        @endfor

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
@endsection

