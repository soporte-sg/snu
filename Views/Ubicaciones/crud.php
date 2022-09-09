<div class="row clearfix text-center">
    <form id="formCrud" name="formCrud">
        <div class="col-md-12">
            <div class="form-group">
                <label for="">Ubicación</label>
                <input type="text" id="nombre" name="nombre" value="<?php echo $ubicacion->nombre ?>" class="form-control">
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for="">Sede</label>
                <select name="sede_id" id="sede_id" class="form-control" required="required">
                    <?php foreach ($sedes as $value) : ?>
                        <option value="<?= $value->id ?>" <?php echo $value->id == $ubicacion->sede_id ? 'selected' : '' ?>> <?= $value->nombre ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
        </div>

        <div class="col-md-12">
            <input type="hidden" id="created" name="created" value="<?php echo date('Y-m-d') ?>" class="form-control">
            <input type="hidden" id="id" name="id" value="<?php echo $ubicacion->id ?>" class="form-control">
            <input type="button" id="guardar" value="Guardar" class="neu btn-block">
        </div>
    </form>
</div>
<script>
    $(document).on('click', '#guardar', function(e) {
        var data = $("#formCrud").serialize();
        $.ajax({
            data: data,
            type: "post",
            url: "?c=ubicaciones&a=Crud",
            success: function(data) {
                Swal.fire({
                    icon: 'success',
                    title: 'BIEN HECHO!!',
                    timer: 2000
                }, )
                setTimeout(function() {
                    window.location.reload();
                }, 2000)
            }

        })
    });
</script>