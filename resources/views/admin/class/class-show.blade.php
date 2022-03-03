@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Lớp học</h3>
    </div>
</div>
@endsection

@section("main")
<div class="row">
    <div class="col-4 text-center">
        <p>Tên lớp: {{ $class->name }}</p>
    </div>
    <div class="col-4 text-center">
        <p>Môn: {{ $product->name }}</p>
    </div>
    <div class="col-4 text-center">
        <p>Giáo viên: {{ $teacher->name }}</p>
    </div>
</div>
@endsection