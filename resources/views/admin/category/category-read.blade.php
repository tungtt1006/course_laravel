@extends("admin-layout.layout")

@section("main")
<h1 class="mt-4 text-center fw-normal">Danh Mục Khóa Học</h1>
<div class="row mt-2">
    <div class="col-10">
    </div>
    <div class="col-2">
        <a href="{{ route('category.create') }}" type="button" class="btn btn-success btn-sm">
            <i class="fa fa-plus" aria-hidden="true"></i> Thêm mới
        </a>
    </div>
</div>
<div class="row mt-3">
    <div class="col">
        <table class="table table-hover">
            <thead class="table-secondary">
                <tr>
                    <th>Id</th>
                    <th class="text-center">Tên</th>
                    <th class="text-center">Hiển thị</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach($data as $rows)
                <tr>
                    <td>{{ $rows->id }}</td>
                    <td class="text-center">{{ $rows->name }}</td>
                    <td class="text-center">
                        @if ($rows->display == 1)
                            <i class="fa fa-check-circle text-success" aria-hidden="true"></i>
                        @elseif ($rows->display == 0)
                        <i class="fa fa-times-circle text-danger" aria-hidden="true"></i>
                        @endif
                    </td>
                    <td class="text-center">
                        <form
                            action="{{ route('category.destroy', ['category' => $rows->id]) }}"
                            method="POST"
                            onsubmit="return confirm('Are you sure you want to delete?');"
                        >
                            @csrf
                            @method('DELETE')
                            <a class="btn btn-info btn-sm" href="{{ route('category.edit', ['category' => $rows->id]) }}">
                                <i class="fa fa-bars text-light" aria-hidden="true"></i>
                            </a>
                            <a class="btn btn-success btn-sm" href="{{ route('category.edit', ['category' => $rows->id]) }}">
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