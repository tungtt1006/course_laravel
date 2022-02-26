@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>{{ $category->name }}</h3>
    </div>
    <div class="col-2">
        <a
            href="{{ route('categories.products.create', $category->id) }}"
            type="button"
            class="btn btn-light btn-sm text-success mt-1"
        >
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
                    <th class="text-center">Giá (VNĐ)</th>
                    <th class="text-center">Hiển thị</th>
                    <th class="text-center">Nổi bật</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach($data as $rows)
                <tr>
                    <td>{{ $rows->id }}</td>
                    <td class="text-center">{{ $rows->name }}</td>
                    <td class="text-center">{{ number_format($rows->price) }}</td>
                    <td class="text-center">
                        @if ($rows->display == 1)
                            <i class="fa fa-check-circle text-success" aria-hidden="true"></i>
                        @elseif ($rows->display == 0)
                            <i class="fa fa-times-circle text-danger" aria-hidden="true"></i>
                        @endif
                    </td>
                    <td class="text-center">
                        @if ($rows->hot == 1)
                            <i class="fa fa-check-circle text-success" aria-hidden="true"></i>
                        @endif
                    </td>
                    <td class="text-center">
                        <form
                            action="{{ route('categories.products.destroy', ['category' => $category->id, 'product' => $rows->id]) }}"
                            method="POST"
                            onsubmit="return confirm('Are you sure you want to delete?');"
                        >
                            @csrf
                            @method('DELETE')
                            <a class="btn btn-success btn-sm" href="{{ route('categories.products.edit', ['category' => $category->id, 'product' => $rows->id]) }}">
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