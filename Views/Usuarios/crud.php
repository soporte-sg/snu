<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">:USUARIOS:</h3>
    </div>
    <div class="panel-body">
        <div class="row clearfix text-center">
            <form id="formCrud" name="formCrud">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Nombre</label>
                        <input type="text" id="nombre" name="nombres" value="<?php echo $usuario->nombres ?>" class="form-control">
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Apellidos</label>
                        <input type="text" id="apellidos" name="apellidos" value="<?php echo $usuario->apellidos ?>" class="form-control">
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Identificación</label>
                        <input type="number" id="identificacion" name="identificacion" value="<?php echo $usuario->identificacion ?>" class="form-control">
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Cliente</label>
                        <select name="cliente_id" id="cliente_id" class="form-control">
                            <?php foreach ($clientes as $value) : ?>
                                <option value="<?php echo $value->id ?>" <?php echo $value->id == $usuario->cliente_id ? 'selected' : '' ?>> <?php echo $value->nombre ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    </div> 
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="">Rol</label>
                            <select name="rol_id" id="rol_id" class="form-control">
                                <?php foreach ($roles as $value) : ?>
                                    <option value="<?php echo $value->id ?>" <?php echo $value->id == $usuario->rol_id ? 'selected' : '' ?>> <?php echo ucwords($value->rol) ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="">estado</label>
                            <select id="estado"  name="estado" class="form-control">
                                <option value="1" <?php echo '1' == $usuario->estado ? 'selected' : '' ?>>Activo</option>
                                <option value="0" <?php echo '0' == $usuario->estado ? 'selected' : '' ?>>Inactivo</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <input type="hidden" id="id" name="id" value="<?php echo $_REQUEST['id'] ?>" class="form-control">
                        <input type="button" id="guardar" value="Guardar" class="btn btn-success btn-block">
                    </div>
            </form>
        </div>
    </div>
</div>

<script>
    $(document).on('click', '#guardar', function(e) {
        var data = $("#formCrud").serialize();
        $.ajax({
            data: data,
            type: "post",
            url: "?c=usuarios&a=Crud",
            success: function(data) {
                Swal.fire({
                    icon: 'success',
                    title: 'BIEN HECHO!!',
                    timer: 1500
                }, )
                $('#resultado').load(' #resultado');
            }

        })
    });
</script>