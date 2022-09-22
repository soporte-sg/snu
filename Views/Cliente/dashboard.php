<?php

//print_r($solbymes);
foreach($solbymes as $value){
 
   $tipos[]= $value['tipo'];
   $EjecucionCambio[]= $value['EjecucionCambio'];
   $total[]= $value['total'];
  
}
echo json_encode($tipos);
echo json_encode($EjecucionCambio);
echo json_encode($total);


?>

<style>
    .contenedor {
        width: 80%;
        height: auto;
        align-content: center;
    }

    /*Aplicamos la propiedad object-fit cover, ajustar su tamaño y no perder la proporcion de nuestra imagen*/
    .img0 {
        object-fit: cover;
        width: 100%;
        height: 100%;
    }
</style>
<div class="body">
    <!-- Widgets -->
    <div class="row clearfix">
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="info-box bg-pink hover-expand-effect">
                <div class="icon">
                    <i class="material-icons">playlist_add_check</i>
                </div>
                <div class="content">
                    <div class="text">TOTALES</div>
                    <div class="number " data-from="0" data-to="<?php echo $solicitudes->total ?>" data-speed="1000" data-fresh-interval="20">
                        <?php echo $solicitudes->total ?> </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="info-box bg-cyan hover-expand-effect">
                <div class="icon">
                    <i class="material-icons">help</i>
                </div>
                <div class="content">
                    <div class="text">SIN TRATAR</div>
                    <div class="number " data-from="0" data-to="<?php echo $vacias->total ?>" data-speed="1000" data-fresh-interval="20">
                        <?php echo $vacias->total ?></div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="info-box bg-light-green hover-expand-effect">
                <div class="icon">
                    <i class="material-icons">forum</i>
                </div>
                <div class="content">
                    <div class="text">APROBADAS</div>
                    <div class="number count-to" data-from="0" data-to="<?php echo $si->total ?>" data-speed="1000" data-fresh-interval="20">
                        <?php echo $si->total ?></div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="info-box bg-orange hover-expand-effect">
                <div class="icon">
                    <i class="material-icons">block</i>
                </div>
                <div class="content">
                    <div class="text">RECHAZADAS</div>
                    <div class="number count-to" data-from="0" data-to="<?php echo $rev->total ?>" data-speed="1000" data-fresh-interval="20">
                        <?php echo $rev->total ?></div>
                </div>
            </div>
        </div>
        <!-- #END# Widgets -->
        <!-- <div class="col-md-12 text-center">
            <div class="col-md-12 col-md-offset-1 contenedor">
                <img src="Assets/img/snu.png" class="img-responsive img0" alt="Image">
            </div>
        </div> -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
<div class="row">
    <div class="col-md-12">
        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-body">
                    <canvas id="myChart" width="400" height="400"></canvas>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-body">
                    <canvas id="pie" width="400" height="400"></canvas>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-body">
                    <canvas id="myChart3" width="400" height="400"></canvas>
                </div>
            </div>
        </div>
    </div>

    <script>
        const ctx = document.getElementById('myChart').getContext('2d');
        const myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
                datasets: [{
                    label: '----grafico 1----',
                    data: [12, 19, 3, 5, 2, 3],
                    backgroundColor: [
                        'rgba(255, 99, 132,1 )',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255,1)',
                        'rgba(255, 159, 64, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
    <script>
        // const DATA_COUNT = 7;
        // const NUMBER_CFG = {
        //     count: DATA_COUNT,
        //     min: -100,
        //     max: 100
        // };
        
        const labels = <?php echo json_encode($tipos)?>;
        const total = <?php echo json_encode($total)?>;
        const ejecucion = <?php echo json_encode($EjecucionCambio)?>;
        const dato = {
            labels: ejecucion,
            datasets: [{
                    label: 'Tipo',
                    //   data: Utils.numbers(NUMBER_CFG),
                    data: [{x:ejecucion, y:total}, {x:'2016-12-26', y:10}],
                    borderColor: 'orange',
                    backgroundColor: 'yellow',
                    yAxisID: 'y',
                },
                {
                    label: 'Ejecucion del cambio',
                    //   data: Utils.numbers(NUMBER_CFG),
                    //data: total,
                    data: [55,90,3],
                    borderColor: 'rgba(255, 99, 132, 1)',
                    backgroundColor: '255, 99, 132, 0.2',
                   yAxisID: 'y',
                }
            ]
        };

        const myVar = document.getElementById('myChart3');
        const myChart3 = new Chart(myVar, {
            type: 'line',
            data: dato,
            options: {
                responsive: true,
                interaction: {
                    mode: 'index',
                    intersect: false,
                },
                stacked: false,
                plugins: {
                    title: {
                        display: true,
                        text: 'Solicitudes aprobadas por mes'
                    }
                },
                scales: {
                    y: {
                        type: 'linear',
                        display: true,
                        position: 'left',
                    },
                    y1: {
                        type: 'linear',
                        display: true,
                        position: 'right',
                        // grid line settings
                        grid: {
                            drawOnChartArea: false, // only want the grid lines for one axis to show up
                        },
                    },
                }
            },
        });
    </script>
    <script>
        const DATA_COUNT1 = 5;
        const NUMBER_CFG1 = {
            count: DATA_COUNT1,
            min: 0,
            max: 100
        };

        const data01 = {
            labels: ['Red', 'Orange', 'Yellow', 'Green', 'Blue'],
            datasets: [{
                label: 'Dataset 1',
                data: [1, 2, 13, 4, 15],
                backgroundColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)'
                        
                    ],
            }]
        };
        const myVar1 = document.getElementById('pie');
        const myChart4 = new Chart(myVar1, {
            type: 'pie',
            data: data01,
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Chart.js Pie Chart'
                    }
                }
            },
        });
    </script>
    </div>
</div>
</div>
<!-- #END# CPU Usage -->