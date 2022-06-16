<?php

require_once 'Models/Cliente.php';

class ClientesController
{
    public function __CONSTRUCT()
    {
        $this->model = new Cliente();
    }
    
    public function Index()
    {
        require_once 'Views/Layout/default.php';
        require_once 'Views/Cliente/index.php';
        require_once 'Views/Layout/foot.php';
    }
}
