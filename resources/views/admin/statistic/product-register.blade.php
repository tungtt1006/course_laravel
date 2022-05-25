<div class="container shadow-sm p-0 mt-3">
    <div class="card">
        <div class="card-header text-white bg-warning">
            <div class="row">
                <div class="col-10">
                    <h3>Số lượng đăng ký theo khóa 2022</h3>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="row">
                <canvas id="myChart1" style="max-height: 300px;"></canvas>
            </div>
        </div>
    </div>
</div>
@php
@endphp
<script>
    const data1 = {
        labels: @json($productRegisters['name']),
        datasets: [{
            label: 'My First Dataset',
            data: @json($productRegisters['total']),
            backgroundColor: @json($productRegisters['color']),
            hoverOffset: 4
        }]
    };
    const config1 = {
        type: 'doughnut',
        data: data1,
    };
    const myChart1 = new Chart(
        document.getElementById('myChart1'),
        config1
    );
</script>
