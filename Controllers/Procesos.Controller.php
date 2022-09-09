<?php
// importar los modelos necesarios
require_once 'Models/database.php';
require_once 'Models/Proceso.php';

//nombre la clase
class ProcesosController
{
    public function __CONSTRUCT()
    {
        $this->model = new Proceso();
    }
    /*crear los metodos necesarios*/
    public function Index()
    {
        
        $procesos = $this->model->getProceso();
        require_once 'Views/Layout/default.php';
        require_once 'Views/procesos/index.php';
        require_once 'Views/Layout/footer.php';
    }
    public function Add()
    {
        $proceso = new Proceso();       
        if (isset($_REQUEST['id'])) {
            $proceso = $this->model->getProcesos($_REQUEST['id']);
        }
        require_once 'Views/procesos/crud.php';
    }
    public function Crud()
    {
        $proceso = new Proceso();
        $proceso->id = $_REQUEST['id'];
        $proceso->NombreProceso = $_REQUEST['NombreProceso'];
        $proceso->Iniciales=$_REQUEST['Iniciales'];
        $proceso->tipo = 1;
        $proceso->cod_int = 1;
        $proceso->id > 0 ? $this->model->Edit($proceso) : $this->model->Add($proceso);
    }

   public function Delete()
   {
        $this->model->Delete($_REQUEST['id']);
   }



}
