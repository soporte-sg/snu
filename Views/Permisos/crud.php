<div id="index"></div>
<table id="ejemplo1" class="table table-bordered">
    <thead>

        <tr>
            <th>ID</th>
            <th>MODULO</th>
            <th>CREAR</th>
            <th>LEER</th>
            <th>ACTUALIZAR</th>
            <th>BORRAR</th>
            <th>EDITAR</th>
        </tr>
    </thead>
    <tbody>
        <?php $i = 1;  ?>
        <?php foreach ($permiso as $permisos) : ?>
            <tr>
                <td><?php echo $i . $permisos->id ?></td>
                <td><?php echo $permisos->modulo  ?></td>
                <td>
                    <?php echo $permisos->crear == 1 ? 'Si' : 'No'; ?>
                </td>
                <td>
                    <?php echo $permisos->leer == 1 ? 'Si' : 'No'; ?>
                </td>
                <td><?php echo $permisos->actualizar == 1 ? 'Si' : 'No'; ?> </td>

                <td> <?php echo $permisos->borrar == 1 ? 'Si' : 'No'; ?>

                </td>

                <td> 
                    <a href="" onclick="Add('<?php echo $permisos->id ?>')" data-toggle="modal" data-target="#modal-default"><i class="glyphicon glyphicon-edit"></i></a>
                    <input type="hidden" id="id" value="<?php echo $permisos->id ?>">
                </td>
            </tr>
            <input type="hidden" id="tipousuario" value="<?php echo $_REQUEST['id'] ?>">
        <?php $i++;
        endforeach ?>
    </tbody>
    <tfoot>
        <tr>
            <th>ID</th>
            <th>MODULO</th>
            <th>CREAR</th>
            <th>LEER</th>
            <th>ACTUALIZAR</th>
            <th>BORRAR</th>
            <th>EDITAR</th>
        </tr>
    </tfoot>
</table>
</div>
<script>
    function Add(id) {
        $.ajax({
            type: "POST",
            url: '?c=permisos&a=ver',
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