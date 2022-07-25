<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', {
        'packages': ['corechart']
    });
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Aplicacion', 'Resultado', 'Meta%', {
                role: 'style'
            }],
            <?php
            foreach ($datos as $tests) {

                echo "['" . $tests->fecha_aplicacion . "', " . $tests->resultado . ", " . $tests->valor . ",'color: RED'],";
            }
            ?>
        ]);
        var options = {
            'title': '',

            'vAxis': {
                title: 'Resultado',
                format: '#\'%\'',

            },
            'hAxis': {
                title: 'Fecha',
                titleTextStyle: {
                    color: 'red'
                }
            },
            'seriesType': 'bars',
            'series': {
                1: {
                    type: 'line'
                },
                colors: ['#e0440e', '#e6693e', '#ec8f6e', '#f3b49f', '#f6c7b6']
            }


        };

        var chart = new google.visualization.ComboChart(document.getElementById('columnchart'));
        chart.draw(data, options);
    }
</script>
<div class="row clearfix">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
        <div class="card">
            <div class="header">
                <div class="row clearfix">
                    <div class="col-xs-12 col-sm-12">
                        <h2>Datos del Indicador</h2>
                        <h2> <?php echo $indicador->nombre ?> </h2>
                    </div>                    
                  </div>
            </div>
            <div class="body">
                <div class="sgcDocumentos index">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover ">
                            <thead>
                                <tr>
                                    <th>Fuente del recurso</th>
                                    <th>Interpretación</th>
                                    <th>Periodicidad</th>
                                </tr>
                            <tbody>
                                </thead>
                                <?php
                                //debug($indicadors);

                                foreach ($indicador as $indicadors) : ?><?php endforeach; ?>
                                <tr>
                                    <td><?php echo $indicador->definicion ?></td>
                                    <td><?php echo $indicador->interpretacion ?>&nbsp;</td>
                                    <td><?php echo $indicador->periodicidad ?></td>                                    
                                </tr>
                            </tbody>
                        </table>
                        <div class="col-md-12 text-center" id="columnchart" style="width: 1080px; height: 300px;"></div>
                        <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Fecha Aplicación</th>
                                    <th>Datos</th>
                                    <th>Resultado</th>
                                    <th>Meta</th>
                                    <th>Menu</th>
                                </tr>
                            <tbody>
                                </thead>
                                <?php
                                // print_r($datos);
                                $i = 1;
                                foreach ($datos as $value) : ?>
                                    <tr>
                                        <td> <?php echo $i++; ?>&nbsp;</td>
                                        <td> <?php echo $value->fecha_aplicacion ?></td>
                                        <td> <?php echo str_replace(" ", "-", $value->expresion); ?>&nbsp;</td>
                                        <td> <?php echo number_format($value->resultado, 2) ?></td>
                                        <td> <?php echo $value->comparativo . '' . $value->valor ?></td>
                                        <td>
                                            <?php
                                            $meta = $value->resultado . '' . $value->comparativo . '' . $value->valor;
                                            if ($meta) : ?>
                                                <a href="<?php echo '?c=acciones&a=add&id=' . $value->id.'&ind_id='.$_REQUEST['indicador_id'] ?>"><i title="Plan de acción" class="glyphicon glyphicon-paperclip"></i></a>
                                            <?php else : ?>
                                                hola
                                            <?php endif; ?>
                                            <a href="<?php echo 'Datos/edit/' . $value->id ?>" type="button" title="Editar Dato">
                                                <i class="glyphicon glyphicon-edit"></i>
                                            </a>
                                            <?php
                                            //  echo $dir= $sgcManejoDocumental['Dato']['id'],$sgcManejoDocumental['Dato']['indicador_id'];
                                            // echo $this->Form->postLink($this->Html->tag('i', '', array('class' => 'glyphicon glyphicon-trash')), array('controller' => 'datos', 'action' => 'delete', $sgcManejoDocumental['Dato']['id'], $sgcManejoDocumental['Dato']['indicador_id']), array('escape' => false), __(' desea eliminar el dato, esta accion es irreversible# %s?', $sgcManejoDocumental['Dato']['id'])); 
                                            ?>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                       <?php if(!empty($acciones)):?>
                       <div class="col-md-12"><h2>Acciones</h2>
                        <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Analisis</th>
                                    <th>Accion</th>
                                    <th>Ejecución</th>                                    
                                </tr>
                            <tbody>
                                </thead>
                                <?php
                               //print_r($acciones);
                                $i = 1;
                                foreach ($acciones as $value) : ?>
                                    <tr>
                                        <td> <?php echo $i++; ?>&nbsp;</td>
                                        <td> <?php echo $value->analisis ?></td>
                                        <td> <?php echo $value->accion; ?>&nbsp;</td>
                                        <td> <?php echo $value->f_ejecucion ?></td>                                        
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                        </div> 
                        <?php endif; ?>
                                          </div>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- #END# CPU Usage -->