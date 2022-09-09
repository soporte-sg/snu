 <div class="well well-sm text-right">    
    <button type="button" id="user_id" value="<?=$_REQUEST['id']?>" class="neu">Registrar Información Pariente</button>
  </div> 
<!-- Exportable Table -->
<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h2>Grupo Familiar</h2>
                <ul class="header-dropdown m-r--5">
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="material-icons">more_vert</i>
                        </a>                        
                    </li>
                </ul>
            </div>
            <div class="body">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Apellidos</th>
                                <th>Parentesco</th>
                                <th>Fecha Nacimiento</th>
                                <th>Número de Contacto</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Nombre</th>
                                <th>Apellidos</th>
                                <th>Parentesco</th>
                                <th>Fecha Nacimiento</th>
                                <th>Número de Contacto</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <?php foreach ($grupof as $r) : ?>
                                <tr>
                                    <td><?php echo $r->nombre; ?></td>
                                    <td><?php echo $r->apellidos; ?></td>
                                    <td><?php echo $r->parentesco; ?></td>
                                    <td><?php echo $r->fecha_nacimiento; ?></td>
                                    <td><?php echo $r->contacto; ?></td>
                                    <td>
                                    <button type="button" id="editar" value="<?=$r->id?>" class="btn btn-secondary">Editar</button>
                                     </td>
                                    <td>
                                        <a onclick="javascript:return confirm('Seguro de eliminar este registro?');" href="?c=Grupofamiliar&a=Eliminar&idf=<?php echo $r->id; ?>">Eliminar</a>
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
<!-- #END# Exportable Table -->
<script>
$('#user_id').on('click', function() {
    var id = document.getElementById("user_id").value
   
        $.ajax({
            type: "POST",
            url: '?c=grupofamiliar&a=crud',
            data: {
               user_id:id 
            },
            beforeSend: function() {
                $('#resultado').html("<h5 class='text-center'>Cargando Información</h5>");
            },
            success: function(resp) {
                $('#resultado').html(resp);
                
            }
        });
    });

    $('#editar').on('click', function() {
    var id = document.getElementById("editar").value
   
        $.ajax({
            type: "POST",
            url: '?c=grupofamiliar&a=crud',
            data: {
               id:id 
            },
            beforeSend: function() {
                $('#resultado').html("<h5 class='text-center'>Cargando Información</h5>");
            },
            success: function(resp) {
                $('#resultado').html(resp);
                
            }
        });
    });
</script>