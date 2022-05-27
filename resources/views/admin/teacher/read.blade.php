@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Quản lý giáo viên</h3>
    </div>
    <div class="col-2">
        <a href="{{ route('teachers.create') }}" type="button" class="btn btn-light btn-sm text-success mt-1">
            <i class="fa fa-plus" aria-hidden="true"></i> Thêm mới
        </a>
    </div>
</div>
@endsection

@section("main")
<div class="row">
    <div class="col">
        <table class="table table-hover">
            <thead class="table-light">
                <tr>
                    <th>Id</th>
                    <th class="text-center">Tên</th>
                    <th class="text-center">Môn</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach($teachers as $rows)
                <tr>
                    <td>{{ $rows->id }}</td>
                    <td class="text-center">{{ $rows->name }}</td>
                    <td class="text-center">{{ $rows->product->name }}</td>
                    <td class="text-center d-flex justify-content-center">
                        <a class="btn btn-success btn-sm mx-2" href="{{ route('teachers.edit', $rows->id) }}">
                            <i class="fa fa-pencil" aria-hidden="true"></i>
                        </a>
                        <form
                            action="{{ route('teachers.destroy', $rows->id) }}"
                            method="POST"
                            onsubmit="return confirm('Are you sure you want to delete?');"
                        >
                            @csrf
                            @method('DELETE')
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
    {{ $teachers->links() }}
</div>
@endsection
