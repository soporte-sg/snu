<?php

require_once 'Models/Cliente.php';
require_once 'Models/Seguridad.php';
require_once 'Models/Solicitud.php';
require_once 'Models/Permiso.php';
require_once 'Models/Producto.php';

class ClientesController
{
    public function __CONSTRUCT()
    {
        $this->model = new Cliente();
    }

    public function Verificar()
    {
        @session_start();
        $clientes = new Cliente();
        if (isset($_REQUEST['id'])) {
            $_SESSION['datos_cliente'] = $this->model->upCliente($_REQUEST['id']);
            $clientes = $this->model->upClienteValidar($_REQUEST['id']);

            $_SESSION['squema'] = $clientes->squema;

            echo '<script>            
            window.location.href = "?c=clientes&a=dashboard";
            </script>';
        }
        if (isset($_SESSION['cliente_id'])) {

            $_SESSION['datos_cliente'] = $this->model->upCliente($_SESSION['cliente_id']);
            $clientes = $this->model->upClienteValidar($_SESSION['cliente_id']);
            $_SESSION['squema'] = $clientes->squema;
            echo '<script>            
            window.location.href = "?c=clientes&a=dashboard";
            </script>';
        }
        
    }

    public function Dashboard()
    {
        $solicitud = new Solicitud();
        $solicitudes = $solicitud->SolicitudesTotal();
        $si = $solicitud->SolicitudesSi();
        $no = $solicitud->SolicitudesNo();
        $rev = $solicitud->SolicitudesRev();
        $vacias = $solicitud->SolicitudesVacias();

        require_once 'Views/Layout/default.php';
        require_once 'Views/Cliente/dashboard.php';
        require_once 'Views/Layout/footer.php';
    }

    public function Inventario()
    {
        $producto = new Producto();
        $productos = $producto->Informe();
        require_once 'Views/Layout/inventario.php';
        require_once 'Views/Productos/index.php';
        require_once 'Views/Layout/footer.php';
    }

    public function Talento()
    {
        $solicitud = new Solicitud();
        $solicitudes = $solicitud->SolicitudesTotal();
        $si = $solicitud->SolicitudesSi();
        $no = $solicitud->SolicitudesNo();
        $rev = $solicitud->SolicitudesRev();
        $vacias = $solicitud->SolicitudesVacias();

        require_once 'Views/Layout/talento.php';
        require_once 'Views/Cliente/dashboard.php';
        require_once 'Views/Layout/footer.php';
    }


    public function Index()
    {
        $clientes = $this->model->getCliente();
       // require_once 'Views/Layout/test.php';
       require_once 'Views/Layout/clientes.php';
          require_once 'Views/Cliente/index.php';
        require_once 'Views/Layout/foot.php';
      //  require_once 'Views/Layout/test_foot.php';
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
        $files = new Permiso();
        $files->name = $_FILES['filename']['name'];
        $files->tpm_name = $_FILES['filename']['tmp_name'];
        $files->type = $_FILES['filename']['type'];
        $files->size = $_FILES['filename']['size'];
        $files->error = $_FILES['filename']['error'];


        if ($_FILES['filename']['size'] > 200000) {
            $filename = $files->SubirImg($files);
        } else {
        }
        $clientes->filename = $filename;

        $clientes->id > 0 ?
            $this->model->Actualizar($clientes) :
            $this->model->Registrar($clientes);

        echo '<script>
            alert("El cliente fue creado con Éxito");
            window.location.href = "?c=clientes&a=index";
            </script>';
    }
}
