<div class="row clearfix" id="main">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="header">
                <div class="row clearfix">
                    <div class="col-xs-12 col-sm-12">
                        <h2>ACTUALIZAR SOLICITUD</h2>
                    </div>
                </div>
            </div>
            <div class="body">
                <form action="" method="post" name="sol_edit" id="sol_edit">
                    <div class="row clearfix">
                        <input type="hidden" class="form-control" id="id" name="id" value="<?php echo $solicitudes->id ?>">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label for="">Nombre Solicitante</label>
                                    <input type="text" class="form-control" id="NombreSolicitante" name="NombreSolicitante" value="<?php echo $solicitudes->NombreSolicitante ?>">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label for="">Fecha Solicitud</label>
                                    <input type="text" class="form-control" id="FechaSolicitud" name="FechaSolicitud" value="<?php echo $solicitudes->FechaSolicitud ?>">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label for="">Proceso</label>
                                    <input type="text" class="form-control" id="Proceso" name="Proceso" value="<?php echo $solicitudes->Proceso ?>">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label for="">Tipo Solicitud</label>
                                    <select name="TipoSolicitud" id="TipoSolicitud" class="form-control">
                                        <option value="<?php echo $solicitudes->TipoSolicitud ?>" <?php echo $solicitudes->TipoSolicitud == 'creacion' ? 'selected' : '' ?>>Creación</option>
                                        <option value="<?php echo $solicitudes->TipoSolicitud ?>" <?php echo $solicitudes->TipoSolicitud == 'actualizacion' ? 'selected' : '' ?>>Actualicación</option>
                                        <option value="<?php echo $solicitudes->TipoSolicitud ?>" <?php echo $solicitudes->TipoSolicitud == 'eliminacion' ? 'selected' : '' ?>>Eliminación</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label for="">Codigo</label>
                                    <input type="text" class="form-control" id="Codigo" name="Codigo" value="<?php echo $solicitudes->Codigo ?>">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label for="">Version Cambiar</label>
                                    <input type="text" class="form-control" id="VersionCambiar" name="VersionCambiar" value="<?php echo $solicitudes->VersionCambiar ?>">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label for="">Tipo Información</label>   
                                    <select id="TipoDocumento" name="TipoDocumento" class="form-control">
                                        <option value="<?php echo $solicitudes->TipoDocumento ?>" <?php echo $solicitudes->TipoDocumento == 'documento' ? 'selected' : '' ?>>Documento</option>
                                        <option value="<?php echo $solicitudes->TipoDocumento ?>" <?php echo $solicitudes->TipoDocumento == 'formato' ? 'selected' : '' ?>>Formato</option>
                                        <option value="<?php echo $solicitudes->TipoDocumento ?>" <?php echo $solicitudes->TipoDocumento == 'software' ? 'selected' : '' ?>>Software</option>
                                        <option value="<?php echo $solicitudes->TipoDocumento ?>" <?php echo $solicitudes->TipoDocumento == 'externos' ? 'selected' : '' ?>>Externos</option>
                                    </select> 
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label for="">Ejecución Cambio</label>
                                    <input type="text" class="form-control" id="EjecucionCambio" name="EjecucionCambio" value="<?php echo $solicitudes->EjecucionCambio ?>">
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-3">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Estado de la Solicitud</label>
                                <select name="Aprobado" id="Aprobado" class="form-control">
                                    <option <?php $solicitudes->Aprobado == 'si' ? 'selected' : '' ?> <?php $solicitudes->Aprobado == 'si' ? 'seleted' : '' ?> value="si">Aprobado</option>
                                    <option <?php $solicitudes->Aprobado == 'no' ? 'selected' : '' ?> <?php $solicitudes->Aprobado == 'si' ? 'seleted' : '' ?> value="no">No Aprobado</option>
                                    <option <?php $solicitudes->Aprobado == 'revision' ? 'selected' : '' ?> <?php $solicitudes->Aprobado == 'si' ? 'seleted' : '' ?> value="revision">Revisión</option>
                                </select>
                            </div>
                        </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <div class="form-line">
                                    <label for="">Descripción</label>
                                    <textarea type="text" class="form-control" id="Descripcion" name="Descripcion" value=""><?php echo $solicitudes->Descripcion ?></textarea>
                            
                                </div>                            
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <div class="form-line">
                                    <label for="">Observaciones</label>
                                    <textarea type="text" class="form-control" id="Observaciones" name="Observaciones" value=""><?php echo $solicitudes->Observaciones ?></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <input type="button" id="guardar" class="btn btn-success" value="Guardar">
                        </div>
                </form>
            </div>

        </div>
    </div>
</div>
</div>

<script>
    $(document).on('click', '#guardar', function(e) {
        // var tipo_usuarios = document.getElementById('tipo_usuarios').value;
        var data = $("#sol_edit").serialize();
        $.ajax({
            //async: false,
            data: data,
            type: "post",
            url: "?c=solicitudes&a=Registrar",
            success: function(data) {
                Swal.fire({
                    icon: 'success',
                    title: 'BIEN HECHO!!',
                    timer: 1500
                }, )
                setTimeout(function() {
                    window.location = '?c=solicitudes&a=index';
                    }, 2000)
            }
        });
    });
</script>
