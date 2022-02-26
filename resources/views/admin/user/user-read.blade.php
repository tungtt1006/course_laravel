@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Tài khoản</h3>
    </div>
    <div class="col-2">
        <a href="{{ route('users.create') }}" type="button" class="btn btn-light btn-sm text-success mt-1">
            <i class="fa fa-plus" aria-hidden="true"></i> Thêm mới
        </a>
    </div>
</div>
@endsection

@section("main")
<div class="row">
    <div class="col">
        <table class="table table-hover">
            <thead  class="table-light">
                <tr>
                    <th>
                        <div class="dropdown">
                            <button class="btn dropdown-toggle pb-0 fw-bold" type="button" id="user-id" data-bs-toggle="dropdown" aria-expanded="false">
                                Id
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="user-id">
                                <li>
                                    <a class="dropdown-item" href="{{ route('users.index', ['type' => 'id', 'order' => 'desc']) }}">Giảm dần</a>
                                </li>
                                <li><a class="dropdown-item" href="{{ route('users.index', ['type' => 'id', 'order' => 'asc']) }}">Tăng dần</a></li>
                            </ul>
                        </div>
                    </th>
                    <th class="">
                    Ảnh đại diện
                    </th>
                    <th>
                        <div class="dropdown">
                            <button class="btn dropdown-toggle pb-0  fw-bold" type="button" id="user-name" data-bs-toggle="dropdown" aria-expanded="false">
                                Tên
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="user-name">
                                <li>
                                    <a class="dropdown-item" href="{{ route('users.index', ['type' => 'name', 'order' => 'asc']) }}">A-Z</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="{{ route('users.index', ['type' => 'name', 'order' => 'desc']) }}">Z-A</a>
                                </li>
                            </ul>
                        </div>
                    </th>
                    <th>
                        <div class="dropdown">
                            <button class="btn dropdown-toggle pb-0  fw-bold" type="button" id="user-name" data-bs-toggle="dropdown" aria-expanded="false">
                                Email
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="user-email">
                                <li>
                                    <a class="dropdown-item" href="{{ route('users.index', ['type' => 'email', 'order' => 'asc']) }}">A-Z</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="{{ route('users.index', ['type' => 'email', 'order' => 'desc']) }}">Z-A</a>
                                </li>
                            </ul>
                        </div>
                    </th>
                    <th>Chức vụ</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
            @foreach($data as $rows)
                <tr>
                    <td>{{ $rows->id }}</td>
                    <td>
                        <img class="rounded-circle" src="{{ asset('upload/users/'.$rows->photo) }}">
                    </td>
                    <td>{{ $rows->name }}</td>
                    <td>{{ $rows->email }}</td>
                    <td>
                        {{ ($rows->role == 1) ? 'Người quản trị' : 'Nhân viên' }}
                    </td>
                    <td>
                        <form
                            action="{{ route('users.destroy', ['user' => $rows->id]) }}"
                            method="POST"
                            onsubmit="return confirm('Are you sure you want to delete?');"
                        >
                            @csrf
                            @method('DELETE')
                            <a class="btn btn-success btn-sm" href="{{ url('admin/users/'.$rows->id.'/edit') }}" role="button">
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
    {{ $data->links() }}
</div>
@endsection