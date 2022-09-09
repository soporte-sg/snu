<?php
// importar los modelos necesarios
require_once 'Models/database.php';
require_once 'Models/Estadistica.php';

//nombre la clase
class EstadisticasController
{
    public function __CONSTRUCT()
    {
        $this->model = new Estadistica();
    }
    /*crear los metodos necesarios*/
    public function Index()
    {
        $eventos= $this->model->Index();
        $ip=$this->model->getUserIpAddress();
        require_once 'Views/Layout/clientes.php';
        require_once 'Views/Estadisticas/index.php';
        require_once 'Views/Layout/foot.php';
    }
    public function Add()
    {
        
        require_once 'Views/Layout/default.php';
        require_once 'Views/Cliente/index.php';
        require_once 'Views/Layout/foot.php';
    }
    public function Edit()
    {
        
        require_once 'Views/Layout/default.php';
        require_once 'Views/Cliente/index.php';
        require_once 'Views/Layout/foot.php';
    }

}