     <?php 
            $usuario= $this->model->Usuario($_GET['id']);
           // print_r($usuario);
            $user=$usuario->id;
        
            $_SESSION["cc"]=$usuario->cedula;
            $nombre= strtoupper($usuario->Nombre .' '.$usuario->Apellido.' '.$usuario->cedula);
            $cargo=$this->model->Cargos();
            $obra=$this->model->Obras();
            $cliente=$this->model->Clientes();
            $Tusuarios=$this->model->UsuarioCam();
            $obras=$this->model->Obras();
            $puestos=$this->model->Puestos();
           
            
     ?>
     
    <script type="text/javascript">
    function mostrar(id){
        
        if(id==1){
        $("#1").show();
        $("#2").hide();
        $("#3").hide();
        $("#4").hide();
        $("#5").hide();
        $("#6").hide();
        }
        
       if(id==2){
        $("#1").hide();
        $("#2").show();
        $("#3").hide();
        $("#4").hide();
        $("#5").hide();
        $("#6").hide();
        }
        
        if(id==3){
        $("#1").hide();
        $("#2").hide();
        $("#3").show();
        $("#4").hide();
        $("#5").hide();
        $("#6").hide();
        }
        if(id==4){
        $("#1").hide();
        $("#2").hide();
        $("#3").hide();
        $("#4").show();
        $("#5").hide();
        $("#6").hide();
        }
        
        if(id==5){
        $("#1").hide();
        $("#2").hide();
        $("#3").hide();
        $("#4").hide();
        $("#5").show();
        }
        
        if(id==6){
        $("#1").hide();
        $("#2").hide();
        $("#3").hide();
        $("#4").hide();
        $("#5").hide();
        $("#6").show();
        }
        
    }
        
    </script>     
    
           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header bg-green">
                            <h2>
                                REGISTROS DE NOVEDADES <small>Selecciona el tipo de novedad que desea registrar a:</small><small><?php echo $nombre  ?></small>
                            </h2>
                            <ul class="header-dropdown m-r-0">
                                <li>
                                    <a href="javascript:void(0);">
                                        <i class="material-icons">info_outline</i>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <i class="material-icons">help_outline</i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="row">
                            <div class="col-md-4">
                            <?php $tipo=$this->model->Listar();?>
                             <label>Tipo de Novedad</label>
                             <select  id="status" name="status" class="form-control" name="tipo" placeholder="" onChange="mostrar(this.value);">
                                 <option value="" selected >Seleccion</option>
                                 <?php foreach($tipo AS $t):?>
                                 <option value="<?php echo $t->id ?>"><?php echo $t->novedad ?></option>
                                 <?php endforeach;?>
                             </select>
                            </div>
  <!---OTRO SI --->                          
    <div id="1" style="display: none;" class="col-md-12">
    <h2 class="text-center">Otro Si</h2>
    <hr>
    <form action="?c=Novedades&a=Proceso" method="post">
        <div class="row">
        <div class="col-md-12">
        <table class="table table-bordereD">
            <tr>
                <th>CARGO</th>
                <th>CONTRATO</th>
                <th>FECHA DE INICIO</th>
                <th>CLIENTE</th>
                <th>OBRA</th>
                <th>DURACION</th>
                <th>MARCAR</th>
            </tr>
            
            <?php
            $contratos= $this->model->Listacontrato($user);
            foreach($contratos as $contrato):?>
            <tr>
                <td><?php echo $contrato->CARGO ?></td>
                <td><?php echo $contrato->nom_c ?></td>
                <td><?php echo $contrato->inicio_contrato ?></td>
                <td><?php echo $contrato->razonsocial ?></td>
                <td><?php echo $contrato->OBRAS ?></td>
                <td><?php echo $contrato->duracion ?></td>
                <td><?php
                    $nov= $this->model->Novedad_($contrato->usuariocargo_id);
                  // print_r($nov);
                    
                    if(empty($nov) or $nov[0]->novedad=="Otro Si" ):
                    ?>
                    <input type="radio" name="chequeo" value="<?php echo $contrato->usuariocargo_id ?>"  id="ig_checkbox41[<?php echo $contrato->usuariocargo_id ?>]">
                    <label for="ig_checkbox41[<?php echo $contrato->usuariocargo_id ?>]"></label>
                    <?php else:
                      echo $nov[0]->novedad;
                    ?>
                     
                    <?php endif;?>
                </td>       
            </tr>
            <?php endforeach; ?>
        </table>
        </div>
        
        <div class="col-md-3">
        <label>Fecha:</label>
        <input type="date" name="fecha"  class="form-control"/>
        <input type="hidden" name="registro"   value="<?php echo date('Y-m-d'); ?>"/>
        <input type="hidden" name="usuario_id" value="<?php echo $user ?>"/>
        <input type="hidden" name="tipo" value="1"/>
        <input type="hidden" name="estado_id" value="1"/>
        </div>
        
        <div class="col-md-2">
        <label>Valor:</label>
        <input type="number" name="Valor" class="form-control"  required/>
        </div>
        
        <div class="col-md-2">
        <label>Duración/Meses:</label>
        <input type="text" name="duracion" class="form-control"  required/>
        </div>
        
         <div class="col-md-2">
        <label>Cliente:</label>
        
        <select name="cliente_id" class="form-control"  required >
            <option value=" ">Seleccionar</option>
            <?php foreach($cliente as $cl ): ?>
            <option value="<?php echo $cl->id ?>"><?php echo $cl->razonsocial ?></option>
            <?php endforeach; ?>
        </select>
        </div>
        
        
        <div class="col-md-3">
        <label>Obra:</label>
        <select name="obra_id" class="form-control"  required >
            <option value=" ">Seleccionar</option>
            <?php foreach($obra as $o ): ?>
            <option value="<?php echo $o->id ?>"><?php echo $o->nombre ?></option>
            <?php endforeach; ?>
        </select>
        
       
        </div>
        <div class="col-md-3">
        <label>Cargo:</label>
        <select name="cargo_id" class="form-control"  required >
            <option value=" ">Seleccionar</option>
            <?php foreach($cargo as $c ): ?>
            <option value="<?php echo $c->id ?>"><?php echo $c->nombre ?></option>
            <?php endforeach; ?>
        </select>
        </div>
        
        <div class="col-md-5">
        <label>Párrafo Otro Si:</label>
        <textarea type="text" name="parrafo" class="form-control"  required> </textarea>
        </div>
        <div class="col-md-4">
        <label>Motivo:</label>
        <textarea  name="motivo" class="form-control" required> </textarea>
        </div>
        <div class="col-md-12">
        <input type="submit" name="send" value="Enviar" class="btn btn-success"/>
        </div>
    </form>
    </div>  
   </div>
   
   
   
   
  <!---VACIO --->    
   
    <div id="2" style="display: none;">
    <h2 class="text-center">Turnos Programados</h2>
    <form action="?c=Novedades&a=Proceso2" method="post" id="formulario1" name="formulario2" >
        
       
       <table class="table table-bordered">
           <tr>
               <th>id</th>
               <th>Usuario</th>
               <th>Obra</th>
               <th>Puesto</th>
               <th>Jornada</th>
               <th>Fecha</th>
               <th>Justificación</th>
               <th>
                            <a href="javascript:seleccionar_todo()">Todos</a> | 
                            <a href="javascript:deseleccionar_todo()">Ninguno</a>
               </th>
           </tr>
          <?php 
           $turnos= $this->model->turnos($user);
          /*  echo'<pre>';
            print_r($turnos);
            echo'</pre>';*/
          
          foreach($turnos as $t): ?>
          <tr>
              <td><?php echo $t->turnoid ?></td>
              <td WIDTH="350" >
                  <select name="usuario_id[<?php echo $t->turnoid ?>]" class="form-control">
                      <?php foreach($Tusuarios as $Tusuario):?>
                      
                      <option <?php echo $Tusuario->id == $t->usuario_id ? 'selected' : ''; ?> value="<?php echo  $Tusuario->id ?>"><?php echo $Tusuario->id."-".$Tusuario->Nombre." ".$Tusuario->Apellido ?></option>
                      
                      <?php endforeach; ?>
                  </select>
                
              <td WIDTH="300">
                  <select name="obra_id[<?php echo $t->turnoid ?>]" class="form-control">
                      <?php foreach($obras as $obra):?>
                      
                      <option <?php echo $obra->id == $t->obra_id ? 'selected' : ''; ?> value="<?php echo  $obra->id ?>"><?php echo $obra->id."-".$obra->nombre ?></option>
                      
                      <?php endforeach; ?>
                  </select>
              </td>
              <td WIDTH="200">
                  
                  <select name="puesto_id[<?php echo $t->turnoid ?>]" class="form-control">
                      <?php foreach($puestos as $puesto):?>
                      
                      <option <?php echo $puesto->id == $t->id_puesto ? 'selected' : ''; ?> value="<?php echo  $puesto->id ?>"><?php echo $puesto->id."-".$puesto->nombre ?></option>
                      
                      <?php endforeach; ?>
                  </select>
              </td>
              <td>
                  <select name="jornada[<?php echo $t->turnoid ?>]" class="form-control">
                     
                      
                      <option <?php echo  $t->jornada== "Diurno" ? 'selected' : ''; ?> value="Diurno">Diurno</option>
                      <option <?php echo  $t->jornada== "Nocturno" ? 'selected' : ''; ?> value="Nocturno">Nocturno</option>
                      <option <?php echo  $t->jornada== "Libre" ? 'selected' : ''; ?> value="Libre">Libre</option>
                      <option <?php echo  $t->jornada== "Cambio Turno" ? 'selected' : ''; ?> value="Cambio Turno">Cambio Turno</option>
                      
                     
                  </select>
                  
              <td>
                  <input name="fecha[<?php echo $t->turnoid ?>]" class="form-control" type="date" value="<?php echo $t->fecha ?>">
              </td>
             <td>
                  <textarea name="descripcion[<?php echo $t->turnoid ?>]" class="form-control"  value="<?php echo $t->fecha ?>"></textarea>
              </td>
              <td style="text-align: center;">
                  <input type="hidden" name="id[<?php echo $t->turnoid ?>]" value="<?php echo $t->turnoid ?>">
                  
                  <input type="checkbox" name="chequeo[]" value="<?php echo $t->turnoid ?>"  id="ig_checkbox[<?php echo $t->turnoid ?>]">
                  <label for="ig_checkbox[<?php echo $t->turnoid ?>]"></label>
                  
              </td>
          </tr>
          
        <input type="hidden" name="tipo_id[<?php echo $t->turnoid ?>]" value="2"/>
        
        <input type="hidden" name="registro[<?php echo $t->turnoid ?>]" value="<?php echo date('Y-m-d'); ?>"/>
        <input type="hidden" name="estado_id[<?php echo $t->turnoid ?>]" value="3"/>
        <input type="hidden" name="duracion[<?php echo $t->turnoid ?>]" value="0"/>
        <input type="hidden" name="parrafo[<?php echo $t->turnoid ?>]" value="No Aplica" />
        <input type="hidden" name="obra_id[<?php echo $t->turnoid ?>]" value="97"/>
        <input type="hidden" name="valor[<?php echo $t->turnoid ?>]" value="0"/>
          
          <?php endforeach; ?> 
           
           
       </table>
        <input type="submit" name="send" value="Enviar" class="btn btn-success btn-lg btn-block" />
    </form>
   </div>  
 <!---VACIO --->     
   <div id="3" style="display: none;">
    <h2>Renuncia Voluntaria</h2>
    <form action="?c=Novedades&a=Proceso" method="post">
         <input type="hidden" name="tipo" value="3"/>
        <p>Nombre:<br/>
        <input type="text" name="nombre" /></p>
        <p>Centro:<br/>
        <input type="text" name="centro" /></p>
        <input type="submit" name="send" value="Enviar" />
    </form>
   </div>
   
   <!---TERMINACION DE CONTRATO --->   
   <div id="4" style="display: none;">
   <div class="col-md-12">
    <h2 class="text-center">
        Terminación Contrato</h2>
    <hr>
    </div>
    <form action="?c=Novedades&a=Proceso" method="post" enctype="multipart/form-data" >
        <div class="col-md-4">
        <label>Fecha Terminación:</label>
        <input type="date" name="fecha"  class="form-control"/>
        <input type="hidden" name="usuario_id" value="<?php echo $user ?>"/>
        <input type="hidden" name="registro" value="<?php echo date('Y-m-d'); ?>"/>
        <input type="hidden" name="tipo" value="4"/>
        <input type="hidden" name="estado_id" value="3"/>
        <input type="hidden" name="duracion" value="0"/>
        <input type="hidden" name="parrafo" value="No Aplica" />
        <input type="hidden" name="obra_id" value="97"/>
        <input type="hidden" name="cargo_id" value="21"/>
        <input type="hidden" name="valor" value="0"/>
       
        </div>
        <div class="col-md-4">
        <label>Soporte</label>
        <input type="file" name="doc_renuncia"  class="form-control"/>
        </div>
        
        <div class="col-md-12">
        <label>Motivo:</label>
        <textarea  name="motivo" class="form-control"> </textarea>
        </div>
        
        
        <div class="table-responsive col-md-12">
           <table class="table table-bordered table-striped table-hover dataTable js-exportable">
            <tr>
                <th>CARGO</th>
                <th>CONTRATO</th>
                <th>FECHA DE INICIO</th>
                <th>CLIENTE</th>
                <th>OBRA</th>
                <th>DURACION</th>
                <th>MARCAR</th>
            </tr>
            
            <?php
            $contratos= $this->model->Listacontrato($user);
           /* echo '<pre>';
            print_r($contratos);
            echo '</pre>';*/
            
            foreach($contratos as $contrato):?>
            <tr>
                <td><?php echo $contrato->CARGO ?></td>
                <td><?php echo $contrato->nom_c ?></td>
                <td><?php echo $contrato->inicio_contrato ?></td>
                <td><?php echo $contrato->razonsocial ?></td>
                <td><?php echo $contrato->OBRAS ?></td>
                <td><?php echo $contrato->duracion ?></td>
                <td><?php
                    $nov= $this->model->Novedad_($contrato->usuariocargo_id);
                   // print_r($nov);
                    
                    if(empty($nov) or $nov[0]->novedad=="Otro Si" ):
                    ?>
                    <input type="radio" name="chequeo" value="<?php echo $contrato->usuariocargo_id ?>"  id="ig_checkbox11[<?php echo $contrato->usuariocargo_id ?>]">
                    <label for="ig_checkbox11[<?php echo $contrato->usuariocargo_id ?>]"></label>
                    <?php else:
                      echo $nov[0]->novedad;
                    ?>
                     
                    <?php endif;?>
                </td>        
            </tr>
            <?php endforeach; ?>
        </table>
        </div>
        <div class="col-md-12">
        <input type="submit" name="send" value="Enviar" class="btn btn-success"/>
        </div>
    </form>
   </div>
   
   <!---RENUNCIA VOLUNTARIA --->
   <div id="5" style="display: none;">
   <div class="col-md-12">
    <h2 class="text-center">
        RENUNCIA VOLUNTARIA</h2>
    <hr>
    </div>
    <form action="?c=Novedades&a=Proceso" method="post" enctype="multipart/form-data">
        
        
        
        <div class="col-md-4 col-md-offset-2">
        <label>Fecha Terminación:</label>
        <input type="date" name="fecha"  class="form-control"/>
        <input type="hidden" name="usuario_id" value="<?php echo $user ?>"/>
        <input type="hidden" name="registro" value="<?php echo date('Y-m-d'); ?>"/>
        <input type="hidden" name="tipo" value="5"/>
        <input type="hidden" name="estado_id" value="4"/>
        <input type="hidden" name="duracion" value="0"/>
        <input type="hidden" name="parrafo" value="No Aplica"/>
        <input type="hidden" name="obra_id" value="97"/>
        <input type="hidden" name="cargo_id" value="21"/>
        <input type="hidden" name="valor" value="000"/>
        </div>
        <div class="col-md-4">
        <label>Soporte</label>
        <input type="file" name="doc_renuncia"  class="form-control"/>
        </div>
        <div class="col-md-8 col-md-offset-2">
        <label>Motivo:</label>
        <textarea  name="motivo" class="form-control"> </textarea>
        </div>
        <div class="table-responsive col-md-12">
           <table class="table table-bordered table-striped table-hover dataTable js-exportable">
            <tr>
                <th>CARGO</th>
                <th>CONTRATO</th>
                <th>FECHA DE INICIO</th>
                <th>CLIENTE</th>
                <th>OBRA</th>
                <th>DURACION</th>
                <th>MARCAR</th>
            </tr>
            
            <?php
            $contratos= $this->model->Listacontrato($user);
            foreach($contratos as $contrato):?>
            <tr>
                <td><?php echo $contrato->CARGO ?></td>
                <td><?php echo $contrato->nom_c ?></td>
                <td><?php echo $contrato->inicio_contrato ?></td>
                <td><?php echo $contrato->razonsocial ?></td>
                <td><?php echo $contrato->OBRAS ?></td>
                <td><?php echo $contrato->duracion ?></td>
                <td><?php
                    $nov= $this->model->Novedad_($contrato->usuariocargo_id);
                   // print_r($nov);
                    
                    if(empty($nov) or $nov[0]->novedad=="Otro Si" ):
                    ?>
                    <input type="radio" name="chequeo" value="<?php echo $contrato->usuariocargo_id ?>"  id="ig_checkbox1[<?php echo $contrato->usuariocargo_id ?>]">
                    <label for="ig_checkbox1[<?php echo $contrato->usuariocargo_id ?>]"></label>
                    <?php else:
                      echo $nov[0]->novedad;
                    ?>
                     
                    <?php endif;?>
                </td>        
            </tr>
            <?php endforeach; ?>
        </table>
        </div>
        
        <div class="col-md-12 text-center">
        <input type="submit" name="send" value="Enviar" class="btn btn-success"/>
        </div>
    </form>
   </div>
   
    
   <!---TERMINACION DE OBRA --->
   
   <div id="6" style="display: none;">
   <div class="col-md-12">
    <h2 class="text-center">
        Terminación de Obra</h2>
    <hr>
    </div>
    <form action="?c=Novedades&a=Proceso" method="post">
        <div class="col-md-4">
        <label>Fecha Terminación:</label>
        <input type="date" name="fecha"  class="form-control" required/>
        <input type="hidden" name="tipo" value="6"/>
        <input type="hidden" name="usuario_id" value="<?php echo $user ?>"/>
        <input type="hidden" name="registro" value="<?php echo date('Y-m-d'); ?>"/>
        <input type="hidden" name="estado_id" value="2"/>
        <input type="hidden" name="duracion" value="0"/>
        <input type="hidden" name="parrafo" value="No Aplica" />
        <input type="hidden" name="obra_id" value="97"/>
        <input type="hidden" name="cargo_id" value="21"/>
        <input type="hidden" name="valor" value="0"/>
       </div>
        <div class="col-md-8">
        <label>Observación:</label>
        <textarea  name="motivo" class="form-control"> </textarea>
        </div>
        
        <div class="table-responsive col-md-12">
           <table class="table table-bordered table-striped table-hover dataTable js-exportable">
            <tr>
                <th>CARGO</th>
                <th>CONTRATO</th>
                <th>FECHA DE INICIO</th>
                <th>CLIENTE</th>
                <th>OBRA</th>
                <th>DURACION</th>
                <th>MARCAR</th>
            </tr>
            
            <?php
            $contratos= $this->model->Listacontrato($user);
            foreach($contratos as $contrato):?>
            <tr>
                <td><?php echo $contrato->CARGO ?></td>
                <td><?php echo $contrato->nom_c ?></td>
                <td><?php echo $contrato->inicio_contrato ?></td>
                <td><?php echo $contrato->razonsocial ?></td>
                <td><?php echo $contrato->OBRAS ?></td>
                <td><?php echo $contrato->duracion ?></td>
                <td><?php
                    $nov= $this->model->Novedad_($contrato->usuariocargo_id);
                   // print_r($nov);
                    
                    if(empty($nov) or $nov[0]->novedad=="Otro Si" ):
                    ?>
                    <input type="radio" name="chequeo" value="<?php echo $contrato->usuariocargo_id ?>"  id="ig_checkbox31[<?php echo $contrato->usuariocargo_id ?>]">
                    <label for="ig_checkbox31[<?php echo $contrato->usuariocargo_id ?>]"></label>
                    <?php else:
                      echo $nov[0]->novedad;
                    ?>
                     
                    <?php endif;?>
                </td>        
            </tr>
            <?php endforeach; ?>
        </table>
        </div>
        
        <div class="col-md-12">
        <input type="submit" name="send" value="Enviar" class="btn btn-success"/>
        </div>
    </form>
   </div>  
   
   
   </div>                      
  </div>
                    
            
            
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>           
 <script>
    function deseleccionar_todo() {
        for (i = 0; i < document.formulario2.elements.length; i++)
            if (document.formulario2.elements[i].type == "checkbox")
                document.formulario2.elements[i].checked = 0
    }

    function seleccionar_todo() {
        for (i = 0; i < document.formulario2.elements.length; i++)
            if (document.formulario2.elements[i].type == "checkbox")
                document.formulario2.elements[i].checked = 1
    }
</script>   
            
            
            
           