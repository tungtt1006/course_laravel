@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Quản lý tài khoản</h3>
    </div>
</div>
@endsection

@section("main")
<div class="row px-3 mt-4">
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
                $email = $data->email;
            elseif (old('email') != '')
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

            /**
                * Address
                */
            if (isset($data))
                $address = $data->address;
            elseif (old('address') != '')
                $address = old('address');
            else
                $address = '';

            /**
                * Role
                */
            if (isset($data))
                $role = $data->role;
            elseif (old('role') != '')
                $role = old('role');
            else
                $role = 1;

            /**
                * Gender
                */
            if (isset($data))
                $gender = $data->gender;
            elseif (old('gender') != '')
                $gender = old('gender');
            else
                $gender = 1;
        @endphp
        <!-- Name -->
        <div class="row" style="margin-top:5px;">
            <div class="col-2">Tên</div>
            <div class="col-10 pl-0">
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
            <div class="col-2">Email</div>
            <div class="col-10 pl-0">
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
            <div class="col-2">Mật khẩu</div>
            <div class="col-4 pl-0">
                <input
                    type="password"
                    name="password"
                    class="form-control"
                    {{ (!isset($data)) ? 'required' : '' }}
                >
            </div>
            <div class="col-2">
                {{ isset($data) ? 'Mẫu khẩu cũ' : 'Nhập lại mật khẩu' }}
            </div>
            <div class="col-4 pl-0">
                <input
                    type="password"
                    name="password_confirmation"
                    class="form-control"
                >
            </div>
        </div>

        <!-- Phone -->
        <div class="row mt-3">
            <div class="col-2">Điện thoại</div>
            <div class="col-10 pl-0">
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
            <div class="col-2">Địa chỉ</div>
            <div class="col-10 pl-0">
                <textarea
                    type="text"
                    name="address"
                    class="form-control"
                    rows="2"
                >{{ $address }}</textarea>
            </div>
        </div>

        <!-- Role & Gender -->
        <div class="row mt-3">
            <div class="col-2">Quyền</div>
            <div class="col-3 pl-0">
                <select name="role" class="form-select" required>
                    <option
                        value="1"
                        {{ ($role == 1) ? 'selected' : '' }}
                    >
                        Người quản trị
                    </option>
                    <option
                        value="0"
                        {{ ($role == 0) ? 'selected' : '' }}
                    >
                        Học viên
                    </option>
                </select>
            </div>
            <div class="col-1">Giới tính</div>
            <div class="col-3 pl-0">
                <div class="form-check">
                    <input
                        type="radio"
                        name="gender"
                        value="1"
                        {{ ($gender == 1) ? 'checked' : '' }}
                    >
                    <label class="form-check-label mr-3">Nam</label>
                    <input
                        type="radio"
                        name="gender"
                        value="0"
                        {{ ($gender == 0) ? 'checked' : '' }}
                    >
                    <label class="form-check-label mr-3">Nữ</label>
                    <input
                        type="radio"
                        name="gender"
                        value="2"
                        {{ ($gender == 2) ? 'checked' : '' }}
                    >
                    <label class="form-check-label">Khác</label>
                </div>
            </div>
        </div>

        <!-- Upload image -->
        <div class="row mt-3">
            <div class="col-2">Ảnh đại diện</div>
            <div class="col-10 pl-0">
                <input type="file" name="photo">
            </div>
        </div>

        <!-- Buttons -->
        <div class="row mt-5 mb-2">
            <div class="col-10"></div>
            <div class="col-2 p-0">
                <a
                    type="button"
                    class="btn btn-primary mr-2"
                    href="{{ url()->previous() }}"
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
@include('admin.form-error')
@endsection
