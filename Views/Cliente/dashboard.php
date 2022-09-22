<?php

// print_r($no);
foreach ($solbymesdoc as $value) {
    $tipos[] = $value['TipoDocumento'];
    $EjecucionCambio[] = $value['EjecucionCambio'];
    $total[] = $value['total'];
}
//print_r($solbymesform);
foreach ($solbymesform as $value0) {
    // $tipos[] = $value0['TipoDocumento'];
    $EjecucionCambioForm[] = $value0['EjecucionCambio'];
    $totalForm[] = $value0['total'];
}
print_r($solbymesext);
foreach ($solbymesext as $value01) {
    // $tipos[] = $value0['TipoDocumento'];
    $EjecucionCambioExt[] = $value01['EjecucionCambio'];
    $totalExt[] = $value01['total'];
}
// print_r($solbymesprocesos);
foreach ($solbymesprocesos as $value02) {
    // $tipos[] = $value2['TipoDocumento'];
    $proceso[] = $value02['Proceso'];
    $totalPro[] = $value02['total'];
}
//echo json_encode($solbymesprocesos);

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

    .panel {
        background-color: rgb(210 207 207 / 16%);
        box-shadow: 1px;

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
                        <?php echo ($vacias->total)+($rev->total) ?></div>
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
                        <?php echo $no->total ?></div>
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
                <div class="col-md-4 ">
                    <div class=" panel panel-info bg_red ">
                        <div class="panel-body">
                            <canvas id="myChart3" width="400" height="400"></canvas>
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
                            <canvas id="myChart" width="400" height="400"></canvas>
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
                                'rgba(53, 162, 235, 1)',
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
                //datos de los Documentos           
                const valuesDoc = <?php echo json_encode($total) ?>;
                const keysDoc = <?php echo json_encode($EjecucionCambio) ?>;
                var docs = {};
                // Loop to insert key & value in this object one by one
                for (var i = 0; i < keysDoc.length; i++) {
                    docs[keysDoc[i]] = valuesDoc[i];
                }
                //datos de los Formatos           
                const valuesForm = <?php echo json_encode($totalForm) ?>;
                const keysForm = <?php echo json_encode($EjecucionCambioForm) ?>;
                var forms = {};
                // Loop to insert key & value in this object one by one
                for (var i = 0; i < keysForm.length; i++) {
                    forms[keysForm[i]] = valuesForm[i];
                }
                // console.log(forms)
                //datos de los Externos    
                     
                const valuesExt = <?php echo !empty($totalExt) ?  json_encode($totalExt) : [0,0,0,0] ;  ?>;
                const keysExt = <?php echo json_encode($EjecucionCambioExt) ?>;
                var exts = {};
                // Loop to insert key & value in this object one by one
                for (var i = 0; i < keysExt.length; i++) {
                    exts[keysExt[i]] = valuesExt[i];
                }



                const dato = {
                    // labels: labels,
                    datasets: [{

                            //   data: Utils.numbers(NUMBER_CFG),
                            // data: [{x:'2016-12-25', y:20}, {x:'2016-12-26', y:10}],
                            data: docs,
                            borderColor: 'orange',
                            backgroundColor: 'yellow',
                            yAxisID: 'y',
                            label: 'Documentos',
                        },
                        {
                            label: 'Formatos',
                            //data: Utils.numbers(NUMBER_CFG),
                            //data: total,
                            data: forms,
                            borderColor: 'rgba(255, 99, 132, 1)',
                            backgroundColor: '255, 99, 132, 0.2',
                            yAxisID: 'y',
                        },
                        {
                            label: 'Externos',
                            //data: Utils.numbers(NUMBER_CFG),
                            //data: total,
                            data: exts,
                            borderColor: 'purple',
                            backgroundColor: 'blue',
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
                                display: false,
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
                // const DATA_COUNT1 = 5;
                // const NUMBER_CFG1 = {
                //     count: DATA_COUNT1,
                //     min: 0,
                //     max: 100
                // };
                const proceso = <?php echo json_encode($proceso) ?>;
                const totalpro = <?php echo json_encode($totalPro) ?>;                
                const data01 = {
                    labels: proceso,
                    datasets: [{
                        label: 'Dataset 1',
                        data: totalpro,
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
                                text: 'Actualizaciones de informacion documentada '
                            }
                        }
                    },
                });
            </script>
        </div>
    </div>
</div>
<!-- #END# CPU Usage -->