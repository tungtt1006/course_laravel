<ul class="nav navbar-nav">
    <li class="{{ Route::currentRouteNamed('home') ? 'active' : '' }}">
        <a href="{{ route('home') }}"><i class="menu-icon fa fa-laptop"></i>Trang chủ </a>
    </li>
    <li class="{{ Route::currentRouteNamed('users.index') ? 'active' : '' }}">
        <a href="{{ route('users.index') }}">
            <i class="menu-icon fas fa-users"></i> Tài khoản 
        </a>
    </li>
    <li class="{{ Route::currentRouteNamed('category.index') ? 'active' : '' }}">
        <a href="{{ route('category.index') }}">
            <i class="menu-icon fas fa-book"></i></i> Danh mục 
        </a>
    </li>
    <li>
        <a href="">
        <i class="menu-icon fas fa-newspaper"></i> Tin tức
        </a>
    </li>
    <li>
        <a href="">
        <i class="menu-icon fas fa-tags"></i> Giảm gía 
        </a>
    </li>
    <li>
        <a href="">
        <i class="menu-icon fas fa-images"></i> Banners
        </a>
    </li>
    <li>
        <a href="">
        <i class="menu-icon fas fa-chart-bar"></i> Orders  
        </a>
    </li>
    <li>
        <a href="">
        <i class="menu-icon fas fa-users"></i> Customers  
        </a>
    </li>
</ul>