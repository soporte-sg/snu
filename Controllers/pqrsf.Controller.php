<?php
// require_once 'Views/Layout/default.php';
// require_once 'Views/Cliente/index.php';
// require_once 'Views/Layout/foot.php';
// importar los modelos necesarios
require_once 'Models/database.php';
require_once 'Models/Pqrsf.php';

//nombre la clase
class PqrsfController{
    
    private $model;
    
    public function __CONSTRUCT(){
        $this->model = new Pqrs();
    }
    
    public function Index(){
        
        //require_once '../vista/header.php';
        require_once '../vista/pqrs/index.php';
       // require_once '../vista/footer.php';
        
    }
    
    public function Crud(){
        $alm = new Pqrs();
        
        if(isset($_REQUEST['id'])){
            $alm = $this->model->Obtener($_REQUEST['id']);
            require_once '../vista/header.php';
        }else{
        require_once '../vista/vista_pqrs.php';
        
        }
        
        
        require_once '../vista/pqrs/pqrs-editar.php';
        require_once '../vista/footer.php';
    }
    
    public function Add(){
        $alm = new Pqrs();
        
        $rand = range(1, 10000);
         shuffle($rand);
           foreach ($rand as $val) {
               $val ;
           }
          
          $alm->url = $_REQUEST['urlp'];
          $alm->nombres = $_REQUEST['nombres'];
          $alm->apellidos = $_REQUEST['apellidos'];
          $alm->tipo_peticion = $_REQUEST['tipo_peticion'];
          $alm->descripcion = $_REQUEST['descripcion'];
          $alm->n_contacto = $_REQUEST['n_contacto'];
          $alm->correo = $_REQUEST['correo'];
          $alm->estado = "abierto";
          $alm->radicado = "Rad-".$val;
          $alm->fecha_registro = date('Y-m-d');
          $alm->empresa = $_REQUEST['empresa'];
          $this->model->Registrar($alm);
          $i="Rad-".$val;
          $valc= base64_encode("Rad-".$val);
                            
          header("Location: https://documental.calidadsg.com/pqrs/start/index.php?url=".urlencode($alm->url)."&rad=".$valc);
           
           
      
     
      
    }
    
    public function Eliminar(){
        $this->model->Eliminar($_REQUEST['id']);
        header('Location: index.php');
    }
}
