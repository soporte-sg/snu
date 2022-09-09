
        <div class="row clearfix text-center">
            <form id="formCrud" name="formCrud">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Iniciales</label>
                        <input type="text" id="Iniciales" name="Iniciales" value="<?php echo $proceso->Iniciales ?>" class="form-control">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Nombre</label>
                        <input type="text" id="	NombreProceso" name="NombreProceso" value="<?php echo $proceso->NombreProceso ?>" class="form-control">
                    </div>
                </div>                
                <div class="col-md-12">
                    <input type="hidden" id="id" name="id" value="<?php echo $proceso->id ?>" class="form-control">
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
            url: "?c=procesos&a=Crud",
            success: function(data) {
                Swal.fire({
                    icon: 'success',
                    title: 'BIEN HECHO!!',
                    timer: 2000
                }, )
                setTimeout(function() {
                    //  window.location = '?c=solicitudes&a=index';
                   // window.location.reload();
                }, 2000)
            }

        })
    });
</script>