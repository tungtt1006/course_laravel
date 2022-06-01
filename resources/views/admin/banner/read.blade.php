@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Quản lý quảng cáo</h3>
    </div>
    <div class="col-2">
        <a
            href="{{ route('banners.create') }}"
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
                <tr class="text-center">
                    <th>Id</th>
                    <th>Ảnh</th>
                    <th>Tên</th>
                    <th>Hiển thị</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach($banners as $banner)
                <tr class="text-center">
                    <td>{{ $banner->id }}</td>
                    <td>
                        <img
                            id="output"
                            src="{{ asset($banner->photo) }}"
                            class="img-fluid shadow-sm border border-success"
                            style="height: 100px; width: 150px;"
                            alt="..."
                        >
                    </td>
                    <td>{{ $banner->name }}</td>
                    <td>
                        @if ($banner->display == 1)
                            <i class="fa fa-check-circle text-success" aria-hidden="true"></i>
                        @else
                            <i class="fa fa-times-circle text-danger" aria-hidden="true"></i>
                        @endif
                    </td>
                    <td>
                        <form
                            action="{{ route('banners.destroy', $banner->id) }}"
                            method="POST"
                            onsubmit="return confirm('Are you sure you want to delete?');"
                        >
                            @csrf
                            @method('DELETE')
                            <a class="btn btn-success btn-sm" href="{{ route('banners.edit', $banner->id) }}">
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
    {{ $banners->links() }}
</div>
@endsection("do-du-lieu")
