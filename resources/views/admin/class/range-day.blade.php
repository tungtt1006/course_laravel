<div class="container shadow-sm p-0 mt-3">
    <div class="card">
        <div class="card-header text-white bg-primary">
            <div class="row">
                <div class="col-10">
                    <h3>Khoảng thời gian</h3>
                </div>
            </div>
        </div>
        <div class="card-body">
            <form method="get" action="{{ route('classes.index', $queryString) }}">
                @csrf
                <div class="row">
                    <div class="col-2 fw-bolder">Từ ngày</div>
                    <div class="col-3 pl-0">
                        <input type="date" name="from" value="{{ $queryString['from'] }}" class="form-control" required>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-2 fw-bolder">Tới ngày</div>
                    <div class="col-3 pl-0">
                        <input type="date" name="to" value="{{ $queryString['to'] }}" class="form-control" required>
                    </div>
                </div>

                <div class="row mt-2">
                    <div class="col-10"></div>
                    <div class="col-2 p-0">
                        <a type="button" class="btn btn-warning mr-3"href="{{ route('classes.index') }}">
                            Xóa
                        </a>
                        <input type="submit" value="Tìm kiếm" class="btn btn-primary">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
