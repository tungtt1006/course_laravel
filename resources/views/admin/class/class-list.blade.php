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
            @foreach($classes as $rows)
                <tr>
                    <td>{{ $rows->id }}</td>
                    <td>{{ $rows->getName() }}</td>
                    <td>{{ $rows->product->name }}</td>
                    <td>{{ $rows->teacher->name }}</td>
                    <td>{{ $rows->start_day }}</td>
                    <td class="d-flex">
                        <a class="btn btn-info btn-sm" href="{{ route('classes.show', $rows->id) }}">
                            <i class="fa fa-bars text-light" aria-hidden="true"></i>
                        </a>
                        @if ($status != 'finish')
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
                        @endif
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