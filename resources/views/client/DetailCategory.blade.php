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
                            href="{{ route('client.category.getCategoryWId', ['category' => $category->id, 'type' => 'name', 'order' => 'asc']) }}"
                        >
                            A-Z
                        </a>
                    </li>
                    <li>
                        <a
                            class="dropdown-item"
                            href="{{ route('client.category.getCategoryWId', ['category' => $category->id, 'type' => 'name', 'order' => 'desc']) }}"
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
                            href="{{ route('client.category.getCategoryWId', ['category' => $category->id, 'type' => 'price', 'order' => 'asc']) }}"
                        >
                            Tăng dần
                        </a>
                    </li>
                    <li>
                        <a
                            class="dropdown-item"
                            href="{{ route('client.category.getCategoryWId', ['category' => $category->id, 'type' => 'price', 'order' => 'desc']) }}"
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
        @foreach ($products as $product)
            <a href="" class="mt-3 card p-0 course-item">
                <img src="{{ asset('upload/products/'.$product->photo) }}" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">{{ $product->name }}</h5>
                    <p class="card-text course-item-description">{{ $product->description }}</p>
                    <p class="mt-5 mb-0 card-text course-item-discount-price">
                        {{ number_format($product->price) }} VND
                    </p>
                    <p class="mt-0 card-text course-item-price">
                        {{ number_format($product->price * (100 - $product->discount) /100) }} VND
                    </p>
                </div>
            </a>
        @endforeach
    </div>

    <div class="row mt-5 mx-3 d-flex justify-content-between">
        <h2>Một số khóa học khác</h2>
        @foreach ($anotherCategory as $category)
            <a
                href="{{ route('client.category.getCategoryWId', ['category' => $category->id, 'type' => 'name', 'order' => 'asc']) }}"
                class="mt-3 card p-0 category-item"
            >
                <img src="{{ asset('upload/products/'.$product->photo) }}" class="card-img-top" style="border-bottom: 1px solid lightgray;" alt="...">
                <div class="card-body">
                    <h4 class="card-title text-center fw-normal">{{ $category->name }}</h4>
                </div>
            </a>
        @endforeach
    </div>
@endsection