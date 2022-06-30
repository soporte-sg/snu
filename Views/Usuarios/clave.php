<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Actualizar</h3>
    </div>
    <div class="panel-body">
        <div class="row clearfix text-center">
            <form id="formClave" name="formClave">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Usuario</label>
                        <input type="text" id="username" value="<?php echo $usuario->username ?>" class="form-control">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Clave</label>
                        <input type="password" id="password" value="<?php echo $usuario->password ?>" class="form-control">
                        <input type="hidden" id="id" value="<?php echo $_REQUEST['id'] ?>" class="form-control">
                    </div>
                </div>
                <div class="col-md-12">
                    <input type="button" id="guardar" value="Guardar" class="btn btn-success btn-block">
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    $(document).on('click', '#guardar', function(e) {
        var data = $("#formClave").serialize();
        $.ajax({
            data: data,
            type: "post",
            url: "?c=usuarios&a=ClaveUpdate",
            success: function(data) {
                Swal.fire({
                    icon: 'success',
                    title: 'BIEN HECHO!!',
                    timer: 1500
                },)
                $('#resultado').load(' #resultado');
            }

        })
    });
</script>