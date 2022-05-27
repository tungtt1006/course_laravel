<div style="position:fixed; top: 0; left: 0; border-right: 1px solid rgba(0,0,0,.125);" class="bg-body h-100 w-25 shadow-sm">
    <h1 class="text-white m-0 p-2 bg-success">XT Admin</h1>
    <div class="mt-4 text-center">
        <img
            class="shadow-sm rounded-circle"
            width="100px"
            height="100px"
            src="{{ asset('storage/img/avatar' . Auth::user()->photo) }}"
            alt="Avatar"
        >
        <h5 class="mt-1">{{ Auth::user()->name }}</h5>
        <h6 class="text-secondary">{{ Auth::user()->email }}</h6>
    </div>
    @php
        $currentRoute = '';
        if (Route::currentRouteNamed('statistics.index'))
            $currentRoute = 'statistics';
        elseif (Route::currentRouteNamed('users.index', 'users.create', 'users.edit'))
            $currentRoute = 'users';
        elseif (Route::currentRouteNamed(
            'category.index',
            'category.create',
            'category.edit',
            'categories.products.index',
            'categories.products.index'
        ))
            $currentRoute = 'categories';
        elseif (Route::currentRouteNamed(
            'classes.index',
            'classes.create',
            'classes.edit',
            'classes.periods.create'
        ))
            $currentRoute = 'classes';
        elseif (Route::currentRouteNamed('orders.index', 'orders.create', 'orders.edit'))
            $currentRoute = 'orders';
        elseif (Route::currentRouteNamed('teachers.index', 'teachers.create', 'teachers.edit'))
            $currentRoute = 'teachers';
    @endphp
    <div class="list-group rounded-0 mt-4">
        <a
            href="{{ route('statistics.index') }}"
            class="list-group-item list-group-item-action p-3 {{ ($currentRoute === 'statistics') ? 'active' : '' }}"
            aria-current="true"
        >
            <i class="fa fa-bar-chart {{ ($currentRoute === 'statistics') ? 'text-white' : 'text-success' }}" aria-hidden="true"></i> Thống kê
        </a>

        <a
            href="{{ route('users.index') }}"
            class="list-group-item list-group-item-action p-3 {{ ($currentRoute === 'users') ? 'active' : '' }}"
        >
            <i class="fa fa-user {{ ($currentRoute === 'users') ? 'text-white' : 'text-success' }}" aria-hidden="true"></i> Tài khoản
        </a>

        <a
            href="{{ route('category.index') }}"
            class="list-group-item list-group-item-action p-3 {{ ($currentRoute === 'categories') ? 'active' : '' }}"
        >
            <i class="fa fa-th-list {{ ($currentRoute === 'categories') ? 'text-white' : 'text-success' }}" aria-hidden="true"></i> Danh mục
        </a>
        <a
            href="{{ route('classes.index') }}"
            class="list-group-item list-group-item-action p-3 {{ ($currentRoute === 'classes') ? 'active' : '' }}"
        >
            <i class="fa fa-book {{ ($currentRoute === 'classes') ? 'text-white' : 'text-success' }}" aria-hidden="true"></i> Lớp học
        </a>
        <a
            href="{{ route('orders.index') }}"
            class="list-group-item list-group-item-action p-3 {{ ($currentRoute === 'orders') ? 'active' : '' }}"
        >
            <i class="fa fa-money {{ ($currentRoute === 'orders') ? 'text-white' : 'text-success' }}" aria-hidden="true"></i> Hóa đơn
        </a>
        <a
            href="{{ route('teachers.index') }}"
            class="list-group-item list-group-item-action p-3 {{ ($currentRoute === 'teachers') ? 'active' : '' }}"
        >
            <i class="fa fa-user-secret {{ ($currentRoute === 'teachers') ? 'text-white' : 'text-success' }}" aria-hidden="true"></i> Giáo viên
        </a>
        <a href="{{ route('auth.logout') }}" class="list-group-item list-group-item-action p-3">
            <i class="fa fa-sign-out text-success" aria-hidden="true"></i> Đăng xuất
        </a>
    </div>
</div>
