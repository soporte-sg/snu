<?php
require_once 'Models/Solicitud.php';
require_once 'Models/Proceso.php';
require_once 'Models/Documento.php';
require_once 'Models/Formato.php';
require_once 'Models/Doc_ext.php';

class SolicitudesController
{
    private $pdo;
    public $id;
    public $NombreSolicitante;
    public $FechaSolicitud;
    public $Proceso;
    public $TipoSolicitud;
    public $Codigo;
    public $VersionCambiar;
    public $TipoDocumento;
    public $EjecucionCambio;
    public $Aprobado;
    public $Actualizacion;
    public $filename;
    public $dir;

    public function __CONSTRUCT()
    {
        $this->model = new Solicitud();
    }

    public function Index()
    {
        $solicitud = new Solicitud();
        $solicitudes = $solicitud->Solicitudes();
        require_once 'Views/layout/default.php';
        require_once 'Views/Solicitudes/index.php';
        require_once 'Views/layout/footer.php';
    }

    public function Add()
    {
        $proceso = new Proceso();
        $procesos = $proceso->getProceso();
        $ultima_solicitud = $this->model->SolicitudesMax();
        require_once 'Views/layout/default.php';
        require_once 'Views/Solicitudes/add.php';
        require_once 'Views/layout/footer.php';
    }

    public function Edit()
    {
        $solicitudes =  $this->model->GetSolicitud($_REQUEST['id']);
        require_once 'Views/layout/default.php';
        require_once 'Views/Solicitudes/Edit.php';
        require_once 'Views/layout/footer.php';
    }

    public function Registrar()
    {

        $solicitud = new Solicitud();
        @$solicitud->id = $_REQUEST['id'];
        $solicitud->NombreSolicitante = $_REQUEST['NombreSolicitante'];
        $solicitud->FechaSolicitud = $_REQUEST['FechaSolicitud'];
        $solicitud->Proceso = $_REQUEST['Proceso'];
        $solicitud->TipoSolicitud = $_REQUEST['TipoSolicitud'];
        $solicitud->Codigo = $_REQUEST['Codigo'];
        @$solicitud->VersionCambiar = $_REQUEST['VersionCambiar'];
        $solicitud->TipoDocumento = $_REQUEST['TipoDocumento'];
        @$solicitud->EjecucionCambio = $_REQUEST['EjecucionCambio'];
        @$solicitud->Aprobado = $_REQUEST['Aprobado'];
        @$solicitud->Observaciones = $_REQUEST['Observaciones'];
        $solicitud->Descripcion = $_REQUEST['Descripcion'];
        $solicitud->filename = $_FILES['filename']['name'];
        $solicitud->dir = 'Assets/Solicitudes/' . $_SESSION['datos_cliente']->nombre . '/';


        $solicitud->id > 0 ?
            $this->model->Actualizar($solicitud) :
            $this->model->Registrar($solicitud);

        $documento = new Documento();
        $documentos = $documento->SubirDoc();
    }


    public function View()
    {
        $solicitudes =  $this->model->GetSolicitud($_REQUEST['id']);
        //require_once 'Views/layout/default.php';
        require_once 'Views/Solicitudes/View.php';
        // require_once 'Views/layout/foot.php';
    }

    public function Descripcion()
    {

        $TipoDocumento = $_REQUEST['TipoDocumento'];
        $proceso = $_REQUEST['Proceso'];
        $TipoSolicitud = $_REQUEST['TipoSolicitud'];

        $this->model->Descripcion($TipoDocumento, $proceso, $TipoSolicitud);
    }

    public function Responder()
    {
        $solicitud =  $this->model->GetSolicitud($_REQUEST['id']);
        $sol = $solicitud->TipoSolicitud;
        $TipoDocumento = $solicitud->TipoDocumento;
        $documento = new Documento();
        $formato = new Formato();
        $ext = new Doc_ext();
        $docProceso = $documento->getDocProceso($solicitud->Proceso);
        require_once 'Views/layout/default.php';
        require_once 'Views/Solicitudes/responder.php';

        /*creaciones*/
        if ($sol == "creacion" & $TipoDocumento == "documento") {
            $documentos = $documento->getDocumentos($solicitud->Proceso);
            $separada = explode("-", $documentos->ultimo);
            require_once 'Views/Solicitudes/creardoc.php';
        }

        if ($sol == "creacion" & $TipoDocumento == "formato") {
            $formatos = $formato->getFormato($solicitud->Proceso);
            $separada = explode("-", $formatos->ultimo);
            require_once 'Views/Solicitudes/crearformato.php';
        }

        if ($sol == "creacion" & $TipoDocumento == "externo") {
            $documentos = $ext->getDocumentos($solicitud->Proceso);
            $separada = explode("-", $documentos->ultimo);
            require_once 'Views/Solicitudes/crearext.php';
        }

        /*creaciones*/

        /*actualizaciones*/
        if ($sol == "actualizacion" & $TipoDocumento == "documento") {
            $docCodigo = $documento->getDocCod($solicitud->Codigo);
            require_once 'Views/Solicitudes/actdoc.php';
        }
        if ($sol == "actualizacion" & $TipoDocumento == "externo") {
            $docCodigo = $ext->getDocCod($solicitud->Codigo);
            require_once 'Views/Solicitudes/actdocext.php';
        }
        if ($sol == "actualizacion" & $TipoDocumento == "formato") {
            $documentos = $formato->getForCod($solicitud->Codigo);
            require_once 'Views/Solicitudes/actformato.php';
        }
        /*actualizaciones*/
        require_once 'Views/layout/footer.php';
    }



    public function GestionDocumento()
    {

        $documento = new Documento();
        @$documento->id = $_REQUEST['id'];
        $documento->CodDocumento = $_REQUEST['CodDocumento'];
        $documento->Proceso = $_REQUEST['Proceso'];
        $documento->NomDocumento = $_REQUEST['NomDocumento'];
        $documento->VersionCambiar = $_REQUEST['Version'];
        $documento->proteccion = $_REQUEST['proteccion'];
        $documento->Almacenamiento = $_REQUEST['Almacenamiento'];
        $documento->preservacion = $_REQUEST['preservacion'];
        $documento->Emision = $_REQUEST['Emision'];
        $documento->Version = $_REQUEST['Version'];
        $documento->filename = $_FILES['filename']['name'];
        $documento->dir = $_REQUEST['dir'];
        /*fin datos documento*/

        $solictud = new Solicitud();
        $solictud->id = $_REQUEST['sol_id'];
        $solictud->EjecucionCambio = $_REQUEST['EjecucionCambio'];
        $solictud->Codigo = $_REQUEST['CodDocumento'];
        $solictud->Observaciones = $_REQUEST['Observaciones'];
        $solictud->Aprobado = $_REQUEST['Aprobado']; //estado
        $this->model->ActualizaGestion($solictud);

        if ($documento->id > 0) {
            $documento->Actualizacion = $_REQUEST['Actualizacion'];
            $documentos = $documento->Actualizar($documento);
        } else {
            $documentos = $documento->Registrar($documento);
        }

        $documentos = $documento->SubirDoc();
    }
    public function GestionFormato()
    {

        $documento = new Formato();

        $documento->id = $_REQUEST['id'];
        $documento->CodFormato = $_REQUEST['CodFormato'];
        $documento->Proceso = $_REQUEST['Proceso'];
        $documento->NomFormato = $_REQUEST['NomFormato'];
        $documento->RutaFormato = $_REQUEST['RutaFormato'];
        $documento->Version = $_REQUEST['Version'];
        $documento->Emision = $_REQUEST['Emision'];
        // $documento->Actualizacion = $_REQUEST['Actualizacion'];
        $documento->Almacenamiento = $_REQUEST['Almacenamiento'];
        $documento->Proteccion = $_REQUEST['Proteccion'];
        $documento->TipoRecuperacion = $_REQUEST['TipoRecuperacion'];
        $documento->Recuperacion = $_REQUEST['Recuperacion'];
        $documento->TiempoRetencion = $_REQUEST['TiempoRetencion'];
        $documento->DispFinal = $_REQUEST['DispFinal'];
        $documento->Responsable = $_REQUEST['Responsable'];
        /*fin datos formato*/

        /* Actualiza la solicitud*/
        $solictud = new Solicitud();
        $solictud->id = $_REQUEST['sol_id'];
        $solictud->EjecucionCambio = $_REQUEST['EjecucionCambio'];
        $solictud->Codigo = $_REQUEST['CodFormato'];
        $solictud->Observaciones = $_REQUEST['Observaciones'];
        $solictud->Aprobado = $_REQUEST['Aprobado']; //estado
        $this->model->ActualizaGestion($solictud);
        /* Actualiza la solicitud*/

        if ($documento->id > 0) {
            $documento->Actualizacion = $_REQUEST['Actualizacion'];
            $documentos = $documento->Actualizar($documento);
        } else {
            $documentos = $documento->Registrar($documento);
        }
    }


    public function GestionDocext()
    {

        $documento = new Doc_ext();
        @$documento->id = $_REQUEST['id'];
        $documento->codigo = $_REQUEST['codigo'];
        $documento->proceso = $_REQUEST['proceso'];
        $documento->nombre = $_REQUEST['nombre'];
        $documento->expedicion = $_REQUEST['expedicion'];
        $documento->descripcion = $_REQUEST['descripcion'];
        $documento->filename = $_FILES['filename']['name'];
        $documento->dir = $_REQUEST['dir'];
        /*fin datos documento*/

        $solictud = new Solicitud();
        $solictud->id = $_REQUEST['sol_id'];
        $solictud->EjecucionCambio = $_REQUEST['EjecucionCambio'];
        $solictud->Codigo = $_REQUEST['codigo'];
        $solictud->Observaciones = $_REQUEST['Observaciones'];
        $solictud->Aprobado = $_REQUEST['Aprobado']; //estado
        $this->model->ActualizaGestion($solictud);

        if ($documento->id > 0) {
            $documento->Actualizacion = $_REQUEST['Actualizacion'];
            $documentos = $documento->Actualizar($documento);
        } else {
            $documentos = $documento->Registrar($documento);
        }

        $documentos = $documento->SubirDoc();
    }
}
