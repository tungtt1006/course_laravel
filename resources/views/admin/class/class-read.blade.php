@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Lớp học</h3>
    </div>
    <div class="col-2">
        <a href="{{ route('classes.create') }}" type="button" class="btn btn-light btn-sm text-success mt-1">
            <i class="fa fa-plus" aria-hidden="true"></i> Thêm mới
        </a>
    </div>
</div>
@endsection

@section("main")
<ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item" role="presentation">
        <button class="nav-link active fw-bold" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">
            Xếp lớp
        </button>
    </li>
    <li class="nav-item" role="presentation">
        <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">
            Đang học
        </button>
    </li>
    <li class="nav-item" role="presentation">
        <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">
            Hoàn thành
        </button>
    </li>
</ul>
<div class="tab-content" id="myTabContent">
    <!--Arrange Classes-->
    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
        @include('admin.class.class-list', ['classes' => $arrangeClasses])
    </div>

    <!--Learning Classes-->
    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
        @include('admin.class.class-list', ['classes' => $learningClasses])
    </div>

    <!--Finish Classes-->
    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
        @include('admin.class.class-list', ['classes' => $finishClasses])
    </div>
</div>
@endsection
