@extends("layouts.layout")

@section("main")
<div class="card container">
    <div class="card-header">
        <strong class="card-title">Quản lý tài khoản</strong>
    </div>

    <div class="card-body">
        @if (isset($data))
            <form method="post" action="{{ route('users.update', ['user' => $data->id]) }}" enctype="multipart/form-data">
                @method('PUT')
        @else
            <form method="post" action="{{ route('users.store') }}" enctype="multipart/form-data">
        @endif
            @csrf
            @php
                /**
                 * Name
                 */
                if (isset($data))
                    $name = $data->name;
                elseif (old('name') != '')
                    $name = old('name');
                else
                    $name = '';
                
                /**
                 * Email
                 */
                if (isset($data))
                    $email = $data->name;
                elseif (old('name') != '')
                    $email = old('email');
                else
                    $email = '';

                /**
                 * Phone
                 */
                if (isset($data))
                    $phone = $data->phone;
                elseif (old('phone') != '')
                    $phone = old('phone');
                else
                    $phone = '';
            @endphp
            <!-- Name -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Tên</div>
                <div class="col-md-10 pl-0">
                    <input 
                        type="text"  
                        name="name" 
                        class="form-control" 
                        required
                        value="{{ $name }}"
                    >
                </div>
            </div>

            <!-- Email -->
            <div class="row mt-3">
                <div class="col-md-2">Email</div>
                <div class="col-md-10 pl-0">
                    <input 
                        type="email" 
                        value="{{ $email }}"
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
                        {{ (!isset($data)) ? 'required' : '' }}
                    >
                </div>
                <div class="col-md-2">
                    {{ isset($data) ? 'Mẫu khẩu cũ' : 'Nhập lại mật khẩu' }}
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
                        value="{{ $phone }}" 
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
                            {{ (isset($data) && $data->role == 1) ? 'selected' : '' }}
                        >
                            Người quản trị
                        </option>
                        <option 
                            value="0"
                            {{ (isset($data) && $data->role == 1) ? 'selected' : '' }}
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
                        value="{{ isset($data) ? 'Cập nhật' : 'Thêm mới' }}" 
                        class="btn btn-success"
                    >
                </div>
        </form>
    </div>
</div>
@include('backend.form-error')
@endsection