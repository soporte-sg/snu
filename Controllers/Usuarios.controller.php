<?php
require_once 'Models/Usuario.php';
class UsuariosController
{
    private $usuario;
    public function __CONSTRUCT()
    {
        $this->model = new Usuario();
    }

    function Indexadmin(){
        
        $usuarios= $this->model->Index();
        require_once 'Views/Layout/clientes.php';
        require_once 'Views/Usuarios/index.php';
        require_once 'Views/Layout/foot.php';

    }
    function Clave(){        
          $usuario= $this->model->getUsuario($_REQUEST['id']);       
          require_once 'Views/Usuarios/clave.php';   
          require_once 'Views/Layout/foot.php';

    }


    function ClaveUpdate(){
        $usuario= new Usuario();
        $usuario->username=$_REQUEST['username'];
        $usuario->password= md5($_REQUEST['password']);
        $usuario->id=$_REQUEST['id'];        
        $this->model->ClaveUpdate($usuario);
    }


}