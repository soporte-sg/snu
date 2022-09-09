<div class="panel-body">
    <form action="" name="formdata" id="formdata" method="POST">
        <div class="col-md-4">
            <label for="">Cliente</label>
            <select name="cliente_id" id="cliente_id" class="form-control" required="required">
                <option value="">Seleccionar</option>
                <?php foreach ($clientes as $value) : ?>
                    <option value="<?= $value->id ?>" <?php echo $value->id == $servicio->cliente_id ? 'selected' : '' ?>><?= $value->nombre ?></option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="col-md-4">
            <label for="">Servicios</label>
            <select name="servicio_id" id="servicio_id" class="form-control" required="required">
                <option value="">Seleccionar</option>
                <?php foreach ($ofertas as $value1) : ?>
                    <option value="<?= $value1->id ?>" <?php echo $value1->id == $servicio->servicio_id ? 'selected' : '' ?>><?= $value1->oferta ?></option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="col-md-4">
            <label for="">Fecha Inicio</label>
            <input type="date" class="form-control" id="f_inicio" name="f_inicio" placeholder="Input field" value="<?= date('Y-m-d', strtotime($servicio->f_inicio)) ?>">
            <input type="hidden" class="form-control" id="id" name="id" placeholder="Input field" value="<?=$servicio->id?>"><br>
        </div>
        <div class="col-md-12">
            <button type="button" class="neu btn-block" id="botonenviar">Guardar</button>
        </div>
    </form>
</div>
<script>
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
                                icon: 'success',
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
                Swal.fire({
                    icon: 'error',
                    title: 'CAMPOS SI LLENAR',
                    timer: 1500
                }, )
            }
            return false;
        });
    });
</script>