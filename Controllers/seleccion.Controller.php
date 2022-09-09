<?php
require_once 'Models/database.php';
require_once 'Models/Seleccion.php';
require_once 'Models/Persona.php';
require_once 'Models/Cargo.php';


class SeleccionController{
    
    private $model;
    
    public function __CONSTRUCT(){
        $this->model = new Seleccion();
    }
    
      public function Index(){
        $postulado=new Seleccion();
        $postulados= $this->model->Postulados();        
        require_once 'Views/Layout/talento.php';
        require_once 'Views/seleccion/index.php';
        require_once 'Views/Layout/footer.php';
        
    } 
      public function FormAspirante(){
        $postulado=new Seleccion();
        $postulados= $this->model->Postulados();

        $cargo =new Cargo();
        $cargos= $cargo->SetCargos();
        
        require_once 'Views/Layout/talento.php';
        require_once 'Views/seleccion/aspirantes.php';
        require_once 'Views/Layout/footer.php';
        
    } 
      public function Gestion(){
        $postulado=new Seleccion();
        $postulados= $this->model->Postulados();

        $cargo =new Cargo();
        $cargos= $cargo->SetCargos();
        $personas =new Persona();
        $persona= $personas->GetPersona($_REQUEST['id']);
        
        require_once 'Views/Layout/talento.php';
        require_once 'Views/seleccion/gestion.php';
        require_once 'Views/Layout/footer.php';
        
    } 
     
    


  public function Seleccion(){
        
        require_once 'Views/talento.php';
        require_once 'Views/usuario/seleccion.php';
        require_once 'Views/footer.php';
        
    }    
    
    
     public function Complementarios(){
        
        require_once 'Views/talento.php';
        require_once 'Views/usuario/complementarios.php';
        require_once 'Views/footer.php';
        
    }
    
    
    public function Buscar(){
        
        require_once 'Views/talento.php';
        require_once 'Views/usuario/buscar.php';
        require_once 'Views/footer.php';
        
    }  
    
    public function Conf($id){
        
        if(isset($_REQUEST['id'])){
            $alm = $this->model->Obtener2($_REQUEST['id']);
        }
        require_once 'Views/talento.php';
        require_once 'Views/usuario/conf.php';
        require_once 'Views/footer.php';
        
    }  
     public function Doc(){
        $alm = new Usuario();
        if(isset($_REQUEST['id'])){
            $alm = $this->model->Obtener2($_REQUEST['id']);
        }
       
        require_once '../Views/talento.php';
        require_once '../Views/usuario/doc.php';
        require_once '../Views/footer.php';
        
             
        
    }
    
    
     public function Doc01(){
        $alm = new Usuario();
        $alm->id = $_REQUEST['id1'];
        $alm->cedula = $_REQUEST['cedula'];
       
      // exit();
       
           $this->model->Doc($alm)/*registra Los doc*/ ;
           
         // header('Location: index.php');
           
       echo"<script>
       
       
       </script>";
             
        
    }
    
    
    public function Conf2(){
        $alm = new Usuario();
        $alm->id = $_REQUEST['id'];
        $alm->rol_id =$_REQUEST['rol_id'];
        $alm->usuario = $_REQUEST['usuario'];
        $alm->clave = md5($_REQUEST['clave']);
        $alm->estado = $_REQUEST['estado'];
        
       $this->model->Conf($alm);/*Actualiza los datos de ingreso*/ 
        
    }
    
    
    public function Proceso(){
        
    $alm = new Usuario();
        
        if(isset($_REQUEST['id'])){
            $alm = $this->model->Obtener($_REQUEST['id']);
        }
        
        require_once '../Views/header.php';
        require_once '../Views/usuario/proceso.php';
        require_once '../Views/footer.php';
         
    }
    
    
    
    
    public function Aspirantes(){
        
        require_once '../Views/talento.php';
        require_once '../Views/usuario/aspirantes.php';
        require_once '../Views/footer.php';
        $alm = new Usuario(); 
       
       
       if(isset($_REQUEST['id'])){   
         $alm->id = $_REQUEST['id'];
         $alm->Nombre = $_REQUEST['Nombre'];
         $alm->Apellido = $_REQUEST['Apellido'];
         $alm->Correo = $_REQUEST['Correo'];
         $alm->Sexo = $_REQUEST['Sexo'];
         $alm->FechaNacimiento = $_REQUEST['FechaNacimiento'];
         $alm->LugarNacimiento = $_REQUEST['LugarNacimiento'];
         $alm->cedula = $_REQUEST['cedula'];
         $alm->expedicion = $_REQUEST['expedicion'];
         $alm->rh = $_REQUEST['grupo'].$_REQUEST['rh'];
         $alm->direccion = $_REQUEST['direccion'];
         $alm->Barrio = $_REQUEST['Barrio'];
         $alm->celular = $_REQUEST['celular'];
         $alm->telefono_fijo = $_REQUEST['telefono_fijo'];
         $alm->rol_id = 1;
         $alm->foto = $_REQUEST['foto'];
         $alm->hv = $_REQUEST['hv'];
         $alm->FechaRegistro = date('Y-m-d');
         $alm->estado = 1;
         $alm->usuario = $_REQUEST['cedula'];
         $alm->clave = md5($_REQUEST['cedula']);
         $pos = new Usuario(); 
         $pos->usuario_id=$_REQUEST['cedula'];
         $pos->cargo_id= $_REQUEST['cargo_id'];
         $pos->aplicacion= date('Y-m-d');
      
      
      //exit();   
          $from='korikenti2@gmail.com';
          $to=$_REQUEST['Correo'];
          $subjetc='App Mensajeria';
          $message = " <html>
                        <head>
                       <!-- <title>Servicios Generales del Valle</title>-->
                        </head>
                        <body style='text-align:center;background-color:#C6F68D;color:black'>
                        <p>
                        <h1 style='background-color:#64B5F6;color:white'>Información</h1>
                        <h4>División de talento humano</h4>
                        
                        <h3>Cordial Saludo</h3>
                        El registro a la vacante se realizó con éxito, si cumples con el perfil y eres seleccionado se estarán comunicando contigo para realizar la entreViews.<br> <br> 
                            
                          <br>  
                           <!-- <img src='https://sgvalle.com/usuarios/assets/img/logo.jpg'>
                            
                            <h5 style='background-color:#2196F3;color:black'>Servicios Generales del Valle</h5>-->
                        </p>
                        </body>
                        </html>";
        // $message = " test prueba";
          
        
        
        /*correos variantes*/
         
         //exit();
         $this->model->Correo2($to,$message);/*envia la notificacion*/
         
         $this->model->Aspirante($alm);/*sube documentos*/
         $this->model->Registrar($alm);/*registra al prospesto*/
         $this->model->Postulacion($pos);/*registra el cargo a postularse*/
         
       }
        
    } 
    
    
    
    
    
    
    public function Crud(){
        $alm = new Usuario();
        
        if(isset($_REQUEST['id'])){
            $alm = $this->model->Obtener2($_REQUEST['id']);
        }
        
        require_once '../Views/header.php';
        require_once '../Views/usuario/usuario-editar.php';
        require_once '../Views/footer.php';
    }
    
    
    public function Hojavida(){
        $alm = new Usuario();
        
        $alm = $this->model->Hojavida($_REQUEST['id']);
        $infofam =$this->model->Infofamilia($_REQUEST['id']);
        $infoedu =$this->model->Infoedu($_REQUEST['id']);
        $dotacion =$this->model->Dotacion($_REQUEST['id']);
        
        require_once '../Views/header.php';
        require_once '../Views/usuario/hojavida.php';
        require_once '../Views/footer.php';
    }
   
    
    public function Guardar(){
        $alm = new Usuario();
        
         $alm->id = $_REQUEST['id'];
         $alm->Nombre = $_REQUEST['Nombre'];
         $alm->Apellido = $_REQUEST['Apellido'];
         $alm->Correo = $_REQUEST['Correo'];
         $alm->Sexo = $_REQUEST['Sexo'];
         $alm->FechaNacimiento = $_REQUEST['FechaNacimiento'];
         $alm->LugarNacimiento = $_REQUEST['LugarNacimiento'];
         $alm->cedula = $_REQUEST['cedula'];
         $alm->expedicion = $_REQUEST['expedicion'];
         $alm->rh = $_REQUEST['grupo'].$_REQUEST['rh'];
         $alm->nivel_libreta = $_REQUEST['nivel_libreta'];
         $alm->direccion = $_REQUEST['direccion'];
         $alm->Barrio = $_REQUEST['Barrio'];
         $alm->tipo_residencia = $_REQUEST['tresidencia'];
         $alm->estrato= $_REQUEST['estrato'];
         $alm->estado_civil= $_REQUEST['estado_civil'];
         $alm->nacionalidad= $_REQUEST['nacionalidad'];
         $alm->exequiales= $_REQUEST['exequiales'];
         $alm->getnico= $_REQUEST['getnico'];
         $alm->victima_conflicto= $_REQUEST['victima_conflicto'];
         $alm->celular = $_REQUEST['celular'];
         $alm->usuario = $_REQUEST['usuario'];
         $alm->clave = md5($_REQUEST['clave']);
         $alm->telefono_fijo = $_REQUEST['telefono_fijo'];
         $alm->rol_id = $_REQUEST['rol_id'];
         $alm->FechaRegistro = date('Y-m-d');
         $alm->ciudad_res =$_REQUEST['ciudad_res'];
         $alm->estatura =$_REQUEST['estatura'];
          //$fot->foto = $_REQUEST['foto'];
      // exit();   
          $this->model->Foto($alm);
        
        $alm->id > 0 
            ? $this->model->Actualizar($alm)
            : $this->model->Registrar($alm);
            
            
        
       // header('Location: index.php');
    }
    public function Guardar2(){
        $alm = new Usuario();
        
         $alm->id = $_REQUEST['id'];
         $alm->Nombre = $_REQUEST['Nombre'];
         $alm->Apellido = $_REQUEST['Apellido'];
         $alm->Correo = $_REQUEST['Correo'];
         $alm->Sexo = $_REQUEST['Sexo'];
         $alm->FechaNacimiento = $_REQUEST['FechaNacimiento'];
         $alm->cedula = $_REQUEST['cedula'];
         $alm->expedicion = $_REQUEST['expedicion'];
         $alm->rh = $_REQUEST['grupo'].$_REQUEST['rh'];
         $alm->nivel_libreta = $_REQUEST['nivel_libreta'];
         $alm->direccion = $_REQUEST['direccion'];
         $alm->Barrio = $_REQUEST['Barrio'];
         $alm->tipo_residencia = $_REQUEST['tresidencia'];
         $alm->celular = $_REQUEST['celular'];
         $alm->usuario = $_REQUEST['usuario'];
         $alm->clave = md5($_REQUEST['clave']);
         $alm->telefono_fijo = $_REQUEST['telefono_fijo'];
         $alm->rol_id = $_REQUEST['rol_id'];
         $alm->FechaRegistro = date('Y-m-d');
         $alm->estrato=$_REQUEST['estrato'];
		 $alm->estado_civil=$_REQUEST['estado_civil'];
		 $alm->nacionalidad=$_REQUEST['nacionalidad'];
		 $alm->victima_conflicto=$_REQUEST['victima_conflicto'];
		 $alm->usuario_tipo=$_REQUEST['usuario_tipo'];
		 
         $alm->id > 0 
            ? $this->model->Actualizar2($alm)
              
            : $this->model->Registrar($alm);
        
          $from='korikenti2@gmail.com';
          $to=$_REQUEST['Correo'];
          $subjetc='app mensajeria';
          $message = " <html>
                        <head>
                       <!-- <title>Servicios Generales del Valle</title>-->
                        </head>
                        <body style='text-align:center;background-color:#C6F68D;color:black'>
                        <p>
                        <h1 style='background-color:#64B5F6;color:white'>Información</h1>
                        <h4>División de talento humano</h4>
                        
                        <h3>Cordial Saludo</h3>
                         Felicitaciones, fuiste seleccionado para trabajar con nosotros, por favor termina de diligenciar y subir los soporte en nuestro portal web.
                         https://sgvalle.com
                         Recuerda que este proceso será de verificación de documentos, en caso que no se cumpla en su totalidad el proceso de contratación no alcanzar su final.
                         Podrás ingresar utilizando tu número de identificación sin puntos en el campo de USUARIO y CLAVE.

                            
                          <br>  
                           <!-- <img src='https://sgvalle.com/usuarios/assets/img/logo.jpg'>
                            
                            <h5 style='background-color:#4468d3;color:white'>Servicios Generales del Valle</h5>-->
                        </p>
                        </body>
                        </html>";
        
        
        /*correos variantes*/
        if($_REQUEST['rol_id']==6){
              $this->model->Correo2($to,$message);
        }
              
        
        header('Location: index.php');
    }
    
    public function Eliminar(){
        $this->model->Eliminar($_REQUEST['id']);
        header('Location: index.php');
    }
    
    public function Seleccionado(){
       $alm = new Usuario();
        
        if(isset($_REQUEST['id'])){
            $alm = $this->model->Obtener($_REQUEST['id']);
        }
        
        require_once '../Views/talento.php';
        require_once '../Views/usuario/seleccionado.php';
        require_once '../Views/footer.php';
        
        
    }
    
    
    public function Documentos(){
        
        require_once '../Views/talento.php';
        require_once '../Views/usuario/aspirantes.php';
        require_once '../Views/footer.php';
        $alm = new Usuario();
        $con = new Usuario();
       
       if(isset($_REQUEST['id'])){   
         $alm->id = $_REQUEST['id'];
         $alm->Nombre = $_REQUEST['Nombre'];
         $alm->Apellido = $_REQUEST['Apellido'];
         $alm->Correo = $_REQUEST['Correo'];
         $alm->FechaNacimiento = $_REQUEST['FechaNacimiento'];
         $alm->cedula = $_REQUEST['cedula'];
         $alm->expedicion = $_REQUEST['expedicion'];
         $alm->direccion = $_REQUEST['direccion'];
         $alm->Barrio = $_REQUEST['Barrio'];
         $alm->tipo_residencia = $_REQUEST['tresidencia'];
         $alm->celular = $_REQUEST['celular'];
         $alm->telefono_fijo = $_REQUEST['telefono_fijo'];
         $alm->FechaRegistro = date('Y-m-d');
         $alm->estrato=$_REQUEST['estrato'];
		 $alm->estado_civil=$_REQUEST['estado_civil'];
		 $alm->nacionalidad=$_REQUEST['nacionalidad'];
		 $alm->victima_conflicto=$_REQUEST['victima_conflicto'];
	 
     	 $alm->rol_id=2;
     	 $alm->estado=1;
    	  
     	 $con->cliente_id=$_REQUEST['cliente_id'];
     	 $con->valor=$_REQUEST['valorc'];
         $con->duracion=$_REQUEST['duracion'];
         $con->rol_id=$_REQUEST['rol_id'];
         $con->id = $_REQUEST['id'];
         $con->registro = date('Y-m-d');
         $con->inicio_contrato=$_REQUEST['inicio_contrato'];
         $con->tipo_contrato=$_REQUEST['tipo_contrato'];
         
          $from='korikenti2@gmail.com';
          $to=$_REQUEST['Correo'];
          $subjetc='App Mensajeria';
          
         if($_REQUEST['rol_id'] !=6){
          $message = " <html>
                        <head>
                      <!--  <title>Servicios Generales del Valle</title>-->
                        </head>
                        <body style='text-align:center;background-color:#C6F68D;color:black'>
                        <p>
                        <h1 style='background-color:#64B5F6;color:white'>Información</h1>
                        <h4>División de talento humano</h4>
                        
                        <h3>Cordial Saludo</h3>
                         Felicitaciones, fuiste seleccionado para trabajar con nosotros,
                         El registro en el portal web para la vacante ser realizo con éxito,
                         pronto se comunicarán contigo para el inicio de actividades.

                            
                          <br>  
                         <!--   <img src='https://sgvalle.com/usuarios/assets/img/logo.jpg'>
                            
                            <h5 style='background-color:#4468d3;color:white'>Servicios Generales del Valle</h5>-->
                        </p>
                        </body>
                        </html>";
          }else{
              
              $message = " <html>
                        <head>
                       <!-- <title>Servicios Generales del Valle</title>-->
                        </head>
                        <body style='text-align:center;background-color:#C6F68D;color:black'>
                        <p>
                        <h1 style='background-color:#64B5F6;color:white'>Información</h1>
                        <h4>División de talento humano</h4>
                        
                        <h3>Cordial Saludo</h3>
                         EL REGISTRO DE TUS SOPORTES SE REALIZO CON EXITO Y SE ENCUENTRAN EN PROCESO DE VERIFICACION.
                         
                         <br>  
                        <!--    <img src='https://sgvalle.com/usuarios/assets/img/logo.jpg'>
                            
                            <h5 style='background-color:#4468d3;color:white'>Servicios Generales del Valle</h5>-->
                        </p>
                        </body>
                        </html>";
                  
          }
         
        /*correos variantes*/
         $this->model->Correo2($to,$message);
         $this->model->Contrato($con);
         $this->model->Documentos($alm);
         $this->model->Actualizar3($alm);
         
         
       }
        
    }
    
    
    
    public function Contrato(){
        
        require_once '../Views/talento.php';
        require_once '../Views/usuario/contratos.php';
        require_once '../Views/footer.php';
        $alm = new Usuario(); 
        
        
    }
        
    
}