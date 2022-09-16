<?php
require_once 'Models/database.php';
require_once 'Models/Indicador.php';


class EstadisticosController
{
    private $model;
    public function __CONSTRUCT()
    {
        $this->model = new Indicador();
    }

    public function Index()
    {
        require_once 'Views/Layout/estadistico.php';
        require_once 'Views/Estadisticas/indice.php';
        require_once 'Views/Layout/foot.php';
    }
}