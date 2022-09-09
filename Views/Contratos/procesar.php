<section>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Soportes</h3>
        </div>
        <div class="panel-body">
            <?php if (file_exists("Assets/soportes/".$alm->cedula."/")) {
                $ruta="Assets/soportes/".$alm->cedula."/";
                $soportes= $this->model->obtener_estructura_directorios($ruta);      
            } else {
                echo "Los Soportes no existen";
            }
        ?>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-body">
            <form action="" id="form-aspirante" name="form-aspirante" method="post">
                <input type="hidden" name="id" value="<?php echo $alm->id; ?>" />
                <div class="row clearfix">
                    <div class="col-sm-3">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Número de identificación</label>
                                <input name="cedula" value="<?php echo $alm->cedula; ?>" type="number" class="form-control" placeholder="" readonly />
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Lugar Expedición</label>
                                <input name="expedicion" value="<?php echo $alm->expedicion; ?>" type="text" class="form-control" placeholder="" readonly />
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Nombres</label>
                                <input name="Nombre" value="<?php echo $alm->Nombre; ?>" type="text" class="form-control" placeholder="" readonly />
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Apellidos</label>
                                <input name="Apellido" value="<?php echo $alm->Apellido; ?>" type="text" class="form-control" placeholder="" readonly />
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Lugar/ Fecha Nacimiento</label>
                                <input name="FechaNacimiento" value="<?php echo $alm->FechaNacimiento; ?>" type="text" class="form-control" placeholder="CALI/AA-MM-DD" readonly />
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Direccion</label>
                                <input name="direccion" value="<?php echo $alm->direccion; ?>" type="text" class="form-control" placeholder="" readonly />
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Barrio</label>
                                <input name="Barrio" type="text" value="<?php echo $alm->Barrio; ?>" class="form-control" placeholder="" readonly />
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Correo Electronico</label>
                                <input name="Correo" type="mail" value="<?php echo $alm->Correo; ?>" class="form-control" placeholder="" readonly />
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Telefono Fijo</label>
                                <input name="telefono_fijo" type="number" value="<?php echo $alm->telefono_fijo; ?>" class="form-control" placeholder="" readonly />
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Telefono Movil</label>
                                <input name="celular" type="number" value="<?php echo $alm->celular; ?>" class="form-control" placeholder="" readonly />
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <label>ASPIRANTE A: </label>
                        <select name='cargo_id' class="form-control show-tick" required>
                            <?php foreach ($cargos as $key => $value) : ?>
                                <option value="<?= $value->id ?>" <?= $value->id = $post->cargo_id ? 'selected' : '' ?>><?php echo $value->cargo; ?></option>
                            <?php endforeach; ?>

                        </select>
                    </div>
                    <div class="col-sm-3">
                        <label>CAMBIAR ESTADO DEL ASPIRANTE</label>
                        <select name='estado' id="estado" class="form-control show-tick" required>
                            <option value="">-- Seleccionar --</option>
                            <option value="2">SELECCIONADO</option>
                            <option value="4">NO SELECCIONADO</option>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <input name="estrato" value="<?php echo $alm->estrato; ?>" type="hidden" class="form-control" placeholder="" />
                            <input name="estado_civil" value="<?php echo $alm->estado_civil; ?>" type="hidden" class="form-control" placeholder="" />
                            <input name="nacionalidad" value="<?php echo $alm->nacionalidad; ?>" type="hidden" class="form-control" placeholder="" />
                            <input name="victima_conflicto" value="<?php echo $alm->victima_conflicto; ?>" type="hidden" class="form-control" placeholder="" />
                            <input name="usuario_tipo" value="<?php echo $alm->usuario_tipo; ?>" type="hidden" class="form-control" placeholder="" />
                            <input name="rh" value="<?php echo $alm->rh; ?>" type="hidden" class="form-control" placeholder="" />
                            <input name="nivel_libreta" value="<?php echo $alm->nivel_libreta; ?>" type="hidden" class="form-control" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <input type="" name="botonenviar" id="botonenviar" class="btn btn-primary btn-block" value="Registrar" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<script type="text/javascript">
    $(document).ready(function() {
        $('#botonenviar').click(function() {
            var datos = $('#form-aspirante').serialize();
            $.ajax({
                type: "POST",
                url: "?c=contratacion&a=EstadoAsp",
                data: datos,
                success: function(r) {
                    if (r == 1) {
                        Swal.fire({
                            icon: 'success',
                            title: 'BIEN HECHO!!',
                            timer: 1500
                        }, )
                        setTimeout(function() {
                            window.location.reload(1);
                        }, 1500)
                    } else {
                        Swal.fire({
                            icon: 'success',
                            title: 'BIEN HECHO!!',
                            timer: 1500
                        }, )
                        setTimeout(function() {
                            window.location.reload(1);
                        }, 1500)
                    }
                }
            });
        });
    });
</script>