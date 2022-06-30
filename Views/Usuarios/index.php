<?php //print_r($usuarios); ?>
<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading">Administración de Usuarios

    <a href="javascript:void(0);" class="js-right-sidebar pull-right" data-close="true"><i class="material-icons">more_vert</i></a>
             
    </div>
    <!-- Table -->
    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Identificación</th>
                    <th>Usuario</th>
                    <th>Rol</th>
                    <th>Estado</th>
                    <th>Menu</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($usuarios as $key => $value) : ?>
                    <tr>
                        <td><?php echo  $value->nombres . ' ' . $value->apellidos ?></td>
                        <td><?php echo  $value->identificacion ?></td>
                        <td><?php echo  $value->username ?></td>
                        <td><?php echo  ucwords($value->rol) ?></td>
                        <td><?php echo  $value->estado == 1 ? 'Activo' : 'Inactivo' ?></td>
                        <td>
                            <a onclick="Clave('<?php echo $value->id ?>')" data-toggle="modal" href='#modal-id'><i class="glyphicon glyphicon-lock" title="Actualizar Clave"></i></a>
                            <a onclick="Editar('<?php echo $value->id ?>')" data-toggle="modal" href='#modal-id'><i class="glyphicon glyphicon-user" title="Actualizar Datos del Usuario"></i></a>
                            <!--<a onclick="Rol('<?php echo $value->id ?>')" data-toggle="modal" href='#modal-id'><i class="glyphicon glyphicon-flag"></i></a>
                            <a onclick="" data-toggle="modal" href='#modal-id'><i class="glyphicon glyphicon-edit"></i></a>-->
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>


<div class="modal fade" id="modal-id">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body" id="index">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>                
            </div>
        </div>
    </div>
</div>
<script>
    function Clave(id) {
       var val = id;
        $.ajax({
            type: "POST",
            url: '?c=usuarios&a=clave',
            data: 'id=' + val,
            success: function(resp) {
                $('#index').html(resp);
                $('#respuesta').html("");
            }
        });
    }
    function Editar(id) {
       var val = id;
        $.ajax({
            type: "POST",
            url: '?c=usuarios&a=editar',
            data: 'id=' + val,
            success: function(resp) {
                $('#index').html(resp);
                $('#respuesta').html("");
            }
        });
    }
</script>