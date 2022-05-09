@if (isset($class))
    <div class="container shadow-sm p-0 mt-3">
        <div class="card">
            <div class="card-header text-white bg-info">
                <div class="row">
                    <div class="col-10">
                        <h3>Danh sách đăng ký</h3>
                    </div>
                    <div class="col-2 text-end">
                        <a href="{{ route('classes.export_users', $class->id) }}" type="button" class="btn btn-light btn-sm text-dark mt-1">
                            Xuất danh sách
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body p-0">
                <table class="table table-bordered">
                    <thead class="table-light">
                        <tr>
                            <th class="text-center">Id</th>
                            <th class="text-center">Tên</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Số điện thoại</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($users as $user)
                        <tr>
                            <td class="text-center">{{ $user->id }}</td>
                            <td class="text-center">{{ $user->name }}</td>
                            <td class="text-center">{{ $user->email }}</td>
                            <td class="text-center">{{ $user->phone }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                <div class="row mb-3">
                    {{ $users->links() }}
                </div>
            </div>
        </div>
    </div>
@endif
