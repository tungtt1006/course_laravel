@extends("felayouts.layout")

@section("css")
    <link rel="stylesheet" href="{{ asset('client/assets/css/category.css') }}">
@endsection

@section("main")
    <h1 class="text-center pt-3">{{ $category->name }}</h1>

    <div class="mt-3 mx-1 p-2 row filter-row">
        <div class="col-md-2">
            <div class="dropdown">
                <a class="btn btn-outline-success dropdown-toggle px-5" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                    Tên
                </a>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <li>
                        <a
                            class="dropdown-item"
                            href="{{ route('category.getCategoryWId', ['category' => $category->id, 'type' => 'name', 'order' => 'asc']) }}"
                        >
                            A-Z
                        </a>
                    </li>
                    <li>
                        <a
                            class="dropdown-item"
                            href="{{ route('category.getCategoryWId', ['category' => $category->id, 'type' => 'name', 'order' => 'desc']) }}"
                        >
                            Z-A
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-2">
            <div class="dropdown">
                <a class="btn btn-outline-success dropdown-toggle px-5" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                    Giá
                </a>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <li>
                        <a
                            class="dropdown-item"
                            href="{{ route('category.getCategoryWId', ['category' => $category->id, 'type' => 'price', 'order' => 'asc']) }}"
                        >
                            Tăng dần
                        </a>
                    </li>
                    <li>
                        <a
                            class="dropdown-item"
                            href="{{ route('category.getCategoryWId', ['category' => $category->id, 'type' => 'price', 'order' => 'desc']) }}"
                        >
                            Giảm dần
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-6"></div>
        <div class="col-md-2 mt-1">
            <nav aria-label="Page navigation example">
                <ul class="pagination m-0 pagination-sm">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
            </nav>
        </div>
    </div>

    <div class="row mt-4 mx-3 d-flex justify-content-between">
        @foreach ($products as $highlightCourse)
            <a href="" class="mt-3 card p-0 course-item">
                <img src="{{ asset('upload/products/'.$highlightCourse->photo) }}" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">{{ $highlightCourse->name }}</h5>
                    <p class="card-text course-item-description">{{ $highlightCourse->description }}</p>
                    <p class="mt-5 mb-0 card-text course-item-discount-price">
                        {{ number_format($highlightCourse->price) }} VND
                    </p>
                    <p class="mt-0 card-text course-item-price">
                        {{ number_format($highlightCourse->price * (100 - $highlightCourse->discount) /100) }} VND
                    </p>
                </div>
            </a>
        @endforeach
    </div>
@endsection