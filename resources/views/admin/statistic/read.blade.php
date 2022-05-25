@extends("admin-layout.layout")

@section("pre-script")
<script src="{{ asset('js/chartjs.js') }}"></script>
@endsection

@section("header")
<div class="row">
    <div class="col-10">
        <h3>Số lượng đăng ký theo tháng {{ date("Y") }}</h3>
    </div>
</div>
@endsection

@section("main")
<div class="row">
    <canvas id="myChart" style="max-height: 500px;"></canvas>
</div>
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
  }

  const myChart = new Chart(
    document.getElementById('myChart'),
    config
  );
</script>
@endsection

@section("content-1")
    @include('admin.statistic.product-register')
@endsection

@section("content-2")
    @include('admin.statistic.monthly-income')
@endsection
