<?php
// importar los modelos necesarios
require_once 'Models/database.php';
require_once 'Models/Fabricante.php';

//nombre la clase
class FabricantesController
{
    public function __CONSTRUCT()
    {
        $this->model = new Fabricante();
    }
    /*crear los metodos necesarios*/
    public function Index()
    {
        $fabricante = new Fabricante();
        $fabricantes = $fabricante->Index();
        require_once 'Views/Layout/inventario.php';
        require_once 'Views/Fabricantes/index.php';
        require_once 'Views/Layout/foot.php';
    }
    public function Add()
    {
        $fabricante = new Fabricante();
        if (isset($_REQUEST['id'])) {
            $fabricante = $fabricante->Fabricante($_REQUEST['id']);
        }
        require_once 'Views/Fabricantes/crud.php';
    }

    public function Crud()
    {
        $fabricante = new Fabricante();
        $fabricante->id = $_REQUEST['id'];
        $fabricante->nombres = strtoupper($_REQUEST['nombres']);        
        $fabricante->created = $_REQUEST['created'];
        $fabricante->modified = $_REQUEST['created'];
        $fabricante->modified = date('Y-m-d');

        $fabricante->id > 0 ? $fabricante->Edit($fabricante) : $fabricante->Add($fabricante);
    }



    public function Delete()
    {
        $this->model->Delete($_REQUEST['id']);
    }
}
