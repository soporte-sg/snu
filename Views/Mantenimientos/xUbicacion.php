<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <div class="panel panel-info">
        <div class="panel-body">
            <form action="?c=mantenimientos&a=registrar" method="POST" name="" id="">
                <div class="row">
                    <input type="hidden" name="user_id" value="<?= $_SESSION['user']->user_id ?>">

                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                        <div class="form-group">
                            <div class="form-line">
                                <label for="">Responsable/Proveedor</label>
                                <select id="responsable_id" name="responsable_id" class="form-control" required="required">
                                    <option value="">Seleccionar</option>
                                    <?php foreach ($proveedors as $value) : ?>
                                        <option value="<?= $value->nombres.' '.$value->apellidos ?>"><?= $value->nombres.' '.$value->apellidos ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                        <div class="form-group">
                            <div class="form-line">
                                <label for="">Fecha</label>
                                <input type="date" class="form-control" id="fecha" name="fecha" placeholder="" required="required">
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                        <div class="form-group">
                            <div class="form-line">
                                <label for="">Encargado de sala o equipo</label>
                                <select id="encargado" name="encargado" class="form-control" required="required">
                                    <option value="">Seleccionar</option>
                                    <?php foreach ($funcionarios as $value) : ?>
                                        <option value="<?= $value->nombres.' '.$value->apellidos ?>"><?= $value->nombres.' '.$value->apellidos ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-12 col-lg-12">
                    <div class="form-group">
                        <div class="form-line">
                            <label for="">Descripción del mantenimiento</label>
                            <textarea type="text" class="form-control" id="descr" name="descr" required="required"></textarea>
                        </div>
                    </div>
                </div>
                <table id="#example1" class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Número</th>
                            <th>Nombre</th>
                            <th>Caracteriscas</th>
                            <th>Marcar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($productos as $key => $value) : ?>
                            <tr>
                                <td width="5%"><?= $value->id ?></td>
                                <td width="5%"><?= $value->nombre ?></td>
                                <td width="85%"><?= utf8_encode($value->carateristicas) ?></td>
                                <td width="5%" style=" text-align:center ">
                                    <input name="productos[<?php echo $key; ?>]->id" type="checkbox" class="Filled In" id="<?php echo $value->id; ?>" value="<?php echo $value->id; ?>" />
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <button type="submit" class="btn btn-primary btn-block">Registrar</button>
            </form>
        </div>
    </div>
</div>