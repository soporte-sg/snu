
        <div class="row clearfix text-center">
            <form id="formCrud" name="formCrud">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Nombre</label>
                        <input type="text" id="cargo" name="cargo" value="<?php echo $cargo->cargo ?>" class="form-control">
                    </div>
                </div>
                <div class="col-md-6">    
                
                <div class="form-group">
                        <label for="">Procesos</label>
                        <select name="proceso_id" id="proceso_id" class="form-control">
                            <?php foreach ($procesos as $value) : ?>
                                <option value="<?php echo $value->Iniciales ?>" <?php echo $value->Iniciales == $cargo->proceso_id ? 'selected' : '' ?>> <?=$value->Iniciales.' '.$value->NombreProceso?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    </div> 
                    <div class="col-md-12">
                      <input type="hidden" id="cliente_id" name="cliente_id" value="<?php echo $_SESSION['datos_cliente']->id ?>" class="form-control">
                        <input type="hidden" id="id" name="id" value="<?php echo $cargo->id ?>" class="form-control">
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
            url: "?c=cargos&a=Crud",
            success: function(data) {
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

        })
    });
</script>