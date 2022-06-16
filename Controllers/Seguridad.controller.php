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
            print_r($user);
            if ($user) {
                session_start();
                $_SESSION['log'] = 'true';
                $_SESSION['user'] = $user;
                $_SESSION['squema'] = $user->squema;
                $_SESSION['rol'] = $user->rol;

                /*se determina  que tipo de rol tiene para la redireccion rol->root,admin podran administrar toda el app
                  si por el contrario  no es ni root, admin sera dirigido al dashboard segun el squema registrado*/
                switch ($user->rol) {
                    case 'root':
                         header('location:?c=clientes&a=index');
                        break;
                    case 'administrador':
                        header('location:?c=clientes&a=dashboard');
                        break;
                    default:
                        # code...
                        break;
                }
            } else {
            }
        } else {
        }
    }


    public function Index()
    {
        require_once 'Views/Seguridad/login.php';
    }
}
