@extends("admin-layout.layout")

@section("main")
    <div class="row mt-4">
        <div class="col-10"></div>
        <div class="col-2 text-end pe-4">
            <a href="{{ route('users.create') }}" type="button" class="btn btn-outline-success btn-sm">
                <i class="fa fa-plus" aria-hidden="true"></i> Thêm mới
            </a>
        </div>
    </div>
    <div class="row mt-1 px-2">
        <div class="col">
            <table class="table">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>
                        Avatar
                        </th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Role</th>
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
                        <td>{{ $rows->phone }}</td>
                        <td>
                            {{ ($rows->role == 1) ? 'Người quản trị' : 'Nhân viên' }}
                        </td>
                        <td>
                            <form
                                style="display:inline;"
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
@endsection