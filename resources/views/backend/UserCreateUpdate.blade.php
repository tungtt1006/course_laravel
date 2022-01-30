@extends("layouts.layout")

@section("main")
<div class="card container">
    <div class="card-header">
        <strong class="card-title">Quản lý tài khoản</strong>
    </div>

    <div class="card-body">
        @if ($action == 'update')
            <form method="post" action="{{ route('users.update', ['user' => $data->id]) }}" enctype="multipart/form-data">
                @method('PUT')
        @elseif ($action == 'create')
            <form method="post" action="{{ route('users.store') }}" enctype="multipart/form-data">
        @endif
            @csrf
            <!-- Name -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Tên</div>
                <div class="col-md-10 pl-0">
                    <input 
                        type="text" 
                        value="{{ isset($data->name) ? $data->name : '' }}" 
                        name="name" 
                        class="form-control" 
                        required
                    >
                </div>
            </div>

            <!-- Email -->
            <div class="row mt-3">
                <div class="col-md-2">Email</div>
                <div class="col-md-10 pl-0">
                    <input 
                        type="email" 
                        value="{{ isset($data->email) ? $data->email : '' }}"
                        name="email"
                        class="form-control" 
                        required
                    >  
                </div>
            </div>

            <!-- Password -->
            <div class="row mt-3">
                <div class="col-md-2">Mật khẩu</div>
                <div class="col-md-4 pl-0">
                    <input 
                        type="password" 
                        name="password"
                        class="form-control" 
                        {{ ($action == 'create') ? required : '' }}
                    >
                </div>
                <div class="col-md-2">
                    {{ ($action == 'update') ? 'Mẫu khẩu cũ' : 'Nhập lại' }}
                </div>
                <div class="col-md-4 pl-0">
                    <input 
                        type="password" 
                        name="confirm_password"
                        class="form-control"
                    >
                </div>
            </div>
            
            <!-- Phone -->
            <div class="row mt-3">
                <div class="col-md-2">Điện thoại</div>
                <div class="col-md-10 pl-0">
                    <input 
                        type="text" 
                        value="{{ isset($data->phone) ? $data->phone : '' }}" 
                        name="phone" 
                        class="form-control" 
                        required
                    >
                </div>
            </div>
            
            <!-- Address -->
            <div class="row mt-3">
                <div class="col-md-2">Địa chỉ</div>
                <div class="col-md-10 pl-0">
                    <textarea 
                        type="text"  
                        name="address" 
                        class="form-control"
                        rows="2" 
                    >{{ isset($data->address) ? $data->address : '' }}</textarea>
                </div>
            </div>
            
            <!-- Role -->
            <div class="row mt-3">
                <div class="col-md-2">Quyền</div>
                <div class="col-md-3 pl-0">
                    <select name="role" class="form-control" required>
                        <option 
                            value="1" 
                            @if ($data->role == 1 && $action == 'update')
                                selected
                            @endif
                        >
                            Người quản trị
                        </option>
                        <option 
                            value="0"
                            @if ($data->role == 0 && $action == 'update')
                                selected
                            @endif
                        >
                            Nhân viên
                        </option>
                    </select>
                </div>
            </div>
            
            <!-- Upload image -->
            <div class="row mt-3">
                <div class="col-md-2">Ảnh đại diện</div>
                <div class="col-md-10 pl-0">
                    <input type="file" name="photo">
                </div>
            </div>

            <!-- Buttons -->
            <div class="row mt-5">
                <div class="col-md-10"></div>
                <div class="col-md-2 p-0"> 
                    <a 
                        type="button" 
                        class="btn btn-primary mr-2"
                        href="{{ route('users.index') }}"
                    >
                        Hủy
                    </a>
                    <input 
                        type="submit" 
                        value="{{ ($action == 'update') ? 'Cập nhật' : 'Thêm mới' }}" 
                        class="btn btn-success"
                    >
                </div>
        </form>
    </div>
</div>
@include('backend.form-error')
@endsection