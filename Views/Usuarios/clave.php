 <div class="row clearfix text-center">
            <form id="formClave" name="formClave">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Usuario</label>
                        <input type="text" id="username" name="username" value="<?php echo $usuario->username ?>" class="form-control">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Clave</label>
                        <input type="password" id="password" name="password" value="<?php echo $usuario->password ?>" class="form-control">
                        <input type="hidden" id="id"  name="id" value="<?php echo $_REQUEST['id'] ?>" class="form-control">
                    </div>
                </div>
                <div class="col-md-12">
                    <input type="button" id="guardar" value="Guardar" class="neu btn-block">
                </div>
            </form>
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
                setTimeout(function() {
                    window.location = '?c=usuarios&a=index2';
                    // window.location.reload(1);
                }, 2000)
            }

        })
    });
</script>