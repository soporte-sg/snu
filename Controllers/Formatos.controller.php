<?php
require_once 'Models/database.php';
require_once 'Models/Formato.php';
require_once 'Models/Proceso.php';

class FormatosController
{
    private $rol;
    public function __CONSTRUCT()
    {
        $this->model = new Formato();
    }


    public function Index()
    {
        $proceso = new Proceso();
        $procesos = $proceso->getProceso();

        require_once 'Views/Layout/default.php';
        require_once 'Views/Formatos/index.php';
        require_once 'Views/Layout/foot.php';
    }

    public function AddEdit()
    {
        $rols =  new Roles();
        if (isset($_REQUEST['id'])) {
            $rols = $this->model->getRol($_REQUEST['id']);
           // print_r($rols);
        }
        require_once 'Views/Layout/clientes.php';
        require_once 'Views/Roles/crud.php';
        require_once 'Views/Layout/foot.php';
    }


    public function Ver()
    {

        $documentos = $this->model->getDocs($_REQUEST['id']);        
        require_once 'Views/Formatos/ver.php';
        require_once 'Views/Layout/foot.php';
    }

    public function Getdoc()
    {

        $documentos = $this->model->getDoc($_REQUEST['doc_id']);
        //equire_once 'Views/Layout/default.php';
        require_once 'Views/Formatos/getdoc.php';
        // require_once 'Views/Layout/foot.php';
    }

    public function Edit()
    {

        $documentos = $this->model->getDoc($_REQUEST['doc_id']);
        //equire_once 'Views/Layout/default.php';
        require_once 'Views/Formatos/editdoc.php';
        // require_once 'Views/Layout/foot.php';
    }

    public function Registrar()
    {
        $data = new Formato();
        $data->id = $_REQUEST['id'];
        $data->CodFormato = $_REQUEST['CodFormato'];
        $data->Proceso = $_REQUEST['Proceso'];
        $data->NomFormato = $_REQUEST['NomFormato'];
        $data->RutaFormato = $_REQUEST['RutaFormato'];
        $data->Version = $_REQUEST['Version'];
        $data->Emision = $_REQUEST['Emision'];
        $data->Actualizacion = $_REQUEST['Actualizacion'];
        $data->Almacenamiento = $_REQUEST['Almacenamiento'];
        $data->Proteccion = $_REQUEST['Proteccion'];
        $data->TipoRecuperacion = $_REQUEST['TipoRecuperacion'];
        $data->Recuperacion = $_REQUEST['Recuperacion'];
        $data->TiempoRetencion = $_REQUEST['TiempoRetencion'];
        $data->DispFinal = $_REQUEST['DispFinal'];
        $data->Responsable = $_REQUEST['Responsable'];
        $this->model->Actualizar($data);
    }
}
