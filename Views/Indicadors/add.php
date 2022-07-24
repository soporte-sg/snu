<!-- Input -->
<!--   <div class="row clearfix">-->
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="card">
        <div class="header">
            <h2>
                REGISTRAR INDICADOR
            </h2>
        </div>
        <div class="body">

            <form action="" name="formIndicador" id="formIndicador" method="POST">



                <div class="row clearfix">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Nombre</label>
                                <?php $fecha = date('Y-m-d'); ?>
                                <input type="text" name="nombre" name="nombre" class='form-control' value="<?php echo $indicador->nombre ?> ">
                            </div>
                        </div>
                    </div>


                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Proceso Responsable</label>
                            <select name="proceso_id" id="proceso_id" class="form-control">
                                <option value="NA">Seleccione</option>
                                <?php foreach ($procesos as $pro) : ?>
                                    <option value="<?php echo $pro->Iniciales; ?>" <?php echo $indicador->proceso_id == $pro->id ? 'selected' : ''   ?>><?php echo $pro->Iniciales . '-' . $pro->NombreProceso; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>

                    <div class="col-sm-6" id="div_subcategorias_wrapper">


                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Fecha Control</label>
                            <input type="date" name="fecha_control" class='form-control' value="<?php echo date('Y-m-d', strtotime($indicador->fecha_control)); ?>">

                        </div>
                    </div>
                </div>
                <?php  //debug($formulas);
                ?>

                <div class="col-sm-6">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Formula</label>
                            <select class="form-control show-tick" name="formula_id" required>
                                <option value="">Seleccionar</option>
                                <?php foreach ($formulas as  $formula) : ?>
                                    <option value="<?php echo $formula->id ?>" <?php echo $indicador->formula_id == $formula->id ? 'selected' : '' ?>><?php echo $formula->formula ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Fuente del recurso</label>
                            <textarea class="form-control" name="definicion" value="" required><?php echo $indicador->definicion; ?></textarea>

                        </div>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Interpretación</label>
                            <textarea class="form-control" name="interpretacion" value="" required><?php echo $indicador->interpretacion; ?></textarea>

                        </div>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Periodicidad</label>
                            <select class="form-control" name="periodicidad" required>
                                <option value="">Seleccionar</option>
                                <option value="mensual" <?php echo $indicador->periodicidad == 'mensual' ? 'selected' : '' ?>>Mensual</option>
                                <option value="bimensual" <?php echo $indicador->periodicidad == 'bimensual' ? 'selected' : '' ?>>Bimensual</option>
                                <option value="trimestral" <?php echo $indicador->periodicidad == 'trimestral' ? 'selected' : '' ?>>Trimestral</option>
                                <option value="semestral" <?php echo $indicador->periodicidad == 'semestral' ? 'selected' : '' ?>>Semestral</option>
                                <option value="anual" <?php echo $indicador->periodicidad == 'anual' ? 'selected' : '' ?>>Anual</option>
                            </select>

                        </div>
                    </div>
                </div>
                <div class="col-sm-6">

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Operador</label>
                            <div class="form-line">
                                <select name="meta" class="form-control" required>
                                    <option value="">seleccionar</option>
                                    <option value="=" <?php echo $indicador->meta == '=' ? 'selected' : '' ?>>IGUAL QUE ( = )</option>
                                    <option value=">" <?php echo $indicador->meta == '>' ? 'selected' : '' ?>>MAYOR QUE( > )</option>
                                    <option value=">=" <?php echo $indicador->meta == '>=' ? 'selected' : '' ?>>MAYOR IGUAL QUE ( >= )</option>
                                    <option value="<" <?php echo $indicador->meta == '<' ? 'selected' : '' ?>>MENOR QUE( < )</option>
                                    <option value="<=" <?php echo $indicador->meta == '<=' ? 'selected' : '' ?>>MENOR IGUAL QUE ( <= )</option>
                                    <option value="entre" <?php echo $indicador->meta == 'entre' ? 'selected' : '' ?>>ENTRE</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Meta</label>
                            <div class="form-line">
                                <input class="form-control" name="num_meta" placeholder="" type="text" value="<?php echo $indicador->num_meta; ?>" required>
                            </div>
                        </div>
                    </div>
                </div>
                <input name="id" id="id" type="hidden" value="<?php echo $indicador->id; ?>">
                <input type="button" id="guardar" class="btn btn-default btn-block" value="Registrar">


            </form>
        </div>


    </div>
</div>
</div>
</div>
</div>
<!-- #END# Input -->
<script>
    $(document).on('click', '#guardar', function(e) {
        var data = $("#formIndicador").serialize();
        $.ajax({
            data: data,
            type: "post",
            url: "?c=indicadors&a=Crud",
            success: function(data) {
                Swal.fire({
                    icon: 'success',
                    title: 'BIEN HECHO!!',
                    timer: 1500
                }, )
                // $('#resultado').load(' #resultado');
            }

        })
    });
    $('#proceso_id').on('change', function(e){       
        var proceso_id = document.getElementById("proceso_id").value
        $.ajax({
            data: {proceso_id:proceso_id},
            type: "post",
            url: "?c=indicadors&a=Cargos",

            success: function(resp) {
                $('#div_subcategorias_wrapper').html(resp);
               
            }


        })
    });
</script>