<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
<div class="row">
    <div class="col-md-12">
        <div class="col-md-4">
            <div class="panel panel-info">
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


    <!-- grafico 1 -->
    <script>
        const DATA_COUNT = 7;
        const NUMBER_CFG = {
            count: DATA_COUNT,
            min: -100,
            max: 100
        };
        const labels = ['marzo', 'abril', 'mayo', 'junio', 'julio', 'agosto', 'septiembre'];
        const dato = {
            labels: labels,
            datasets: [{
                    label: 'Documentos',
                    //   data: Utils.numbers(NUMBER_CFG),
                    data: [5, 2, 13, 4, 15, 6, 7],
                    borderColor: 'orange',
                    backgroundColor: 'orange',
                    yAxisID: 'y',
                },
                {
                    label: 'Formatos',
                    //   data: Utils.numbers(NUMBER_CFG),
                    data: [0, 12, 15, 0, 1, 5, 1],
                    borderColor: 'rgba(255, 99, 132, 1)',
                    backgroundColor: 'rgba(255, 99, 132, 1)',
                    yAxisID: 'y',
                },
                {
                    label: 'Documentos Externos',
                    //   data: Utils.numbers(NUMBER_CFG),
                    data: [5, 2, 3, 0, 0, 0, 1],
                    borderColor: 'blue',
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
                        text: 'Solicitudes aprobadas por mes maqueta'
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
                        // grid: {
                        //     drawOnChartArea: false, // only want the grid lines for one axis to show up
                        // },
                    },
                }
            },
        });
    </script>
    <!-- fin grafico 1 -->

    <!-- grafico 2 -->
    <script>
        // Change default options for ALL charts
        // Chart.defaults.set('plugins.datalabels', {
        //     color: '#FE777B'
        // });
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
                // datalabels: {

                //     color: 'blue',
                // }
            }]
        };
        const myVar1 = document.getElementById('pie');
        const myChart4 = new Chart(myVar1, {
            type: 'pie',
            data: data01,
            options: {

                responsive: true,
                plugins: {
                    // datalabels: {

                    //     color: 'blue',
                    // },
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Actualizaciones de informacion documentada '
                    }
                }
            },
            // plugins:[ChartDatalabels],

        });
    </script>
    <!-- fin grafico 2 -->

    <!-- grafico 3 -->
    <script>
        const DATAC = 7;
        const NUMBERC = {
            count: DATAC,
            min: -100,
            max: 100
        };
        const labelsS = ['enero', 'enero', 'enero', 'enero', 'enero', 'enero', 'enero'];
        const dat = {
            labels: labelsS,
            datasets: [{
                    label: 'Dataset 1',
                    //   data: Utils.numbers(NUMBER_CFG),
                    data: [1, 2, 13, 4, 15, 66, 7],
                    borderColor: 'orange',
                    backgroundColor: 'yellow',
                    yAxisID: 'y',
                },
                {
                    label: 'Dataset 2',
                    //   data: Utils.numbers(NUMBER_CFG),
                    data: [110, 120, 130, 100, -50, 160, 1],
                    borderColor: 'rgba(255, 99, 132, 1)',
                    backgroundColor: '255, 99, 132, 0.2',
                    yAxisID: 'y',
                }
            ]
        };
        const myVarI = document.getElementById('myChart');
        const myChartT = new Chart(myVarI, {
            type: 'line',
            data: dat,
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
                        text: 'Chart.js Line Chart - Multi Axis'
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
    <!-- fin grafico 3 -->


    <!-- grafico 3 barras -->
    <!-- <script>
        const ctx = document.getElementById('myChart').getContext('2d');
        const myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
                datasets: [{
                    label: '# of Votes',
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
    </script> -->
    <!-- fin grafico 3 -->