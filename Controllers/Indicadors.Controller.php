<?php
require_once 'Models/database.php';
require_once 'Models/Proceso.php';
require_once 'Models/Indicador.php';
require_once 'Models/Cargo.php';
require_once 'Models/Modelo.php';
require_once 'Models/Meta.php';

class IndicadorsController
{
    private $rol;
    public function __CONSTRUCT()
    {
        $this->model = new Indicador();
    }


    public function Index()
    {
        $proceso = new Proceso();
        $procesos = $proceso->getProceso();
        $indicadors = $this->model->Index();
        $cargo = new Cargo();
        $cargos = $cargo->CargoIndex();
        require_once 'Views/layout/default.php';
        require_once 'Views/Indicadors/index.php';
        require_once 'Views/layout/foot.php';
    }

    public function Add()
    {

        $proceso = new Proceso();
        $procesos = $proceso->getProceso();
        $formula = new Modelo();
        $formulas = $formula->GetFormula();
        $indicador= new Indicador();
        if(isset($_REQUEST['id'])){
              $indicador=$this->model->GetIndicador($_REQUEST['id']);
        }
        require_once 'Views/layout/default.php';
        require_once 'Views/Indicadors/add.php';
        require_once 'Views/layout/foot.php';
    }

   public function Crud()
   {
    $obj = new Indicador();

     $obj->id=$_REQUEST['id'];
     $obj->proceso_id=$_REQUEST['proceso_id'];
     $obj->formula_id=$_REQUEST['formula_id'];
     $obj->nombre=$_REQUEST['nombre'];
     @$obj->cargo_id=$_REQUEST['cargo_id'];   
     $obj->definicion=$_REQUEST['definicion'];
     $obj->interpretacion=$_REQUEST['interpretacion'];
     $obj->periodicidad=$_REQUEST['periodicidad'];
     $obj->fecha_control=$_REQUEST['fecha_control'];
     $obj->tipo='general';
     $obj->num_meta=$_REQUEST['num_meta'];
     $obj->meta=$_REQUEST['meta'];

     $obj->id>0?
     $this->model->Update($obj):
     $this->model->Add($obj);

}
  // metas//

  public function Meta(){
    $metas= new Meta();
    if(isset($_REQUEST['id'])){
              $metas= $metas->model->GetMeta($_REQUEST['id']);
    }
    require_once 'Views/Indicadors/meta.php';
  }

  public function CrudMeta(){

    $meta= new Meta();

    $meta->id = $_REQUEST['id'];
    $meta->comparativo=$_REQUEST['comparativo'];
    $meta->valor=$_REQUEST['valor'];
    $meta->indicador_id=$_REQUEST['indicador_id'];
    $meta->fecha_uso=$_REQUEST['fecha_uso'];

    $_REQUEST['id']>0?
    $meta->Update($meta):
    $meta->Add($meta);
   
  }

}
