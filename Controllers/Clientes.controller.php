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
        $clientes= $this->model->getCliente();
    
        require_once 'Views/Layout/clientes.php';
        require_once 'Views/Cliente/index.php';
        require_once 'Views/Layout/foot.php';
    }
}
