<style>
    .container-img {
        margin: 10px auto;
        text-align: center;
        max-width: 100%;
    }
    .box {
        /* box-shadow: 5px 5px 15px black;**/
        box-shadow: 3px 3px 3px 1px rgba(0, 0, 0, 0.2);
    }
</style>
<!-- Basic Validation -->
<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h2>FICHA TECNICA DEL PRODUCTO</h2>
            </div>
            <div class="body">
                <div class="row">
                    <!-- <div class="col-md-12 ">
                        <div class="container-img">
                            <img src="<?= $producto->dir . '/' . $producto->filename ?>" class="box" alt="Image" width="180px" height="auto">
                        </div>
                    </div> -->
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <label class="form-control"> PLACA INVENTARIO DEL PRODUCTO: </label>
                                    <?php echo $producto->id; ?>
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label class="form-control"> FACTURA DEL PRODUCTO: </label>
                                    <?php echo $producto->factura  ?>&nbsp;
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label class="form-control"> PROVEEDOR: </label>
                                    <?php echo $producto->proveedor  ?>&nbsp;
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <label class="form-control"> CATEGORIA DEL PRODUCTO: </label>
                                    <?php echo $producto->categoria ?>
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label class="form-control"> FABRICANTE DEL PRODUCTO: </label>
                                    <?php echo $producto->fabricantes  ?>&nbsp;
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <label class="form-control"> ESTADO DEL PRODUCTO: </label>
                                    <?php echo $producto->estado ?>
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <label class="form-control"> NOMBRE DEL PRODUCTO: </label>
                                    <?php echo $producto->nombre ?>
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <label class="form-control"> CARACTERISTICAS DEL PRODUCTO: </label>
                                    <?php echo $producto->carateristicas ?>
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <label class="form-control"> SERIE DEL PRODUCTO: </label>
                                    <?php echo $producto->serie ?>
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <?php if ($_SESSION['rol_id'] == '2' || $_SESSION['rol_id'] == '3') { ?>
                        <?php } else { ?>
                            <div class="col-md-4">
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <label class="form-control"> COSTO DEL PRODUCTO: </label>
                                        <?php echo $producto->preciocosto ?>
                                        &nbsp;
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                        <div class="col-md-4">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <label class="form-control"> FECHA COMPRA DEL PRODUCTO: </label>
                                    <?php echo $producto->fechacompra ?>
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <label class="form-control"> SEDE - UBICACION: </label>
                                    <?php echo $producto->sede . ' - ' . $producto->ubicacion; ?>
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                        <?php if (!empty($mantenimientos)) : ?>
                            <div class="responsive">
                                <p>
                                <h3>Mantenimiento</h3>
                                </p>
                                <table id="example1" class="table table-bordered">
                                    <tr>
                                        <th>Id</th>
                                        <th>Fecha</th>
                                        <th>Responsable</th>
                                        <th>Descripcion</th>
                                        <th>Recomendación</th>
                                        <th>Detalle</th>
                                        <th>Verificación</th>
                                        <th>Menu</th>
                                    </tr>
                                    <?php foreach ($mantenimientos as $mantenimiento) : ?>
                                        <tr>
                                            <td><?php echo $mantenimiento->id ?></td>
                                            <td><?php echo $mantenimiento->fecha  ?></td>
                                            <td><?php echo utf8_encode($mantenimiento->responsable)  ?></td>
                                            <td><?php echo utf8_encode($mantenimiento->descripcion)  ?></td>
                                            <td><?php echo utf8_encode($mantenimiento->recomendacion)  ?></td>
                                            <td><?php echo utf8_encode($mantenimiento->detalles) ?></td>
                                            <td><?php echo utf8_encode($mantenimiento->verificacion) ?></td>
                                            <!-- <td class="actions">
                                                <a href="<?php echo APP_WWW . 'mantenimientos/edit/' . $mantenimiento->id . '/' . $producto->id ?>" class="glyphicon glyphicon-wrench" title="informe del mantenimiento"> </a>
                                                <a href="<?php echo APP_WWW . 'mantenimientos/edit1/' . $mantenimiento->id . '/' . $producto->id ?>" class="glyphicon glyphicon-check" title="Verificacion y validacion de mantenimiento"> </a>
                                            </td> -->
                                        </tr>
                                    <?php endforeach; ?>
                                </table>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
