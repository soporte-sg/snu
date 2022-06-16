<?php

require_once 'Models/Solicitud.php';

class SolicitudesController
{
    public function __CONSTRUCT()
    {
        $this->model = new Solicitud();
    }


    public function Index()
    {
        require_once 'Views/layout/default.php';
        require_once 'Views/Solicitudes/add.php';
        require_once 'Views/layout/foot.php';
        
    }

    public function Add()
    {
        require_once 'Views/layout/default.php';
        require_once 'Views/Solicitudes/add.php';
        require_once 'Views/layout/foot.php';
    }

    public function Edit()
    {
        require_once 'Views/layout/default.php';
        require_once 'Views/Solicitudes/Edit.php';
        require_once 'Views/layout/foot.php';
    }

    public function View()
    {
        require_once 'Views/layout/default.php';
        require_once 'Views/Solicitudes/View.php';
        require_once 'Views/layout/foot.php';
    }
}
