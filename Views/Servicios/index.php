<section>
    <div class="panel">
        <div class="panel-heading text-right">
            <button  onclick="Ver1()" data-toggle="modal" href='#modal-id' class="neu  text-center"> Registrar</button>
        </div>
        <div class="panel-body">
            <div class="col-md-12">
                <div class="row">
                    <div class="responsive">
                        <table class="table table-bordered" id="example1">
                            <thead>
                                <tr>
                                    <th>Universo</th>
                                    <th>Cliente</th>
                                    <th>Fecha</th>
                                    <th>Menu</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                foreach ($servicios as $value) : ?>
                                    <tr>
                                        <td><?php echo $value->oferta ?></td>
                                        <td><?php echo  strtoupper($value->cliente)  ?></td>
                                        <td><?php echo $value->f_inicio ?></td>
                                        <td>
                                            <a onclick="Ver('<?= $value->servicios_id ?>')" data-toggle="modal" href='#modal-id' class="btn btn-default btn-circle waves-effect waves-circle waves-float"><i class="glyphicon glyphicon-edit"></i></a>
                                            <a onclick="Borrar('<?= $value->servicios_id ?>')" class="btn btn-default btn-circle waves-effect waves-circle waves-float"><i class="glyphicon glyphicon-trash"></i></a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>Servicio</th>
                                    <th>Cliente</th>
                                    <th>Fecha</th>
                                    <th>Menu</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="modal fade" id="modal-id">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title text-center">Agregar Servicio</h4>
            </div>
            <div class="modal-body" id="index"></div>
        </div>
    </div>
</div>

<script>
    function Ver(id) {
        var val = id;
        $.ajax({
            type: "POST",
            url: '?c=servicios&a=crud',
            data: 'id=' + val,
            success: function(resp) {
                $('#index').html(resp);
                $('#respuesta').html("");
            }
        });
    }
    function Ver1() {        
        $.ajax({
            type: "POST",
            url: '?c=servicios&a=crud',           
            success: function(resp) {
                $('#index').html(resp);
                $('#respuesta').html("");
            }
        });
    }

    function Borrar(val) {
        Swal.fire({
                title: "¿Estás seguro de eliminar este Servicio?",
                icon: "warning",
                buttons: true,
                dangerMode: true,
                showCancelButton: true,
            })
            .then((willDelete) => {
                if (willDelete.value) {
                    $.ajax({
                        type: "POST",
                        url: '?c=servicios&a=delete',
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