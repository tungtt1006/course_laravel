@extends("client-layout.layout")

@section("main")
    <!-- Banner List -->
    <div
        class="row pt-4 banner-list"
    >
        <div id="carouselExampleControls" class="carousel slide border p-0" data-bs-ride="carousel">
            <div class="carousel-inner">
                @foreach ($banners as $key => $banner)
                <div
                    class="carousel-item {{ $key == 0 ? 'active' : '' }}"
                >
                    <img
                        src="{{ asset('upload/banners/'.$banner->photo) }}"
                        style="height: 420px;"
                        class="d-block w-100"
                        alt="Lỗi ảnh banner"
                    >
                </div>
                @endforeach
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- Highlight Course -->
    <div class="row mt-4">
        <h1 class="fw-normal">Khóa học nổi bật</h1>
        @foreach ($highlightCourses as $highlightCourse)
            <div class="col-3">
                <a href="{{ route('client.product.show', $highlightCourse->id) }}" class="card w-90 text-black text-decoration-none shadow-sm">
                    <img src="{{ asset('upload/products/python-course.jpg') }}" class="card-img-top border-bottom" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">{{ $highlightCourse->name }}</h5>
                        <p class="card-text course-item-description">{{ $highlightCourse->description }}</p>
                        <p class="mt-5 mb-0 text-decoration-line-through text-muted">
                            {{ number_format($highlightCourse->price) }} VND
                        </p>
                        <p class="mt-0 fs-5 fw-bolder">
                            {{ number_format($highlightCourse->price * (100 - $highlightCourse->discount) /100) }} VND
                        </p>
                    </div>
                </a>
           </div>
        @endforeach
    </div>

    <!-- Newest Course -->
    <div class="row mt-5">
        <h1 class="fw-normal">Khóa học Mới nhất</h1>
        @foreach ($newestCourses as $newestCourse)
            <div class="col-3">
                <a href="{{ route('client.product.show', $newestCourse->id) }}" class="card w-90 text-black text-decoration-none shadow-sm">
                    <img src="{{ asset('upload/products/python-course.jpg') }}" class="card-img-top border-bottom" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">{{ $newestCourse->name }}</h5>
                        <p class="card-text course-item-description">{{ $newestCourse->description }}</p>
                        <p class="mt-5 mb-0 text-decoration-line-through text-muted">
                            {{ number_format($newestCourse->price) }} VND
                        </p>
                        <p class="mt-0 fs-5 fw-bolder">
                            {{ number_format($newestCourse->price * (100 - $newestCourse->discount) /100) }} VND
                        </p>
                    </div>
                </a>
            </div>
        @endforeach
    </div>

    <!-- Highlight News -->
    <div class="row mt-5">
        @foreach ($highlightNews as $highlightNew)
        <div class="col-md-11">
            <a href="" class="card mb-3 p-0 shadow-sm">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img
                            src="{{ asset('upload/news/'.$highlightNew->photo) }}"
                            class="img-fluid rounded-start"
                            width="400px"
                            height="300px"
                        >
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                        <h5 class="card-title">{{ $highlightNew->name }}</h5>
                        <p class="card-text custom__description">{{ $highlightNew->description }}</p>
                        <p class="card-text"><small class="text-muted">{{ $highlightNew->created_at }}</small></p>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        @endforeach
    </div>
@endsection