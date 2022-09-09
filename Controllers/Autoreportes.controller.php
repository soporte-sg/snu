<?php
require_once 'Models/database.php';
require_once 'Models/Autoreporte.php';
require_once 'Models/Proceso.php';
require_once 'Models/Cargo.php';
require_once 'Models/Condicion.php';
class AutoreportesController
{
    public function __CONSTRUCT()
    {
        $this->model = new Autoreporte();
    }
    public function Index()
    {
        require_once 'Views/Layout/default.php';
        require_once 'Views/Cliente/index.php';
        require_once 'Views/Layout/foot.php';
    }
    public function Add()
    {
        $proceso = new Proceso();
        $procesos = $proceso->getProceso();
        $cat_eventos = $this->model->Categoriaevento();
        require_once 'Views/Layout/default.php';
        require_once 'Views/Autoreportes/add.php';
        require_once 'Views/Layout/foot.php';
    }

    public function Proceso_reponsable()
    {
        $cargo = new Cargo();
        $cargos = $cargo->GetCargo($_REQUEST['proceso']);
       //print_r($cargos);
?>
    <div class="form-group">
            <div class="form-line">
                <label>Responsable</label>
                <select name="cargo_id" id="cargo_id" class="form-control" required="required">
                    <option value=" ">Seleccionar</option>;

                    <?php foreach ($cargos as $value) { ?>
                        <option value="<?php echo $value->id ?>">
                            <?php echo $value->cargo . ' ' . $value->nombres . ' ' . $value->apellidos ?> </option> ";
                    <?php  } ?>
                </select>
            </div>
        </div>
    <?php }


    public function Evento()
    {
        $condicion = new Condicion();
        $condicions = $condicion->GetCondicion($_REQUEST["sigla"]);
        // print_r($condicions);
    ?>
        <div class="form-group">
            <div class="form-line">
                <label>Responsable</label>
                <select name="TbCondiciones_id" id="TbCondiciones_id" class="form-control" required="required">
                    <option value=" ">Seleccionar</option>;
                    <?php foreach ($condicions as $value) { ?>
                        <option value="<?php echo $value->id ?>"><?php echo $value->tipoIncidente ?> </option> ";
                    <?php  } ?>
                </select>
            </div>

        </div>
<?php }


    public function Crud()
    {
        $clientes = new Cliente();
        if (isset($_REQUEST['id'])) {
            $clientes = $this->model->upCliente($_REQUEST['id']);
            //print_r($clientes);
        }
        require_once 'Views/Cliente/crud.php';
    }


    public function Registrar()
    {
        $autoreporte = new Autoreporte();
        //$autoreporte->id = $_REQUEST['id'];
        /*reporte*/
        $autoreporte->proceso = $_REQUEST['proceso'];
        $autoreporte->cargo_id = $_REQUEST['cargo_id'];
        $autoreporte->TbCondiciones_id = $_REQUEST['TbCondiciones_id'];
        $autoreporte->descEvento = $_REQUEST['descEvento'];
        $autoreporte->lugarEvento = $_REQUEST['lugarEvento'];
        $autoreporte->usuario = $_REQUEST['usuario'];
        $autoreporte->estado = $_REQUEST['estado'];
        $autoreporte->fechaRegistro = $_REQUEST['fechaRegistro'];
        /*fin reporete*/


        $this->model->Add($autoreporte);
    }

    public function buscarIndex()
    {
        $proceso = new Proceso();
        $procesos = $proceso->getProceso();
        require_once 'Views/Layout/default.php';
        require_once 'Views/Autoreportes/buscar.php';
        require_once 'Views/Layout/footer.php';
    }


    public function BuscarResp()
    {
        $autoreporte = new Autoreporte();

        if (isset($_REQUEST['estado'])) {

            $autoreportes = $autoreporte->GetAutoreporte('estado', $_REQUEST['estado']);
            // print_r($autoreportes);

        }
        if (isset($_REQUEST['inci'])) {

            $autoreportes = $autoreporte->GetAutoreporte('TbCondiciones_id', $_REQUEST['inci']);
        }
        if (isset($_REQUEST['proceso'])) {

            $autoreportes = $autoreporte->GetAutoreporte('proceso', $_REQUEST['proceso']);
        }

        require_once 'Views/Autoreportes/resultado.php';
    }


    public function Responder()
    {

        $autorepo =  $this->model->GetAutorep($_REQUEST['id']);
        $pro = $autorepo->proceso;
        $cond = $autorepo->TbCondiciones_id;
        $recur = $this->model->Recurrente($pro, $cond);
        $recurrente = $recur->cantidad;
        require_once 'Views/Autoreportes/responder.php';
    }

    public function Gestion()
    {
        $data = new Autoreporte();
        $data->id = $_REQUEST['id'];        
        $data->estado = $_REQUEST['estado'];     
       
        $data->observacion1 = $_REQUEST['usuario'];

        if ($_REQUEST['estado'] == 'Revisión') {
            $data->conciliacion = $_REQUEST['conciliacion'];
            $data->taccion = $_REQUEST['taccion'];
            $data->respuesta = $_REQUEST['respuesta'];
            $data->num_accion_corr = $_REQUEST['num_accion_corr'];
            $data->fechaRespuesta = $_REQUEST['fechaRespuesta'];
        }
        if ($_REQUEST['estado'] == 'Aprobacion') {
            $data->fechaValidacion = $_REQUEST['fechaValidacion'];
            $data->observacion = $_REQUEST['observacion'];
            $data->observacion1 = $_REQUEST['observacion1'];
               }
               if ($_REQUEST['estado'] == 'Rechazado') {

                $data->observacion1 = $_REQUEST['observacion1'];
                  
            }
                $this->model->RespuestaEdit($data);
    }



    public function Dashboard()
    {
        $solicitud = new Solicitud();
        $solicitudes = $solicitud->SolicitudesTotal();
        $si = $solicitud->SolicitudesSi();
        $no = $solicitud->SolicitudesNo();
        $rev = $solicitud->SolicitudesRev();
        $vacias = $solicitud->SolicitudesVacias();

        require_once 'Views/Layout/default.php';
        require_once 'Views/Cliente/dashboard.php';
        require_once 'Views/Layout/footer.php';
    }
}
