<div class="panel panel-default" id="resultado">
    <!-- Default panel contents -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-10">
               <h2>Fabricantes</h2> 
            </div>
            <div class="col-md-2">
                <button onclick="Add()" data-toggle="modal" href='#modal-id' class="neu pull-right"> Registrar fabricante </button>
            </div>
        </div>
    </div>
    <div class="body">
        <!-- Table -->
        <div class="panel panel-body">
            <table id="example1" class="table table-bordered">
                <thead>
                    <tr>
                        <th>Nombre</th>                        
                        <th>Menu</th>
                    </tr>
                </thead>
                <tbody>
                    <?php                     
                    foreach ($fabricantes as $value) : ?>
                        <tr>
                            <td><?php echo  utf8_encode($value->nombres) ?></td>                            
                            <td>
                                <a onclick="Editar('<?php echo $value->id ?>')" data-toggle="modal" href='#modal-id'><i class="glyphicon glyphicon-user" title="Actualizar"></i></a>
                                <a onclick="Borrar('<?php echo $value->id ?>')"><i class="glyphicon glyphicon-trash" title="Eliminar"></i></a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
                <tfoot>
                    <tr>
                        <th>Nombre</th>                        
                        <th>Menu</th>
                    </tr>
                </tfoot>
            </table>
        </div>
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
        </div>
    </div>
</div>
<script>
    function Add() {
        $.ajax({
            type: "POST",
            url: '?c=fabricantes&a=add',
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
            url: '?c=fabricantes&a=add',
            data: 'id=' + val,
            success: function(resp) {
                $('#index').html(resp);
                $('#respuesta').html("");
            }
        });
    }

    function Borrar(val) {
        Swal.fire({
                title: "¿Estás seguro de eliminar esta categorias?",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete.value) {
                    $.ajax({
                        type: "POST",
                        url: '?c=fabricantes&a=delete',
                        data: 'id=' + val,
                        success: function(datos) {
                            Swal.fire({
                                icon: 'success',
                                title: 'BIEN HECHO!!',
                                timer: 2000
                            }, )
                            setTimeout(function() {
                                //  window.location = '?c=solicitudes&a=index';
                                window.location.reload();
                            }, 2000)
                        }
                    });
                }
            });

    }
</script>