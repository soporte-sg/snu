<a href='?c=solicitudes&a=add' class="neu">Registrar Solicitud</a>
<div class="card">
    <div class="header text-center">
        <h2>LISTADO DE SOLICITUDES PARA EL CONTROL DE CAMBIOS</h2>
    </div>
    <div class="body">
        <div class="sgcDocumentos index">
            <div class="table-responsive">
                <table id="table" class="table table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Tipo Documento</th>
                            <th>Solicitante</th>
                            <th>Fecha Solicitud</th>
                            <th>Proceso</th>
                            <th>Tipo Solicitud</th>
                            <th>Codigo</th>
                            <th>Estado</th>
                            <th>Menu</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($solicitudes as $sgcManejoDocumental) : ?>
                            <tr>
                                <td><?php echo ($sgcManejoDocumental->id); ?>&nbsp;</td>
                                <td> <a href="<?php echo  $sgcManejoDocumental->dir . $sgcManejoDocumental->filename ?>" target="_blank"><?php echo ucwords($sgcManejoDocumental->TipoDocumento); ?></a>&nbsp;</td>
                                <td><?php echo ($sgcManejoDocumental->NombreSolicitante); ?>&nbsp;</td>
                                <td><?php echo ($sgcManejoDocumental->FechaSolicitud); ?>&nbsp;</td>
                                <td><?php echo ($sgcManejoDocumental->Proceso); ?>&nbsp;</td>
                                <td><?php echo ucwords($sgcManejoDocumental->TipoSolicitud); ?>&nbsp;</td>
                                <td><?php echo ($sgcManejoDocumental->Codigo); ?>&nbsp;</td>
                                <td>
                                    <?php
                                    if ($sgcManejoDocumental->Aprobado == 'si') {
                                        echo '<i class="material-icons" title="solicitud aprobada">verified_user</i>';
                                    }
                                    if ($sgcManejoDocumental->Aprobado == 'no') {
                                        echo '<i  class="material-icons" title=" solicitud Recazado">igligt_off</i>';
                                    }
                                    if (empty($sgcManejoDocumental->Aprobado)) {
                                        echo '<i class="material-icons" title=" solicitud en espera de respuesta">feedback</i>';
                                    }
                                    ?>
                                </td>
                                <td class="actions">
                                    <?php
                                    if ($sgcManejoDocumental->Aprobado == 'si') : ?>
                                 
                                 <a onclick="Ver('<?php echo $sgcManejoDocumental->id ?>')" data-toggle="modal" href='#modal-id' type="button" title="Ver datos de la Solicitud">
                                            <i class="material-icons">visibility</i>
                                        </a>
                                        <?php if ($_SESSION['user']->rol_id == 4 or $_SESSION['user']->rol_id == 1) : ?>
                                            <a href="?c=solicitudes&a=edit&id=<?php echo $sgcManejoDocumental->id ?>" type="button" title="Actualizar datos de la Solicitud">
                                                <i class="material-icons">system_update</i>
                                            </a>
                                        <?php endif; ?>

                                    <?php else : ?>
                                        <?php if ($_SESSION['user']->rol_id == 4 or $_SESSION['user']->rol_id == 1) : ?>
                                            <a href="?c=solicitudes&a=responder&id=<?php echo $sgcManejoDocumental->id ?>" type="button" title="Responder Solicitud">
                                                <i class="material-icons"> library_add</i>
                                            </a>
                                        <?php endif; ?>
                                        <a href="?c=solicitudes&a=ver&id=<?php echo $sgcManejoDocumental->id ?>" type="button" title="Ver datos de la Solicitud">
                                            <i class="material-icons">visibility</i>
                                        </a>
                                        <?php if ($_SESSION['user']->rol_id == 4 or $_SESSION['user']->rol_id == 1) : ?>
                                            <a href="?c=solicitudes&a=edit&id=<?php echo $sgcManejoDocumental->id ?>" type="button" title="Actualizar datos de la Solicitud">
                                                <i class="material-icons">system_update</i>
                                            </a>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</div>


<!-- #END# CPU Usage -->

<div class="modal fade" id="modal-id">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body" id="index">

            </div>
        </div>
    </div>
</div>
<script>
    function Ver(id) {
        $.ajax({
            type: "POST",
            url: '?c=solicitudes&a=View',
            data: 'id=' + id,
            beforeSend: function() {
                $('#index').html("<h5 class='text-center'> <img src='View/img/gifs/cargando-loading-009.gif'> Cargando Información</h5>");
            },
            success: function(resp) {
                $('#index').html(resp);
                $('#respuesta').html("");
            }
        });
    }

    function Editar(id) {
        $.ajax({
            type: "POST",
            url: '?c=permisos&a=edit',
            data: 'id=' + id,
            beforeSend: function() {
                $('#index').html("<h5 class='text-center'> <img src='View/img/gifs/cargando-loading-009.gif'> Cargando Información</h5>");
            },
            success: function(resp) {
                $('#index').html(resp);
                $('#respuesta').html("");
            }
        });
    }
</script>