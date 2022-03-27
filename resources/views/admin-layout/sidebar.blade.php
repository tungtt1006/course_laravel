<div class="list-group rounded-0">
    <a
        href="{{ route('home') }}"
        class="list-group-item list-group-item-action p-3 {{ Route::currentRouteNamed('home') ? 'active' : '' }}"
        aria-current="true"
    >
        <i class="menu-icon fa fa-laptop"></i> Trang chủ
    </a>

    <a
        href="{{ route('users.index') }}"
        class="list-group-item list-group-item-action p-3 {{ Route::currentRouteNamed('users.index') ? 'active' : '' }}"
    >
        <i class="fa fa-user" aria-hidden="true"></i> Tài khoản
    </a>

    <a
        href="{{ route('category.index') }}"
        class="list-group-item list-group-item-action p-3 {{ Route::currentRouteNamed('category.index') ? 'active' : '' }}"
    >
        <i class="fa fa-th-list" aria-hidden="true"></i> Danh mục
    </a>
    <a
        href="{{ route('classes.index') }}"
        class="list-group-item list-group-item-action p-3 {{ Route::currentRouteNamed('classes.index') ? 'active' : '' }}"
    >
        <i class="fa fa-address-book" aria-hidden="true"></i> Lớp học
    </a>
    <a href="{{ route('auth.logout') }}" class="list-group-item list-group-item-action p-3">
        <i class="fa fa-address-book" aria-hidden="true"></i> Đăng xuất
    </a>
</div>
