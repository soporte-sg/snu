<?php //print_r($solicitud) ?>

<!-- CPU Usage -->
<div class="row clearfix">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="header">
                <div class="row clearfix">
                    <div class="col-xs-12 col-sm-12">
                        <h2>RESPONDER SOLICITUD # <?= $solicitud->id ?></h2>
                    </div>
                </div>

            </div>
            <div class="body">
                <div class="row clearfix">         

                    <div class="col-sm-4">
                        <div class="form-group">
                            <div class="form-line">
                                <label for="">Tipo Solicitud</label>
                                <input type="text" value="<?= ucwords($solicitud->TipoSolicitud) ?>" class="form-control" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <div class="form-line">
                                <label for="">Proceso</label>
                                <input type="text" value="<?= ucwords($solicitud->Proceso) ?>" class="form-control" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <div class="form-line">
                                <label for=" ">Tipo Documento</label>
                                <input type="text" value="<?= ucwords($solicitud->TipoDocumento) ?>" class="form-control" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <div class="form-line">
                                <label for="">Nombre Solicitante</label>
                                <input type="text" value="<?= ucwords($solicitud->NombreSolicitante) ?>" class="form-control" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <div class="form-line">
                                <label for="">Fecha Solicitud</label>
                                <input type="text" value="<?= ucwords($solicitud->FechaSolicitud) ?>" class="form-control" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group">
                            <div class="form-line">
                                <label for="Descripción"></label>
                                <input type="text" value="<?= ucwords($solicitud->Descripcion) ?>" class="form-control" disabled>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- #END# CPU Usage -->