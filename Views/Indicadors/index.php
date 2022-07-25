<?php //print_r($cargos)
?>
<div class="row clearfix">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="header">
                <div class="row clearfix">
                    <div class="col-xs-12 col-sm-12">
                        <h2>LISTADO DE INDICADORES</h2>
                    </div>
                </div>
                <ul class="header-dropdown m-r--5">
                    <li class="dropdown">
                        <a href="?c=indicadors&a=add" class="btn btn-success">Agregar Indicador</a>
                    </li>
                </ul>
            </div>
            <div class="body">
                <div class="sgcDocumentos index">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nombre</th>
                                    <th>Proceso</th>
                                    <th>Formula</th>
                                    <th>Periodicidad</th>
                                    <th>Fecha Control</th>
                                    <th>Registros</th>
                                    <th>Menu</th>
                                </tr>
                            <tbody>
                                </thead>
                                <?php
                                //debug($indicadors);

                                foreach ($indicadors as $indicador) : ?>
                                    <tr>
                                        <td><?php echo $indicador->i_id ?></td>
                                        <td><?php echo $indicador->nombre ?></td>
                                        <td><?php echo $indicador->NombreProceso . '<br>';
                                            foreach ($cargos as $cargo) :
                                                if ($indicador->cargo_id == $cargo->id)
                                                    echo $cargo->cargo;
                                            endforeach;
                                            ?>&nbsp;</td>
                                        <td> <?php echo $indicador->formula ?></td>
                                        <td><?php echo $indicador->periodicidad ?></td>
                                        <td><?php echo $indicador->fecha_control ?></td>
                                        <td></td>
                                        <td class="actions">                                         

                                            <a href="<?php echo '?c=indicadors&a=add&id=' . $indicador->i_id ?>" type="button" class="" title="editar indicador">
                                                <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                                            </a>
                                            <a onclick="Ver('<?= $indicador->i_id ?>')" data-toggle="modal" href='#modal-id' type="button" class="" title="crear meta">
                                                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                                            </a>
                                            <a onclick="VerIndex('<?= $indicador->i_id ?>')" data-toggle="modal" href='#modal-id' type="button" class="" title="ver metas">
                                                <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                                            </a>
                                            <a href="<?php echo '?c=indicadors&a=datos&id=' . $indicador->i_id ?>" type="button" class="" title="Registrar datos del indicador">
                                                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                                            </a>
                                            <a href="<?php echo '?c=indicadors&a=verdatos&indicador_id=' . $indicador->i_id ?>" type="button" class="" title="Registrar datos del indicador">
                                                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                            </a>
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


<div class="modal fade" id="modal-id">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Meta</h4>
            </div>
            <div class="modal-body" id="metas">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script>
    function Ver(val) {
        var id = val
        $.ajax({
            data: {
                ind: id
            },
            type: "post",
            url: "?c=indicadors&a=meta",

            success: function(resp) {
                $('#metas').html(resp);
                //$('#resultado').html("<div class='alert alert-success'></div>");
            }
        });
    }

    function VerIndex(val) {
        var id = val
        $.ajax({
            data: {
                ind: id
            },
            type: "post",
            url: "?c=indicadors&a=Indexmeta",

            success: function(resp) {
                $('#metas').html(resp);
                //$('#resultado').html("<div class='alert alert-success'></div>");
            }
        });
    }
</script>