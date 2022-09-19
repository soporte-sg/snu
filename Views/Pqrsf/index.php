
<?php //debug(); ?>

<div class="row clearfix">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="header">
                <div class="row clearfix">
                    <div class="col-xs-12 col-sm-12">
                        <h2>LISTADO DE PQRSF</h2>
                    </div>
                                
                </div>
            </div>
            <div class="body">
                <div class="sgcDocumentos index">
            
                    <div class="table-responsive">
                        <table  class="table table-bordered table-striped table-hover dataTable js-exportable">
                            <thead>
                                <tr>
                                        
                                        <th>Nombres Apellidos</th>
                                        <th>Solicitud</th>
                                        <th>Correo</th>
                                        <th>Contacto</th>
                                        <th>Registro</th>
                                        <th>Asignación</th>
                                        <th>Responsable</th>
                                        <th>Estado</th>
                                        <th class="actions">Menu</th>
                                </tr>
                            </thead>
                            <tbody>
                           

                        <?php foreach ($pqrsf as  $value) : ?>

                        
                            <tr>
                            <!--	<td><?php echo $i; ?>&nbsp;</td>-->
                                <td><?php echo $value ->nombres . ' ' . $value ->apellidos ?></td>
                                <td><?php echo $value -> solicitud ?>&nbsp;</td>
                                <td><?php echo $value -> correo ?>&nbsp;</td>
                                <td><?php echo $value -> contacto ?>&nbsp;</td>
                                <td><?php echo $value -> registro ?>&nbsp;</td>
                                <td><?php echo $value -> asignacion ?>&nbsp;</td>
                                <td><?php echo $value -> responsable ?>&nbsp;</td>
                                <td><?php echo $value -> correo ?>&nbsp;</td>
                                
                                <td>
                                <a onclick="Gestion('<?php echo $value->id ?>')" data-toggle="modal" href='#modal-id'><i class="glyphicon glyphicon-lock" title="Gestionar"></i></a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
            <!-- #END# CPU Usage -->