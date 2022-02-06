@extends("layouts.layout")

@section("main")
<link rel="stylesheet" type="text/css" href="{{ asset('backend/assets/css/category.css') }}">
<div class="content">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-md-10">
                                <strong class="card-title">Quản lý khóa học</strong>
                            </div>
                            <div class="col-md-2 text-right">
                                <a 
                                    href="{{ route('category.create') }}"
                                    class="btn btn-success py-1 px-3" 
                                    style="color:white;"
                                >
                                    <i class="fas fa-plus"></i> Thêm mới
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-stats order-table ov-h">
                            <table id="datatablesSimple">
                                <thead>
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
                                                <i class="fas fa-check" style="color:green;"></i>
                                            @elseif ($rows->display == 0)
                                                <i class="fas fa-times" style="color:red;"></i>
                                            @endif
                                        </td>
                                        <td>
                                            <form 
                                                style="display:inline;" 
                                                action="{{ route('category.destroy', ['category' => $rows->id]) }}" 
                                                method="POST" 
                                                onsubmit="return confirm('Are you sure you want to delete?');"
                                            >
                                                @csrf
                                                @method('DELETE')
                                                <a 
                                                    class="badge badge-complete" 
                                                    style="color:white;" 
                                                    href="{{ url('admin/category/'.$rows->id.'/edit') }}"
                                                >
                                                    <i class="fas fa-pencil-alt"></i>
                                                </a>
                                                <button type="submit" style="background-color:gray;border:none;cursor:pointer;" class="badge badge-complete">
                                                    <i class="fas fa-trash-alt"></i>
                                                </button>
                                            </form>  
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection