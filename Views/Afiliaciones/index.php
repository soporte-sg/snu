<div class="well well-sm text-right">
    <a class="btn btn-primary" onclick="Nuevo('<?php echo $_REQUEST['id'] ?>')"  data-toggle="modal" href='#modal-id' >Nueva Afiliación</a>
</div>
<div class="row">
    <div class="col-md-12">        
        <div class="col-md-12">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Afiliaciones</h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-condensed table-hover">
                            <tr>
                                <th>eps</th>
                                <th>arl</th>
                                <th>fondo</th>
                                <th>caja</th>
                                <th>afiliacion_fecha</th>
                                <th></th>
                            </tr>
                            <?php foreach ($afiliaciones as $R) : ?>
                                <tr>
                                    <td><?php echo $R->eps ?></td>
                                    <td><?php echo $R->arl ?></td>
                                    <td><?php echo $R->fondo ?></td>
                                    <td><?php echo $R->caja ?></td>
                                    <td><?php echo $R->afiliacion_fecha ?></td>
                                    <td><a class="<?php echo  $disable ?>" onclick="Nuevo('<?php echo $R->id ?>')"  data-toggle="modal" href='#modal-id'">Editar</a>
                                        <a class="<?php echo  $disable ?>" onclick="javascript:return confirm('Seguro de eliminar este registro?');" href="?c=afiliaciones&a=Eliminar&idf=<?php echo $R->id; ?>&id=<?php echo $_REQUEST['id']; ?>">Eliminar</a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modal-id">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body" id="resultados">            
            </div>           
        </div>
    </div>
</div>

<script>
    function Nuevo(id){
        $.ajax({
            type: "POST",
            url: '?c=afiliaciones&a=crud',
            data: {
                id: id
            },
            beforeSend: function() {
                $('#resultados').html("<h5 class='text-center'>Cargando Información</h5>");
            },
            success: function(resp) {
                $('#resultados').html(resp);

            }
        });
    }
</script>
