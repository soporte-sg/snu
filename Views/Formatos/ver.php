<div class="card">
    <div class="header">
        <h2>
            Formatos
            <small>De clic en el proceso para ver el listado de Formatos</small>
        </h2>
    </div>
    <div class="responsive">
    <div class="body">        
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Nombre</th>
                        <th>Versión</th>
                        <th>F.Revisión</th>
                        <th>Almacenamiento</th>
                        <th>Protección</th>
                        <th>Tiempo</th>
                        <th>Disposición</th>
                        <!--<th>Responsable</th>-->
                        <th>Menu</th>
                    </tr>
                </thead>
                <tbody>
                   
                    <?php foreach ($documentos as $value) : ?>
                        <tr>
                            <td width=11% ><?= $value->CodFormato ?></td>
                            <td><a href="<?= $value->RutaFormato ?>"><?= $value->NomFormato ?></a></td>
                            <td><?= $value->Version ?></td>
                            <td><?= $value->Actualizacion == '0000-00-00' ? $value->Emision : $value->Actualizacion ?></td>
                            <td><a href="<?= $value->Recuperacion ?>"><?= $value->Almacenamiento ?></a></td>
                            <td><?= $value->Proteccion ?></td>
                            <td width=2%><?= $value->TiempoRetencion ?></td>
                            <td><?= $value->DispFinal ?></td>
                            <!--<td><?= $value->Responsable ?></td>-->
                            <td>
                                <!-- <a data-toggle="modal" href='#modal-id' type="button" onclick="Get('<?= $value->id ?>')" title="Ver datos del Documento">
                                <i class="material-icons">visibility</i>
                                </a>-->
                                <?php if ($_SESSION['user']->rol_id == 4 or $_SESSION['user']->rol_id == 1) : ?>
                                    <a data-toggle="modal" href='#modal-id' type="button" onclick="Edit('<?= $value->id ?>')" type="button" title="Actualizar datos del Documento">
                                        <i class="material-icons">system_update</i>
                                    </a>
                                <?php endif; ?>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="modal fade" id="modal-id">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body" id="resultado">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>

<script>
    function Get(doc_id) {
        var doc_id = doc_id
        $.ajax({
            data: {
                doc_id: doc_id
            },
            type: "post",
            url: "?c=formatos&a=Getdoc",
            success: function(data) {
                $('#resultado').html(data);
                //$('#resultado').html("<div class='alert alert-success'></div>");
            }
        });
    }

    function Edit(doc_id) {
        var doc_id = doc_id
        $.ajax({
            data: {
                doc_id: doc_id
            },
            type: "post",
            url: "?c=formatos&a=Edit",
            success: function(data) {
                $('#resultado').html(data);
                //$('#resultado').html("<div class='alert alert-success'></div>");
            }
        });
    }
</script>