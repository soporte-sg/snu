<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h2>
                    Datos de la Solicitud
                    <small>Solicitud Para el control de cambios</small>
                </h2>
                <!-- <ul class="header-dropdown m-r--5">
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="material-icons">more_vert</i>
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="javascript:void(0);">Action</a></li>
                            <li><a href="javascript:void(0);">Another action</a></li>
                            <li><a href="javascript:void(0);">Something else here</a></li>
                        </ul>
                    </li>
                </ul> -->
            </div>
            <div class="body">
                <div class="row clearfix">
                    <form method="post" name="formSolicitud" id="formSolicitud" enctype="multipart/form-data">

                        <div class="col-md-12">
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Proceso Solicitante</label>
                                        <select class="form-control show-tick" name="Proceso" id='Proceso' required>
                                            <option value="">-- Seleccionar --</option>

                                            <?php foreach ($procesos as $sgc) : ?>
                                                <option value="<?php echo $sgc->Iniciales ?>"><?php echo $sgc->NombreProceso ?> </option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Tipo de Información</label>
                                        <select class="form-control show-tick" name="TipoDocumento" id="TipoDocumento" required>
                                            <option value="">-- Seleccionar --</option>
                                            <option value="documento">Documento</option>
                                            <option value="formato">Formato</option>
                                            <option value="software">Software</option>
                                            <option value="externo">Externo</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Tipo Solicitud</label>
                                        <select class="form-control show-tick" name="TipoSolicitud" id="TipoSolicitud" required>
                                            <option value="">-- Seleccionar --</option>
                                            <option value="creacion">Creación</option>
                                            <option value="actualizacion">Actualización</option>
                                            <option value="eliminacion">Eliminación</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="index" id="index"></div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Numero Solicitud</label>
                                        <input type="text" name="id" value="<?php echo $ultima_solicitud->ULTIMA + 1 ?>" class="form-control" disabled>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Nombre Solicitante</label>
                                        <input type="text" name="NombreSolicitante" id="NombreSolicitante" value="<?php echo ucwords($_SESSION['user']->FullName) ?>" class="form-control" readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Fecha Solicitud</label>
                                        <input type="date" name="FechaSolicitud" class='form-control' value="<?php echo date('Y-m-d') ?>" readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Adjuntar Archivo</label>
                                        <input type="file" id="Archivo" name="filename" class='form-control' data-toggle="tooltip" data-placement="right" title="El peso maximo del archivo es de 2MB y debe ser en formato word o excel" value="">
                                        <input type="hidden" name="dir" class='form-control' value="">

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 text-center">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Justificación</label>
                                        <textarea name="Descripcion" id="Descripcion" cols="50" rows="5" class="form-control" data-toggle="tooltip" data-placement="right" placeholder="Da un detalle de tu solicitud, nombre del documento/formato y su importancia " title="Da un detalle de tu solicitud, nombre del documento/formato y su importancia "></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <input type="button" id="guardar" class="btn btn-success" value="Guardar">
                            </div>
                        </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    $('#TipoSolicitud').on('change', function() {
        var TipoDocumento = document.getElementById("TipoDocumento").value
        var Proceso = document.getElementById("Proceso").value
        var TipoSolicitud = document.getElementById("TipoSolicitud").value
        
            $.ajax({
                type: "POST",
                url: '?c=solicitudes&a=descripcion',
                data: {
                    TipoDocumento: TipoDocumento,
                    Proceso: Proceso,
                    TipoSolicitud: TipoSolicitud
                },
                beforeSend: function() {
                    $('#index').html("<h5 class='text-center'> <img src='View/img/gifs/cargando-loading-009.gif'> Cargando Información</h5>");
                },
                success: function(resp) {
                    $('#index').html(resp);
                    $('#respuesta').html("");
                }
            });
        
    });



    $(document).on('click', '#guardar', function(e) {
        // var data = $("#formResponder").serialize();
        var formData = new FormData($("#formSolicitud")[0]);
        if(($('#Descripcion').val()!='')){
            $.ajax({
                url: "?c=solicitudes&a=Registrar",
                type: "POST",
                data: formData,
                contentType: false,
                cache: false,
                processData: false,
                success: function(data) {
                    Swal.fire({
                        icon: 'success',
                        title: 'BIEN HECHO!!',
                        timer: 1500
                    }, )
                    setTimeout(function() {
                        window.location = '?c=solicitudes&a=index';
                        // window.location.reload();
                    }, 2000)

                }
            });
        }else{
            Swal.fire({
                    icon: 'error',
                    title: '¡COMPLETA TODOS LOS CAMPOS!',
                    timer: 1500
                }, )
                setTimeout(function() {
                    // window.location = '?c=usuarios&a=index2';
                    // window.location.reload();
                }, 1500)
        }    
    });
</script>