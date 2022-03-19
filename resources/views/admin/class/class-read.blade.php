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
        <div class="row">
            <div class="col">
                <table class="table table-hover">
                    <thead  class="table-light">
                        <tr>
                            <th>
                                <div class="dropdown">
                                    <button class="btn dropdown-toggle pb-0 fw-bold" type="button" id="class-id" data-bs-toggle="dropdown" aria-expanded="false">
                                        Id
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="class-id">
                                        <li>
                                            <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'id', 'order' => 'desc']) }}">Giảm dần</a>
                                        </li>
                                        <li><a class="dropdown-item" href="{{ route('classes.index', ['type' => 'id', 'order' => 'asc']) }}">Tăng dần</a></li>
                                    </ul>
                                </div>
                            </th>
                            <th>
                                <div class="dropdown">
                                    <button class="btn dropdown-toggle pb-0  fw-bold" type="button" id="class-name" data-bs-toggle="dropdown" aria-expanded="false">
                                        Tên
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="class-name">
                                        <li>
                                            <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'name', 'order' => 'asc']) }}">A-Z</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'name', 'order' => 'desc']) }}">Z-A</a>
                                        </li>
                                    </ul>
                                </div>
                            </th>
                            <th>
                                <div class="dropdown">
                                    <button class="btn dropdown-toggle pb-0  fw-bold" type="button" id="product-name" data-bs-toggle="dropdown" aria-expanded="false">
                                        Môn
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="product-name">
                                        <li>
                                            <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'email', 'order' => 'asc']) }}">A-Z</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'email', 'order' => 'desc']) }}">Z-A</a>
                                        </li>
                                    </ul>
                                </div>
                            </th>
                            <th>
                                <div class="dropdown">
                                    <button class="btn dropdown-toggle pb-0  fw-bold" type="button" id="teacher-name" data-bs-toggle="dropdown" aria-expanded="false">
                                        Giáo viên
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="teacher-name">
                                        <li>
                                            <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'email', 'order' => 'asc']) }}">A-Z</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'email', 'order' => 'desc']) }}">Z-A</a>
                                        </li>
                                    </ul>
                                </div>
                            </th>
                            <th>Ngày bắt đầu</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($arrangeClasses as $rows)
                        <tr>
                            <td>{{ $rows->id }}</td>
                            <td>{{ $rows->getName() }}</td>
                            <td>{{ $rows->product->name }}</td>
                            <td>{{ $rows->teacher->name }}</td>
                            <td>{{ $rows->start_day }}</td>
                            <td>
                                <form
                                    action="{{ route('classes.destroy', ['class' => $rows->id]) }}"
                                    method="POST"
                                    onsubmit="return confirm('Are you sure you want to delete?');"
                                >
                                    @csrf
                                    @method('DELETE')
                                    <a class="btn btn-info btn-sm" href="{{ route('classes.show', $rows->id) }}">
                                        <i class="fa fa-bars text-light" aria-hidden="true"></i>
                                    </a>
                                    <a class="btn btn-success btn-sm" href="{{ route('classes.edit', $rows->id) }}" role="button">
                                        <i class="fa fa-pencil" aria-hidden="true"></i>
                                    </a>
                                    <button type="submit" class="btn btn-danger btn-sm">
                                        <i class="fa fa-trash-o" aria-hidden="true"></i>
                                    </button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            {{ $arrangeClasses->links() }}
        </div>
    </div>

    <!--Learning Classes-->
    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
        <div class="row">
            <div class="col">
                <table class="table table-hover">
                    <thead  class="table-light">
                        <tr>
                            <th>
                                <div class="dropdown">
                                    <button class="btn dropdown-toggle pb-0 fw-bold" type="button" id="class-id" data-bs-toggle="dropdown" aria-expanded="false">
                                        Id
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="class-id">
                                        <li>
                                            <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'id', 'order' => 'desc']) }}">Giảm dần</a>
                                        </li>
                                        <li><a class="dropdown-item" href="{{ route('classes.index', ['type' => 'id', 'order' => 'asc']) }}">Tăng dần</a></li>
                                    </ul>
                                </div>
                            </th>
                            <th>
                                <div class="dropdown">
                                    <button class="btn dropdown-toggle pb-0  fw-bold" type="button" id="class-name" data-bs-toggle="dropdown" aria-expanded="false">
                                        Tên
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="class-name">
                                        <li>
                                            <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'name', 'order' => 'asc']) }}">A-Z</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'name', 'order' => 'desc']) }}">Z-A</a>
                                        </li>
                                    </ul>
                                </div>
                            </th>
                            <th>
                                <div class="dropdown">
                                    <button class="btn dropdown-toggle pb-0  fw-bold" type="button" id="product-name" data-bs-toggle="dropdown" aria-expanded="false">
                                        Môn
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="product-name">
                                        <li>
                                            <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'email', 'order' => 'asc']) }}">A-Z</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'email', 'order' => 'desc']) }}">Z-A</a>
                                        </li>
                                    </ul>
                                </div>
                            </th>
                            <th>
                                <div class="dropdown">
                                    <button class="btn dropdown-toggle pb-0  fw-bold" type="button" id="teacher-name" data-bs-toggle="dropdown" aria-expanded="false">
                                        Giáo viên
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="teacher-name">
                                        <li>
                                            <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'email', 'order' => 'asc']) }}">A-Z</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'email', 'order' => 'desc']) }}">Z-A</a>
                                        </li>
                                    </ul>
                                </div>
                            </th>
                            <th>Ngày bắt đầu</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($learningClasses as $rows)
                        <tr>
                            <td>{{ $rows->id }}</td>
                            <td>{{ $rows->name }}</td>
                            <td>{{ $rows->product->name }}</td>
                            <td>{{ $rows->teacher->name }}</td>
                            <td>{{ $rows->start_day }}</td>
                            <td>
                                <form
                                    action="{{ route('classes.destroy', ['class' => $rows->id]) }}"
                                    method="POST"
                                    onsubmit="return confirm('Are you sure you want to delete?');"
                                >
                                    @csrf
                                    @method('DELETE')
                                    <a class="btn btn-info btn-sm" href="{{ route('classes.show', $rows->id) }}">
                                        <i class="fa fa-bars text-light" aria-hidden="true"></i>
                                    </a>
                                    <a class="btn btn-success btn-sm" href="{{ route('classes.edit', $rows->id) }}" role="button">
                                        <i class="fa fa-pencil" aria-hidden="true"></i>
                                    </a>
                                    <button type="submit" class="btn btn-danger btn-sm">
                                        <i class="fa fa-trash-o" aria-hidden="true"></i>
                                    </button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            {{ $learningClasses->links() }}
        </div>
    </div>

    <!--Finish Classes-->
    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
        <div class="row">
                <div class="col">
                    <table class="table table-hover">
                        <thead  class="table-light">
                            <tr>
                                <th>
                                    <div class="dropdown">
                                        <button class="btn dropdown-toggle pb-0 fw-bold" type="button" id="class-id" data-bs-toggle="dropdown" aria-expanded="false">
                                            Id
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="class-id">
                                            <li>
                                                <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'id', 'order' => 'desc']) }}">Giảm dần</a>
                                            </li>
                                            <li><a class="dropdown-item" href="{{ route('classes.index', ['type' => 'id', 'order' => 'asc']) }}">Tăng dần</a></li>
                                        </ul>
                                    </div>
                                </th>
                                <th>
                                    <div class="dropdown">
                                        <button class="btn dropdown-toggle pb-0  fw-bold" type="button" id="class-name" data-bs-toggle="dropdown" aria-expanded="false">
                                            Tên
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="class-name">
                                            <li>
                                                <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'name', 'order' => 'asc']) }}">A-Z</a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'name', 'order' => 'desc']) }}">Z-A</a>
                                            </li>
                                        </ul>
                                    </div>
                                </th>
                                <th>
                                    <div class="dropdown">
                                        <button class="btn dropdown-toggle pb-0  fw-bold" type="button" id="product-name" data-bs-toggle="dropdown" aria-expanded="false">
                                            Môn
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="product-name">
                                            <li>
                                                <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'email', 'order' => 'asc']) }}">A-Z</a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'email', 'order' => 'desc']) }}">Z-A</a>
                                            </li>
                                        </ul>
                                    </div>
                                </th>
                                <th>
                                    <div class="dropdown">
                                        <button class="btn dropdown-toggle pb-0  fw-bold" type="button" id="teacher-name" data-bs-toggle="dropdown" aria-expanded="false">
                                            Giáo viên
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="teacher-name">
                                            <li>
                                                <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'email', 'order' => 'asc']) }}">A-Z</a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'email', 'order' => 'desc']) }}">Z-A</a>
                                            </li>
                                        </ul>
                                    </div>
                                </th>
                                <th>Ngày bắt đầu</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($finishClasses as $rows)
                            <tr>
                                <td>{{ $rows->id }}</td>
                                <td>{{ $rows->getName() }}</td>
                                <td>{{ $rows->product->name }}</td>
                                <td>{{ $rows->teacher->name }}</td>
                                <td>{{ $rows->start_day }}</td>
                                <td>
                                    <form
                                        action="{{ route('classes.destroy', ['class' => $rows->id]) }}"
                                        method="POST"
                                        onsubmit="return confirm('Are you sure you want to delete?');"
                                    >
                                        @csrf
                                        @method('DELETE')
                                        <a class="btn btn-info btn-sm" href="{{ route('classes.show', $rows->id) }}">
                                            <i class="fa fa-bars text-light" aria-hidden="true"></i>
                                        </a>
                                        <a class="btn btn-success btn-sm" href="{{ route('classes.edit', $rows->id) }}" role="button">
                                            <i class="fa fa-pencil" aria-hidden="true"></i>
                                        </a>
                                        <button type="submit" class="btn btn-danger btn-sm">
                                            <i class="fa fa-trash-o" aria-hidden="true"></i>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row">
                {{ $finishClasses->links() }}
            </div>
        </div>
    </div>
</div>
@endsection