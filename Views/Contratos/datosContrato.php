<div class="body">
    <!-- Basic Card -->
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
            <div class="card">
                <div class="header">
                    <h2> <small>Ingresa los datos para la elaboración del contrato a:<strong><br><?php echo $seleccionado->Nombre . ' ' . $seleccionado->Apellido . '<br>Identificación: ' . $seleccionado->cedula ?></strong> </small>
                    </h2>
                </div>
                <div class="body">
                    <form method="POST" action="" name="form-contrato" id="form-contrato">
                        <input name="usuario" id="usuario" type="hidden" class="form-control" value="<?php echo $seleccionado->id ?>">
                        <div class="row ">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Tipo de Contrato</label>
                                        <select name="tipoContrato" id="tipoContrato" class="form-control" required>
                                            <option value=" ">Seleccion</option>
                                            <?php
                                            foreach ($tipos as $value) : ?>
                                                <option value="<?php echo $value->id ?>"><?php echo $value->nombre ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Cargo</label>
                                        <select name="cargo_id" id="cargo_id" class="form-control" required>
                                            <option value=" ">Seleccion</option>
                                            <?php
                                            foreach ($cargos as $cargo) : ?>
                                                <option value="<?php echo $cargo->id ?>"><?php echo $cargo->cargo ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Salario</label>
                                        <input name="valor" id="valor" type="number" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Auxilio Transporte</label>
                                        <input name="aux_trans" id="aux_trans" type="text" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Fecha de Inicio</label>
                                        <input name="inicio_contrato" id="inicio_contrato" type="date" class="form-control" required>
                                        <input name="usuario_id" id="usuario_id" type="hidden" class="form-control" value="<?php echo $_SESSION['user']->FullName ?>" required>
                                        <input name="id" id="id" type="hidden" class="form-control" value="" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Termino Duración del Contrato</label>
                                        <textarea name="duracion" id="duracion" type="text" class="form-control" required></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 ">
                            <input type="button"  id="botonenviar" class="btn btn-primary btn-block" value="Registrar" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script type="text/javascript">
      $(document).ready(function(){
         $('#botonenviar').click(function(){
            if(($('#tipoContrato').val() !="")  && ($('#cargo_id').val() !="") && ($('#valor').val() !="") && ($('#aux_trans').val() !="") && ($('#usuario_id').val() !="") && ($('#duracion').val() !="")){
               var datos=$('#form-contrato').serialize();
               var persona= document.getElementById("usuario").value
               $.ajax({
                  type:"POST",
                  url:"?c=contratacion&a=Guardar",
                  data:datos,
                  success:function(r){
                     if(r==1){
                        alert("Fallo al agregar");
                     }else{
                        Swal.fire({
                            icon: 'success',
                            title: 'BIEN HECHO!!',
                            timer: 1500
                        }, )
                        setTimeout(function() {
                          window.location = '?c=contratacion&a=Historial&id='+ persona;
                        }, 1500)
                     }
                  }
               });
            } else {
                Swal.fire({
                            icon: 'error',
                            title: 'Debe Diligenciar todos los campos',
                            timer: 1500
                        }, )
            }
            return false;
         });
      });
   </script>
