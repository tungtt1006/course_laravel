<div class="container shadow-sm p-0 mt-3">
    <div class="card">
        <div class="card-header text-white bg-info">
            <div class="row">
                <div class="col-10">
                    <h3>Doanh thu 2022</h3>
                </div>
            </div>
        </div>
        <div class="card-body p-0">
            <div class="d-flex">
                <div class ="w-50 text-center mt-3">
                    @foreach ($monthlyIncome as $item)
                        <p>Tháng {{ $item->month }}: <span class="fw-bolder">{{ number_format($item->income) }}</span></p>
                    @endforeach
                </div>
                <div class ="w-50 text-center mt-3">
                    <p class="fw-bolder">Tổng doanh thu đến tháng {{ date("m") }} năm {{ date("Y") }}: {{ number_format($annualIncome) }}</p>
                </div>
            </div>
            <p class="fw-bolder text-center text-danger">*Đơn vị được tính bằng VND*</p>
        </div>
    </div>
</div>
