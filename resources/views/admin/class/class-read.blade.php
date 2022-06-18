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
<div class="row">
    <div class="col">
        <table class="table table-hover">
            <thead  class="table-light">
                <tr>
                    <th class="text-center">
                        <div class="dropdown p-0">
                            <button class="btn dropdown-toggle p-0 fw-bold" type="button" id="class-id" data-bs-toggle="dropdown" aria-expanded="false">
                                Id
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="class-id">
                                <li>
                                    <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'id', 'order' => 'desc']) }}">Giảm dần</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="{{ route('classes.index', ['type' => 'id', 'order' => 'asc']) }}">Tăng dần</a>
                                </li>
                            </ul>
                        </div>
                    </th>
                    <th>Môn</th>
                    <th>Giáo viên</th>
                    <th>Thời gian học</th>
                    <th class="text-center">Buổi học</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
            @foreach ($classes as $rows)
                <tr>
                    <td class="text-center">{{ $rows->id }}</td>
                    <td>{{ $rows->class_name }}</td>
                    <td>{{ $rows->product->name }}</td>
                    <td>{{ $rows->teacher->name }}</td>
                    <td>{{ $rows->start_day }} {{ isset($rows->end_day) ? '~ ' . $rows->end_day : '' }}</td>
                    <td class="text-center">
                        @if ($rows->end_day)
                            <i class="fa fa-check-circle text-success" aria-hidden="true"></i>
                        @else
                            <i class="fa fa-times-circle text-danger" aria-hidden="true"></i>
                        @endif
                    </td>
                    <td class="d-flex">
                        <a class="btn btn-info btn-sm" href="{{ route('classes.periods.create', $rows->id) }}">
                            <i class="fa fa-bars text-light" aria-hidden="true"></i>
                        </a>
                        <a class="btn btn-success btn-sm ms-2" href="{{ route('classes.edit', $rows->id) }}">
                            <i class="fa fa-pencil" aria-hidden="true"></i>
                        </a>
                        <form
                            action="{{ route('classes.destroy', $rows->id) }}"
                            method="POST"
                            onsubmit="return confirm('Are you sure you want to delete?');"
                        >
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm ms-2">
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
    {{ $classes->links() }}
</div>
@endsection
