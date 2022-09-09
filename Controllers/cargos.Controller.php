<?php
//importar los modelos necesarios
require_once 'Models/database.php';
require_once 'Models/Cargo.php';
require_once 'Models/Proceso.php';
//nombre la clase
class CargosController
{
    public function __CONSTRUCT()
    {
        $this->model = new Cargo();
    }
    /*crear los metodos necesarios*/
    public function Index()
    {
        session_start();
        $cargos = $this->model->CargoIndex();
        require_once 'Views/Layout/default.php';
        require_once 'Views/cargos/index.php';
        require_once 'Views/Layout/footer.php';
    }
    public function Add()
    {
        $proceso = new Proceso();
        $cargo = new Cargo();
        if (isset($_REQUEST['id'])) {
            $cargo = $this->model->GetCargos($_REQUEST['id']);
        }
        $procesos = $proceso->getProceso();
        require_once 'Views/cargos/crud.php';
    }
    public function Crud()
    {
        $cargo = new Cargo();
        $cargo->id = $_REQUEST['id'];
        $cargo->cargo = $_REQUEST['cargo'];
        $cargo->cliente_id = $_REQUEST['cliente_id'];
        $cargo->proceso_id = $_REQUEST['proceso_id'];
        $cargo->id > 0 ? $this->model->Edit($cargo) : $this->model->Add($cargo);
    }

   public function Delete()
   {
        $this->model->Delete($_REQUEST['id']);
   }



}