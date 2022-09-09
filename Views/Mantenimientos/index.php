<div class="row">
<?php 
if (isset($_REQUEST['true'])):
            if ( $_REQUEST['true'] == 1) :   
                echo "<script>
                Swal.fire({
                    icon: 'success',
                    title: 'La planificacion se registro con éxito!!',
                    showConfirmButton: false,
                    timer: 1500
                }, )
                setTimeout(function() {
                    window.location = '?c=mantenimientos&a=index';
                //  window.location.reload(1);
                }, 2000)
                </script>";
            else: echo "<script>Swal.fire({
                    icon: 'error',
                    title: 'La planificacion no se registro con éxito, por favor  elige al menos 1(uno), trata de nuevo',
                    showConfirmButton: false,
                    timer: 1500
                }, )
                setTimeout(function() {
                    // window.location = '?c=mantenimientos&a=index';
                //  window.location.reload(1);
                }, 2000)
                </script>" ; 
            endif;
        endif;
   
    ?>
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-3">
            <div class="panel panel-info">
                <div class="panel-body text-center">
                <button type="button" id="ver" class="btn btn-info">Ver Estado del Plan</button>
                </div>
            </div>
        </div>
        <div class="col-xs-4 col-sm-4 col-md-9 col-lg-9">
            <div class="panel panel-info">
                <div class="panel-body text-center">  
                <div class="btn-group">
                        <button type="button" id="planear" class="btn btn-info">Planear</button>
                        <button type="button" id="ejecutar" class="btn btn-info">Ejecutar</button>
                        <button type="button" id="Validar" class="btn btn-info">Validar</button>
                    </div>   
                 </div>
            </div>
        </div>
        <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
            <div class="panel panel-info">
                <div class="panel-body" id="respuesta">
                   
                </div>
            </div>
        </div>
        
    </div>
    
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="resultado">
        
    </div>
</div>
<script>
    $('#ver').on('click', function() {        
        $.ajax({
            type: "POST",
            url: '?c=mantenimientos&a=IndexTodo',            
            beforeSend: function() {
                $('#respuesta').html("<h5 class='text-center'>Cargando Información</h5>");
            },
            success: function(resp) {
                $('#respuesta').html(resp);                
            }
        });
    });
    $('#planear').on('click', function() {        
        $.ajax({
            type: "POST",
            url: '?c=mantenimientos&a=planear',            
            beforeSend: function() {
                $('#respuesta').html("<h5 class='text-center'>Cargando Información</h5>");
            },
            success: function(resp) {
                $('#respuesta').html(resp);                
            }
        });
    });
    $('#ejecutar').on('click', function() {        
        $.ajax({
            type: "POST",
            url: '?c=mantenimientos&a=ejecutar',            
            beforeSend: function() {
                $('#respuesta').html("<h5 class='text-center'>Cargando Información</h5>");
            },
            success: function(resp) {
                $('#respuesta').html(resp);                
            }
        });
    });
    $('#Validar').on('click', function() {        
        $.ajax({
            type: "POST",
            url: '?c=mantenimientos&a=verificar',            
            beforeSend: function() {
                $('#respuesta').html("<h5 class='text-center'>Cargando Información</h5>");
            },
            success: function(resp) {
                $('#respuesta').html(resp);                
            }
        });
    });

</script>