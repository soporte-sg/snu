<div class="panel" id="resultado">
    <!-- Default panel contents -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-10"></div>
            <div class="col-md-2">
                <button onclick="Registrar()" data-toggle="modal" href='#modal-id' class="neu pull-right"><i class="glyphicon glyphicon-plus"></i> Crear Usuario</button>
            </div>
        </div>
    </div>
    <?php /*echo'<pre>';
     print_r($usuarios);
     echo'</pre>'*/?>
    <div class="panel-body">
        <!-- Table -->
        <table class="table table-bordered " id="example1">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Identificación</th>
                    <th>Correo</th>
                    <th>Usuario</th>
                    <th>Cliente</th>
                    <th>Rol</th>
                    <th>Estado</th>
                    <th>Menu</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($usuarios as  $value) : ?>
                    <tr>
                        <td><?php echo  $value->nombres . ' ' . $value->apellidos ?></td>
                        <td><?php echo  $value->identificacion ?></td>
                        <td><?php echo  $value->email ?></td>
                        <td><?php echo  $value->username ?></td>
                        <td><?php echo  $value->cliente ?></td>
                        <td><?php echo  ucwords($value->rol) ?></td>
                        <td><?php echo  $value->estado == 1 ? 'Activo' : 'Inactivo' ?></td>
                        <td>
                            <a onclick="Clave('<?php echo $value->id ?>')" data-toggle="modal" href='#modal-id'><i class="glyphicon glyphicon-lock" title="Actualizar Clave"></i></a>
                            <a onclick="Editar('<?php echo $value->id ?>')" data-toggle="modal" href='#modal-id'><i class="glyphicon glyphicon-user" title="Actualizar Datos del Usuario"></i></a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>
<div class="modal fade" id="modal-id">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" >&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body" id="index">

            </div>
            <!-- <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div> -->
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


    function Registrar() {
        $.ajax({
            type: "POST",
            url: '?c=usuarios&a=Registrar',
            // data: 'id=' + val,
            success: function(resp) {
                $('#index').html(resp);
                $('#respuesta').html("");
            }
        });
    }

    function Editar(val) {
        $.ajax({
            type: "POST",
            url: '?c=usuarios&a=Registrar',
            data: 'id=' + val,
            success: function(resp) {
                $('#index').html(resp);
                $('#respuesta').html("");
            }
        });
    }
</script>