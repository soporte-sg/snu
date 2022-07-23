<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Resultado de consulta</h3>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <table cellpadding="0" cellspacing="0" class="table table-bordered table-hover">
                <tr class="active">
                    <th class='text-center'> No</th>
                    <th class='text-center'> proceso</th>
                    <th class='text-center'> Clasificación</th>
                    <th class='text-center'> Tipo </th>
                    <th class='text-center'> Fecha Registro</th>
                    <th class='text-center'> Registrado por</th>
                    <th class='text-center'> Lugar</th>
                    <th class='text-center'> Descripción</th>
                    <th class='text-center'> estado</th>
                    <th class="actions">Menu</th>
                </tr>
                <?php

                foreach ($autoreportes as $trabajadoresAsociado) :
                ?>

                    <tr>
                        <td class='text-center'><?php echo $trabajadoresAsociado->id1 ?>&nbsp;</td>
                        <td class='text-center'><?php echo $trabajadoresAsociado->proceso ?>&nbsp;</td>
                        <td class='text-center'><?php echo $trabajadoresAsociado->clasificacionIncidente; ?>&nbsp;</td>
                        <td class='text-justify' style='width: 200px;'><?php echo $trabajadoresAsociado->tipoIncidente; ?>&nbsp;</td>
                        <td class='text-center'><?php echo $trabajadoresAsociado->fechaRegistro ?>&nbsp;</td>
                        <td class='text-center'><?php echo $trabajadoresAsociado->user ?>&nbsp;</td>
                        <td class='text-center'> <?php echo $trabajadoresAsociado->lugarEvento; ?>&nbsp;</td>
                        <td class='text-justify'><?php echo $trabajadoresAsociado->descEvento; ?>&nbsp;</td>
                        <td class='text-center'><?php echo $trabajadoresAsociado->estado; ?>&nbsp;</td>

                        <td class="actions">
                            
                                <?php                                
                            if ($trabajadoresAsociado->estado == 'En Tramite' or $trabajadoresAsociado->estado == 'Rechazado') : ?>
                            <button type="button"  onclick="Ver('<?=$trabajadoresAsociado->id1?>')"  class=""> <i class="glyphicon glyphicon-edit"></i><strong></button>
                        

                              <!--<a   data-toggle="modal" data-target="#modelId"><i class="glyphicon glyphicon-edit"></i></a>
                              <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalResponder">Editar</button>
                              <a class="btn btn-primary" data-toggle="modal" href="#modal-id">Trigger modal</a>
                              <button data-toggle="modal" href='#modal-id'>
                              <i class="glyphicon glyphicon-share mysize" title="RESPUESTA" data-toggle="popover" data-trigger="hover" data-placement="left" data-content="Al dar clic puede registrar las Caracteristicas del Incidente y al terminar este proceso el incidente cambiara su estado a revisión."></i>
                              </button>
                              <a href="tb_proceso_noconformes/editar/<?php echo $trabajadoresAsociado->id ?>">
                              <i class="glyphicon glyphicon-edit mysize" title="EDITAR" data-toggle="popover" data-trigger="hover" data-placement="left" data-content="Al dar clic puede cambiar los item que se registraron al crear el inciente(Proceso, clasificación del Incidente, Tipo De Incidente, Descripción del Evento. este proceso solo esta habilitado cuando el incidente este en tramite)."></i>
                              </a>-->  

                            <?php endif; ?>
                            <?php
                            if ($trabajadoresAsociado->estado == 'Revisión') : ?>
                               <button type="button"  onclick="Ver('<?=$trabajadoresAsociado->id1?>')"  class=""> <i class="glyphicon glyphicon-edit"></i><strong></button>
                 
                            <?php endif; ?>

                            <?php if ($trabajadoresAsociado->estado == 'Aprobacion') : ?>
                                <button type="button"  onclick="Ver('<?=$trabajadoresAsociado->id1?>')"  class=""> <i class="glyphicon glyphicon-edit"></i><strong></button>
                        
                            <?php endif; ?>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </table>
            </p>
        </div>
    </div>
</div>

<script>  
$('#editar').on('click', function() {
        var autorep = document.getElementById("editar").value
        $.ajax({
            type: "POST",
            url: '?c=autoreportes&a=Responder',
            data: {
                autorep: autorep,
            },
            beforeSend: function() {
                $('#resultado').html("<h5 class='text-center'>  Cargando Información</h5>");
            },
            success: function(resp) {
                $('#resultado').html(resp);
                $('#respuesta').html("");
            }
        });
    });    
</script>