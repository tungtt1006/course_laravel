@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Thống kê lượng học viên đăng ký {{ date("Y") }}</h3>
    </div>
</div>
@endsection

@section("main")
<div class="row">
    <canvas id="myChart" style="height: 500px;"></canvas>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
  const labels = [
    'Tháng 1',
    'Tháng 2',
    'Tháng 3',
    'Tháng 4',
    'Tháng 5',
    'Tháng 6',
    'Tháng 7',
    'Tháng 8',
    'Tháng 9',
    'Tháng 10',
    'Tháng 11',
    'Tháng 12'
  ];

  const data = {
    labels: labels,
    datasets: [{
      label: 'Số học viên đăng ký',
      backgroundColor: 'rgb(255, 99, 132)',
      borderColor: 'rgb(255, 99, 132)',
      data: @json($number),
    }]
  };

  const config = {
    type: 'line',
    data: data,
    options: {}
  };

  const myChart = new Chart(
    document.getElementById('myChart'),
    config
  );
</script>
@endsection

@section("content-1")
<div class="container shadow-sm p-0 mt-3">
    <div class="card">
        <div class="card-header text-white bg-info">
            <div class="row">
                <div class="col-10">
                    <h3>Thống kê doanh thu năm 2022</h3>
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
@endsection
