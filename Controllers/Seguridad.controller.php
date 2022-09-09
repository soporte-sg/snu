<?php
require_once 'Models/Seguridad.php';
class SeguridadController
{
    public function __CONSTRUCT()
    {
        $this->model = new Seguridad();
    }

    public function Logon()
    {
        if (isset($_REQUEST['usuario']) && isset($_REQUEST['clave'])) {
            $user =  $this->model->Identificar($_REQUEST['usuario'], md5($_REQUEST['clave']));
            
            if ($user) { //print_r($user);
                 @session_start();
                 $_SESSION['start'] = 'TRUE';
                 $_SESSION['log'] = 'true';
                 $_SESSION['user'] = $user;
                 $_SESSION['squema'] = $user->squema;
                 $_SESSION['rol'] = $user->rol;
                 $_SESSION['rol_id'] = $user->rol_id;
                 $_SESSION['cliente_id'] = $user->cliente_id;
                /*se determina  que tipo de rol tiene para la redireccion rol->root,admin podran administrar toda el app
                  si por el contrario  no es ni root, admin sera dirigido al dashboard segun el squema registrado*/
                switch ($user->rol) {
                    case 'root':
                        $_SESSION['squema'] = 'normalizacion_snu';
                        header('location:?c=clientes&a=index');
                        break;
                    case 'administrador':
                        header('location:?c=clientes&a=verificar');
                        break;
                    case 'funcionario':
                        header('location:?c=clientes&a=verificar');
                        break;
                        case 'proveedor':
                        case 'gestor':
                        header('location:?c=clientes&a=verificar');
                        break;

                }
            } else {
                header('location:?c=seguridad&a=logout&error=true');
            }
        } else {
        }
    }


    public function Index()
    {
        require_once 'Views/Seguridad/login.php';
    }

    public function Logout()
    {
        session_destroy();
        if(isset($_REQUEST['error'])){header('location:/snu?error=true');}else{header('location:/snu');}
        
    }
}


