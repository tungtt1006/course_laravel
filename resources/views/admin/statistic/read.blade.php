@extends("admin-layout.layout")

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Thống kê năm {{ date("Y") }}</h3>
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
