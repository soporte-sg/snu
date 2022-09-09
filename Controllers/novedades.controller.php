<?php
@session_start();
require_once '../clases/Novedades.php';
//include("../clases/Turnos.php");

class NovedadesController{
    
    private $model;
    
    public function __CONSTRUCT(){
        $this->model = new Novedades();
    }
    
    public function Index(){
        
        require_once '../vista/header.php';
        require_once '../vista/novedades/buscar.php';
        require_once '../vista/footer.php';
        
    }
     public function Nov(){
        
        require_once '../vista/header.php';
        require_once '../vista/novedades/nov.php';
        require_once '../vista/footer.php';
        
    }
    
    public function Actualizar(){
        $alm = new Novedades();
        
        if(isset($_REQUEST['id'])){
            $alm = $this->model->ListarDatos($_REQUEST['id']);
        }
        
        require_once '../vista/novedades/novedades-editar.php';
        
    }
     public function Delete(){
        
     $this->model->Eliminar0($_REQUEST['id']);
     
         echo "<script>
		          alert('La NOVEDAD se Elimino correctamente');
		                    window.location ='?c=Novedades';
		        </script>";
		        
		 /* echo "<script>
		          alert('La gestión del PQRS n°". $alm->id ." se realizó con éxito');
		                window.location = 'index.php';
		        </script>";  */    
		        
		        
        
    }
    
    
    public function ObtenerDatos(){
        
        require_once '../vista/novedades/ObtenerDatos.php';
        
        
    }
    
    public function Buscar(){
        
        require_once '../vista/header.php';
        require_once '../vista/novedades/buscar.php';
        require_once '../vista/footer.php';
        
    }  
    
     public function otroSi(){
        
       // require_once '../vista/header.php';
        require_once '../vista/novedades/otroSi.php';
      //  require_once '../vista/footer.php';
        
    }
   
   public function Registro(){
        
        require_once '../vista/header.php';
        require_once '../vista/novedades/registro.php';
        require_once '../vista/footer.php';
        
    }
    
    
    public function Proceso(){
       $nov = new Novedades();
       
     $nov->fecha_novedad=$_REQUEST['fecha'];
     $nov->fecha_registro=$_REQUEST['registro'];
     $nov->usuario_id=$_REQUEST['usuario_id'];
    @ $nov->valor=$_REQUEST['Valor'];
     $nov->obra_id=$_REQUEST['obra_id'];
     $nov->cargo_id=$_REQUEST['cargo_id'];
     $nov->otro_si=$_REQUEST['parrafo'];
     $nov->descripcion=$_REQUEST['motivo'];
     $nov->tipo_id=$_REQUEST['tipo'];
     $nov->duracion=$_REQUEST['duracion'];
    @$nov->cliente_id=$_REQUEST['cliente_id'];
     $nov->estado_id=$_REQUEST['estado_id'];
     $nov->usuariocargo_id=$_REQUEST['chequeo'];
    
    
     
     $this->model->Registrar($nov);
       
           echo "<script>
		          alert('El registro de la NOVEDAD se realizo correctamente');
		                window.location = '?c=Novedades';
		        </script>";
        
    }
    
     public function Proceso2(){
     $nov = new Turnos();
     $data = new Novedades();
    //---------------------Turno 
     $nov->id=$_REQUEST['id'];
     $nov->usuario_id=$_REQUEST['usuario_id'];
     $nov->obra_id=$_REQUEST['obra_id'];
     $nov->puesto_id=$_REQUEST['puesto_id'];
     $nov->jornada=$_REQUEST['jornada'];
     $nov->fecha=$_REQUEST['fecha'];
     $nov->chequeo=$_REQUEST['chequeo'];
   //---------------------Novedad  
        $data->usuario_id=$_REQUEST['usuario_id'];
        $data->tipo_id=$_REQUEST['tipo_id'];
        $data->obra_id=$_REQUEST['obra_id'];
        $data->descripcion=$_REQUEST['descripcion'];
        $data->otro_si=$_REQUEST['parrafo'];
        $data->fecha_novedad=$_REQUEST['fecha'];
        $data->fecha_registro =$_REQUEST['registro'];  
        $data->estado_id =$_REQUEST['estado_id'];
        $data->duracion =$_REQUEST['duracion'];  
        $data->valor =$_REQUEST['valor']; 
   //------------------------------------  
     
     
     
     
     if($nov->chequeo !=""){
          $nov1 = new Turnos();
          $data1 = new Novedades();
          for ($i = 0; $i < count($nov->chequeo); $i++) {
              
             $nov1->usuario_id=$nov->usuario_id[$nov->chequeo[$i]];
             $nov1->obra_id=$nov->obra_id[$nov->chequeo[$i]]; 
             $nov1->puesto_id=$nov->puesto_id[$nov->chequeo[$i]]; 
             $nov1->jornada=$nov->jornada[$nov->chequeo[$i]]; 
             $nov1->fecha=$nov->fecha[$nov->chequeo[$i]]; 
             $nov1->id=$nov->id[$nov->chequeo[$i]]; 
         //-----------------novedades
            $data1->usuario_id =$data->usuario_id[$nov->chequeo[$i]];
            $data1->tipo_id=$data->tipo_id[$nov->chequeo[$i]];
            $data1->cargo_id= $data->cargo_id[$nov->chequeo[$i]];
            $data1->obra_id=$data->obra_id[$nov->chequeo[$i]];
            $data1->descripcion = $data->descripcion[$nov->chequeo[$i]];
            $data1->otro_si = $data->otro_si[$nov->chequeo[$i]];
            $data1->fecha_novedad =  $data->fecha_novedad[$nov->chequeo[$i]];
            $data1->fecha_registro =$data->fecha_registro [$nov->chequeo[$i]];
            $data1->estado_id = $data->estado_id[$nov->chequeo[$i]];
            $data1->duracion =  $data->duracion[$nov->chequeo[$i]];
            $data1->valor =$data->valor [$nov->chequeo[$i]];
            $this->model->UpdateTurno($nov1,$data1);
             
          }
           
     }
     
         
    }
    public function rest(){
        
        require_once '../vista/header.php';
        require_once '../vista/novedades/rest.php';
        require_once '../vista/footer.php';
     
   
    
    }
    
     public function Editar(){
        $data = new Novedades();
        
        
        $data->tipo_id=$_REQUEST['tipo_id'];
        $data->obra_id=$_REQUEST['obra_id'];
        $data->descripcion=$_REQUEST['descripcion'];
        $data->otro_si=$_REQUEST['otrosi'];
        $data->cargo_id=$_REQUEST['cargo_id'];
        $data->id =$_REQUEST['id'];  
        
        $this->model->Editar($data);
        
    }
    
   
    
    
    
    
}