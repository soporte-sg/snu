<?php
require_once 'Models/database.php';
require_once 'Models/Contrato.php';
require_once 'Models/Persona.php';
require_once 'Models/Cargo.php';
require_once 'Models/Postulacion.php';

class ContratacionController
{

    private $model;
    public function __CONSTRUCT()
    {
        $this->model = new Contrato();
    }

    public function Index()
    {
        // $alm = new Persona();
        // if (isset($_REQUEST['id'])) {
        //     $alm = $alm->GetPersona($_REQUEST['id']);
        // }


        require_once 'Views/Layout/talento.php';
        require_once 'Views/Contratos/Index.php';
        require_once 'Views/Layout/foot.php';
    }


    public function Buscar()
    {
        is_numeric($_REQUEST['data']) ? $result = $this->model->ByCc($_REQUEST['data']) : $result = $this->model->ByNa($_REQUEST['data']);
        require_once 'Views/Contratos/buscar.php';
    }

    public function BuscarEst()
    {
        is_numeric($_REQUEST['data']) ? $result = $this->model->ByEst($_REQUEST['data']) : $result = $this->model->ByNa($_REQUEST['data']);
        require_once 'Views/Contratos/buscar.php';
    }

    public function Procesar()
    {
        $alm = new Persona();
        $alm = $alm->GetPersona($_REQUEST['id']);
        $cargo = new Cargo();
        $cargos = $cargo->CargoIndex();
        $postulacion = new Postulacion();
        $post = $postulacion->Getpostulacion($alm->cedula);

        require_once 'Views/Contratos/procesar.php';
    }

    public function Novedad()
    {
        require_once 'Views/Contratos/novedad.php';
    }
    //cambio de estado del aspirante
    public function EstadoAsp()
    {
        $aspirante = new Persona();
        $aspirante->id = $_REQUEST['id'];
        $aspirante->rol_id = $_REQUEST['estado'];
        $this->model->EstadoAsp($aspirante);
    }
    public function Contratar()
    {
        $aspirante = new Persona();
        $seleccionado = $aspirante->GetPersona($_REQUEST['id']);
        $cargo = new Cargo();
        $cargos = $cargo->CargoIndex();
        $tipos = $this->model->TipoContrato();

        require_once 'Views/Contratos/datosContrato.php';
    }

    public function Guardar()
    {
        $contrato = new Contrato();
        $contrato->id = $_REQUEST['id'];
        $contrato->usuario = $_REQUEST['usuario_id'];
        $contrato->tipo_contrato = $_REQUEST['tipoContrato'];
        $contrato->cargo_id = $_REQUEST['cargo_id'];
        $contrato->valor = $_REQUEST['valor'];
        $contrato->aux_trans = $_REQUEST['aux_trans'];
        $contrato->inicio_contrato = $_REQUEST['inicio_contrato'];
        $contrato->usuario_id = $_REQUEST['usuario'];
        $contrato->duracion = $_REQUEST['duracion'];
        $contrato->registro = date('Y-m-d');
        $contrato->id > 0 ? $this->model->Actualizar($contrato) : $this->model->Registrar($contrato);
    }
    public function Historial()
    {
        $aspirante = new Persona();
        $contratado = $aspirante->GetPersona($_REQUEST['id']);
        $historial = $this->model->Historial($_REQUEST['id']);
        require_once 'Views/Layout/talento.php';
        require_once 'Views/Contratos/historico.php';
        require_once 'Views/Layout/foot.php';
    }

    public function GenerarContrato()
    {
        $datos =  $this->model->GenerarContrato($_REQUEST['id']);
        $firma =  $this->model->FirmaContrato($_REQUEST['id']);
        require_once 'Views/Layout/talento.php';
        require_once 'Views/Contratos/generar_contrato.php';
        require_once 'Views/Layout/foot.php';
    }
    public function Exportar()
    {
        $datos =  $this->model->GenerarContrato($_REQUEST['id']);
        $firma =  $this->model->FirmaContrato($_REQUEST['id']);
        require_once 'Assets/dompdf/autoload.inc.php';
        require_once 'Views/Contratos/exportar.php';
    }
    public function Firmar()
    {
        require_once 'Views/Contratos/firmar.php';
    }
    public function Getfirma()
    {
        $img = $_POST['base64'];       
        $img = str_replace('data:image/png;base64,', '', $img);
        $fileData = base64_decode($img);
        $fileName = uniqid() . '.png';
        file_put_contents($fileName, $fileData);
        $origen =  $fileName;     
        $destino = "Assets/firmas/".$fileName; #Copiar pero cambiar nombre        
        $resultado = copy($origen, $destino);        
        $this->model->Firmar($_REQUEST['contrato'], $fileName, date('Y-m-d'));
       $id= $_REQUEST['contrato'];
        echo"
        <script> window.close() 
        window.open('?c=contratacion&a=generarContrato&id=".$id."') 
        </script>
        ";

    }
}
