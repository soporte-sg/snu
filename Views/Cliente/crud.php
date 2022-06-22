<?php
$mail = explode('~', $clientes->correos);
?>
<!-- Basic Validation -->
<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h2>DATOS DEL CLIENTE</h2>
            </div>
            <div class="body">
                <form action="?c=clientes&a=Registrar" method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Nombre Empresa</label>
                                        <input type="text" id="nombre" name="nombre" class="form-control" placeholder="" value="<?php echo $clientes->nombre ?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Telefono</label>
                                        <input type="number" id="telefono" name="telefono" class="form-control" placeholder="" value="<?php echo $clientes->telefono ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Dirección</label>
                                        <input type="text" id="direccion" name="direccion" class="form-control" placeholder="" value="<?php echo $clientes->direccion ?>">
                                    </div>
                                </div><div class="form-group">
                                    <div class="form-line">
                                        <label>Nombre del representante</label>
                                        <input type="text" id="rector" name="rector" value="<?php echo $clientes->rector ?>" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Telefono del representante</label>
                                        <input type="text" id="rect_telefono" name="rect_telefono" value="<?php echo $clientes->rect_telefono ?>" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Correo Director</label>
                                        <input type="email" id="correos0" name="correos0" value="<?php echo @$mail[0] ?>" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Correo Secretaria</label>
                                        <input type="email" id="correos1" name="correos1" value="<?php echo @$mail[1] ?>" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Correo Secretaria</label>
                                        <input type="email" id="correos2" name="correos2" value="<?php echo @$mail[2] ?>" class="form-control">
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Salario Minimo Vigente</label>
                                        <input type="number" id="salario" name="salario" value="<?php echo $clientes->salario ?>" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <label>Logo</label>
                                        <input type="file" id="filename" name="filename" class="form-control" placeholder="" value="">
                                        <input type="hidden" id="dir" name="dir" class="form-control" placeholder="" value="">
                                    </div>
                                </div>
                            </div>

                            <input type="hidden" id="id" name="id" value="<?php echo $clientes->id ?>" class="form-control">

                        </div>
                        <button class="btn btn-primary  btn-block waves-effect" id="guardar" type="submit">GUARDAR</button>

                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- #END# Basic Validation -->
