<div class="well well-sm text-right">
    <a class="btn btn-success" onclick="Nuevo('<?=$_REQUEST['id']?>')" data-toggle="modal" href='#modal-id'>Registrar Formación academica</a>
</div>
<?php //print_r($formacion) ?>
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">Formación academica</h3>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                        <thead>
                            <tr>
                                <th>Nivel</th>
                                <th>Estudio</th>
                                <th>Institución Educativa</th>
                                <th>Academia</th>
                                <th>Fecha realización</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Nivel</th>
                                <th>Estudio</th>
                                <th>Institución Educativa</th>
                                <th>Academia</th>
                                <th>Fecha realización</th>
                                <th></th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <?php foreach ($formacion as $r) : ?>
                                    <tr>
                                        <td><?php echo $r->nivel; ?></td>
                                        <td><?php echo $r->estudio; ?></td>
                                        <td><?php echo $r->curso_vigilancia; ?></td>
                                        <td><?php echo $r->lugar; ?></td>
                                        <td><?php echo $r->fecha; ?></td>
                                        <td>
                                            <a class="" onclick="Nuevo('<?=$_REQUEST['id']?>')" data-toggle="modal" href='#modal-id'>Editar</a>
                                            <a class="" onclick="javascript:return confirm('Seguro de eliminar este registro?');" href="?c=Nivelacademico&a=Eliminar&id=<?php echo $r->id; ?>&user=<?php echo $_GET['id']; ?>">Eliminar</a>
                                        </td>
                                    </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
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
            url: '?c=Nivelacademico&a=Crud',
            data: {
               user_id: id
            },            
            success: function(resp) {
                $('#resultados').html(resp);

            }
        });
    }
</script>
