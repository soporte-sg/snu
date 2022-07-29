<section>
    <div class="panel panel-default">
        <div class="panel-heading"><a data-toggle="modal" href='#modal-id' class="btn btn-success pull-right"> Registrar</a>
            <h3 class="panel-title">Servicios</h3>            
        </div>
        <div class="panel-body">
            <div class="col-md-12">
                <div class="row">
                    <div class="responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Servicio</th>
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
                                            <a data-toggle="modal" href='#modal-id' class=""><i class="glyphicon glyphicon-edit"></i></a>
                                            <a href="" class=""><i class="glyphicon glyphicon-trash"></i></a>                                        
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
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Agregar Servicio</h4>
            </div>
            <div class="modal-body">

                <form action="" name="formdata" id="formdata" method="POST">
                    <div class="form-group">
                        <label for="">Cliente</label>
                        <select name="cliente_id" id="cliente_id" class="form-control" required="required">
                            <option value="">Seleccionar</option>
                            <?php foreach ($clientes as $value) : ?>
                                <option value="<?= $value->id ?>"><?= $value->id . $value->nombre ?></option>
                            <?php endforeach; ?>
                        </select>
                        <label for="">Servicios</label>
                        <select name="servicio_id" id="servicio_id" class="form-control" required="required">
                            <option value="">Seleccionar</option>
                            <?php foreach ($ofertas as $value1) : ?>
                                <option value="<?= $value1->id ?>"><?= $value1->oferta ?></option>
                            <?php endforeach; ?>
                        </select>
                        </select>
                        <label for="">Fecha Inicio</label>
                        <input type="date" class="form-control" id="f_inicio" name="f_inicio" placeholder="Input field">
                        <input type="hidden" class="form-control" id="id" name="id" placeholder="Input field">
                    </div>
                </form>


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="botonenviar">Guardar</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $('#botonenviar').click(function() {
            if (($('#cliente_id').val() != "") && ($('#servicio_id').val() != "") && ($('#f_inicio').val() != "")) {
                var datos = $('#formdata').serialize();
                $.ajax({
                    type: "POST",
                    url: "?c=servicios&a=add",
                    data: datos,
                    success: function(r) {
                        if (r == 1) {
                            alert("Fallo al agregar");
                        } else {
                            Swal.fire({
                               
                                title: 'BIEN HECHO!!',
                                timer: 1500
                            }, )
                            setTimeout(function() {
                                //  window.location = '?c=solicitudes&a=index';
                                window.location.reload(1);
                            }, 2000)
                        }
                    }
                });
            } else {
                alert('campos vacíos');
            }
            return false;
        });
    });
</script>