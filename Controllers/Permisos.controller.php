<?php
require_once 'Models/Permiso.php';
class PermisosController
{
    private $rol;
    public function __CONSTRUCT()
    {
        $this->model = new Permiso();
    }


    public function Index(){
        $roles=$this->model->Index();
        require_once 'Views/layout/clientes.php';
        require_once 'Views/Permisos/index.php';
        require_once 'Views/layout/foot.php'; 
    }

    public function Crud(){

        $permiso = $this->model->Permiso($_REQUEST['id']);
        
        require_once 'Views/Permisos/crud.php';
        
    }

    public function Ver(){     
        $update=$this->model->Obtener($_REQUEST['id']);       
        require_once 'Views/Permisos/ver.php';
        
    }
    public function Actualizar(){     
        
        $permiso=new Permiso();
        $permiso->crear=$_REQUEST['crear'];
        $permiso->leer=$_REQUEST['leer'];
        $permiso->actualizar=$_REQUEST['actualizar'];
        $permiso->borrar=$_REQUEST['borrar'];
        $permiso->id=$_REQUEST['id'];
        $permiso->tipo_usuarios=$_REQUEST['tipo_usuarios'];      
        $this->model->Actualizar($permiso);
        
    }


}