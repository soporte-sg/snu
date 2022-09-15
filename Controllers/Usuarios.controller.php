<?php
require_once 'Models/Usuario.php';
require_once 'Models/Cliente.php';
require_once 'Models/Roles.php';
require_once 'Models/Cargo.php';
//require_once 'Models/Squema.php';
class UsuariosController
{
    private $usuario;
    public function __CONSTRUCT()
    {
        $this->model = new Usuario();
    }

    function Indexadmin()
    {

        $usuarios = $this->model->Index();
       
        require_once 'Views/Layout/clientes.php';
        require_once 'Views/Usuarios/index.php';
        require_once 'Views/Layout/foot.php';
    }
    function Index2()
    {
        $usuario= new Cargo();        
        $usuarios = $usuario->IndexUsuarios($_SESSION['datos_cliente']->id);
        require_once 'Views/Layout/default.php';
        require_once 'Views/Usuarios/index2.php';
        require_once 'Views/Layout/footer.php';
    }
    function Clave()
    {
        $usuario = $this->model->getUsuario($_REQUEST['id']);
        require_once 'Views/Usuarios/clave.php';
       // require_once 'Views/Layout/foot.php';
    }


    function ClaveUpdate()
    {
        $usuario = new Usuario();
        $usuario->username = $_REQUEST['username'];
        $usuario->password = md5($_REQUEST['password']);
        $usuario->id = $_REQUEST['id'];
        $this->model->ClaveUpdate($usuario);
    }

    function Registrar()
    {
        $usuario = new Usuario();
        if (isset($_REQUEST['id'])) {
            $usuario = $this->model->getUsuario($_REQUEST['id']);
        } 
     if(isset($_SESSION['datos_cliente'])){
     $cargo= new Cargo();  
     $cargos=$cargo->CargoIndex();
     }
     $rol= new Roles();
     $roles=$rol->Index();
     $cliente =new Cliente();
     $clientes = $cliente->getCliente01();
     //$squemas =new Squema();
     require_once 'Views/Usuarios/crud.php';   
    }


    function Crud()
    {
        $usuario = new Usuario();     
        $usuario->id = $_REQUEST['id'];   
        $usuario->nombres = $_REQUEST['nombres'];
        $usuario->apellidos = $_REQUEST['apellidos'];
        $usuario->email = $_REQUEST['email'];
        $usuario->identificacion = $_REQUEST['identificacion'];
        // $usuario->cliente_id = $_REQUEST['cliente_id'];       
        $usuario->cargo_id = $_REQUEST['cargo_id'];
       
        $usuario->rol_id = $_REQUEST['rol_id'];
        $usuario->estado = $_REQUEST['estado'];

        $usuario->id > 0 ?
            $this->model->Actualizar($usuario) :
            $this->model->Registrar($usuario);
    }
}
