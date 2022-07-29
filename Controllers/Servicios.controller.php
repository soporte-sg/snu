<?php
// importar los modelos necesarios
require_once 'Models/database.php';
require_once 'Models/Servicio.php';
require_once 'Models/Oferta.php';
require_once 'Models/Cliente.php';

//nombre la clase
class ServiciosController
{
    public function __CONSTRUCT()
    {
        $this->model = new Servicio();
    }
    /*crear los metodos necesarios*/
    public function Index()
    {
        $servicios=$this->model->Index();
        $cliente= new Cliente();
        $clientes= $cliente->getCliente01();
        $oferta= new Oferta();
        $ofertas = $oferta->Index();

        require_once 'Views/Layout/clientes.php';
        require_once 'Views/Servicios/index.php';
        require_once 'Views/Layout/foot.php';        
        if (isset($_REQUEST['id'])) {
            $servicio=$this->model->GetServicio($_REQUEST['id']);
         }
    }
    public function Add()
    {
        $servicio = new Servicio();
        $servicio->id=$_REQUEST['id'];
        $servicio->cliente_id=$_REQUEST['cliente_id'];
        $servicio->servicio_id=$_REQUEST['servicio_id'];
        $servicio->f_inicio=$_REQUEST['f_inicio'];

        $servicio->id > 0 ? $this->model->Edit($servicio) : $this->model->Add($servicio) ;
       
        
    }
    public function Edit()
    {
        
        require_once 'Views/Layout/default.php';
        require_once 'Views/Cliente/index.php';
        require_once 'Views/Layout/foot.php';
    }

}