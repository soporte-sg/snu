<?php
require_once 'Models/database.php';
require_once 'Models/Documento.php';
require_once 'Models/Proceso.php';

class DocumentosController
{
    private $rol;
    public function __CONSTRUCT()
    {
        $this->model = new Documento();
    }


    public function Index()
    {
        $proceso = new Proceso();
        $procesos = $proceso->getProceso();

        require_once 'Views/Layout/default.php';
        require_once 'Views/Documentos/index.php';
         require_once 'Views/Layout/foot.php';
    }

    public function AddEdit()
    {
        $rols =  new Roles();
        if (isset($_REQUEST['id'])) {
            $rols = $this->model->getRol($_REQUEST['id']);
            print_r($rols);
        }
        require_once 'Views/Layout/clientes.php';
        require_once 'Views/Roles/crud.php';
        //require_once 'Views/Layout/foot.php';
    }


    public function Ver()
    {

        $documentos = $this->model->getDocs($_REQUEST['id']);      
         
         require_once 'Views/Documentos/ver.php';
        //  require_once 'Views/Layout/foot.php';
    }

    public function Getdoc()
    {

        $documentos = $this->model->getDoc($_REQUEST['doc_id']);
        //require_once 'Views/Layout/default.php';
        require_once 'Views/Documentos/getdoc.php';
        // require_once 'Views/Layout/foot.php';
    }

    public function Edit()
    {

        $documentos = $this->model->getDoc($_REQUEST['doc_id']);
        //equire_once 'Views/Layout/default.php';
        require_once 'Views/Documentos/editdoc.php';
        // require_once 'Views/Layout/foot.php';
    }

    public function Registrar()
    {
        $data = new Documento();
        $data->id = $_REQUEST['id'];
        $data->CodDocumento = $_REQUEST['CodDocumento'];
        $data->Proceso = $_REQUEST['Proceso'];
        $data->NomDocumento = $_REQUEST['NomDocumento'];
        $data->Version = $_REQUEST['Version'];
        $data->Recuperacion = $_REQUEST['preservacion'];
        $data->proteccion = $_REQUEST['proteccion'];
        $data->Almacenamiento = $_REQUEST['Almacenamiento'];
        $data->preservacion = $_REQUEST['preservacion'];
        $data->Emision = $_REQUEST['Emision'];
        $data->Actualizacion = $_REQUEST['Actualizacion'];

        $this->model->Actualizar($data);
    }
}
