<?php

require_once 'Models/Cliente.php';
require_once 'Models/Seguridad.php';

class ClientesController
{
    public function __CONSTRUCT()
    {
        $this->model = new Cliente();
    }

    public function Index()
    {
        $clientes = $this->model->getCliente();

        require_once 'Views/Layout/clientes.php';
        require_once 'Views/Cliente/index.php';
        require_once 'Views/Layout/foot.php';
    }

    public function Crud()
    {
        $clientes = new Cliente();
        if (isset($_REQUEST['id'])) {
            $clientes = $this->model->upCliente($_REQUEST['id']);
            //print_r($clientes);
        }
        require_once 'Views/Cliente/crud.php';
    }


    public function Registrar()
    {
        $clientes = new Cliente();
        $clientes->id = $_REQUEST['id'];
        $clientes->nombre = $_REQUEST['nombre'];
        $clientes->telefono = $_REQUEST['telefono'];
        $clientes->direccion = $_REQUEST['direccion'];
        $clientes->fechainicio = date('Y-m-d');
        $clientes->direccion = $_REQUEST['direccion'];
        $clientes->rector = $_REQUEST['rector'];
        $clientes->correos = $_REQUEST['correos0'] . '~' . $_REQUEST['correos1'] . '~' . $_REQUEST['correos2'];
        $clientes->salario = $_REQUEST['salario'];

        /*manejando la img*/
        $files = new Seguridad();
        $files->name = $_FILES['filename']['name'];
        $files->tpm_name = $_FILES['filename']['tmp_name'];
        $files->type = $_FILES['filename']['type'];
        $files->size = $_FILES['filename']['size'];
        $files->error = $_FILES['filename']['error'];


        if ($_FILES['filename']['size'] > 200000) {
            $filename =   $files->SubirImg($files);
        } else {
        }
        $clientes->filename = $filename;
   
       $clientes->id > 0 ?
            $this->model->Actualizar($clientes) :
            $this->model->Registrar($clientes);
           
            echo'<script>
            alert("El cliente fue creado con Éxito");
            window.location.href = "?c=clientes&a=index";
            </script>';

    }

    public function Verificar()
    {
        $clientes = new Cliente();
        if (isset($_REQUEST['id'])) {
            $clientes = $this->model->upClienteValidar($_REQUEST['id']);
           // print_r($clientes->squema);
            $_SESSION['squema'] = $clientes->squema;
            echo'<script>            
            window.location.href = "?c=clientes&a=dashboard";
            </script>';
        }else{

        }
        
    }

    public function Dashboard()
    {
       
        require_once 'Views/Layout/clientes.php';
        require_once 'Views/Cliente/dashboard.php';
        require_once 'Views/Layout/foot.php';
    }

}
