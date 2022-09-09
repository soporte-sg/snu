<?php //print_r ($mantenimientos)?>
<?php //print_r ($mant_ejecutados)?>
<div id="ejecuccion">
    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th>Codigo</th>
                <th>Elementos</th>
                <th>Fecha De Ejecución</th>
                <th>Descripción</th>
                <th>Encargdo</th>
                <th>Proveedor</th>
                <th>Validar</th>

            </tr>
        </thead>
        <tbody>
            <?php foreach ($mantenimientos as $value) : ?>
                <?php foreach ($mant_ejecutados as $value01) : ?>
                    <?php if($value01->cantidad==$value->cantidad):?>
                    <tr>
                        <td><?= $value->codigo ?></td>
                        <td> <a class="btn btn-primary" onclick="Elementos('<?= $value->codigo ?>')" data-toggle="modal" href='#modal-id'><?= $value->cantidad ?></a></td>
                        <td><?= $value->fecha ?></td>
                        <td class="text-justify"><?= $value->descripcion ?></td>
                        <td><?= $value->responsable ?></td>
                        <td><?= $value->responsable_id ?></td>
                        <td>
                              <a onclick="Ejecucion('<?= $value->codigo ?>')" class=" btn-default" title="Registre los datos correspondientes a la ejecución del mantenimiento"> <i class="glyphicon glyphicon-dashboard"></i></a>
                        </td>
                    </tr>
                <?php endif; ?>
                <?php endforeach; ?>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<div class="modal fade" id="modal-id">
    <div class="modal-dialog">
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body" id="result">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>
<script>
    function Elementos(id) {
        // var id = document.getElementById("ubicacion").value
        $.ajax({
            type: "POST",
            url: '?c=mantenimientos&a=elementos',
            data: {
                codigo: id
            },
            success: function(resp) {
                $('#result').html(resp);
            }
        });
    }

    function Ejecucion(id) {
        // var id = document.getElementById("ubicacion").value
        $.ajax({
            type: "POST",
            url: '?c=mantenimientos&a=crudValidar',
            data: {
                id_mant: id
            },
            success: function(resp) {
                $('#ejecuccion').html(resp);
            }
        });
    }
</script>