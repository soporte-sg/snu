<?php
require_once 'Models/database.php';
require_once 'Models/Autoreporte.php';
require_once 'Models/Proceso.php';
<<<<<<< HEAD


=======
require_once 'Models/Cargo.php';
require_once 'Models/Condicion.php';
>>>>>>> b9ab8a7f8347787494f360b9ec5764de210a568c
class AutoreportesController
{
    public function __CONSTRUCT()
    {
        $this->model = new Autoreporte();
    }

    public function Index()
    {
<<<<<<< HEAD
        
=======

>>>>>>> b9ab8a7f8347787494f360b9ec5764de210a568c
        require_once 'Views/Layout/default.php';
        require_once 'Views/Cliente/index.php';
        require_once 'Views/Layout/foot.php';
    }


    public function Add()
    {
<<<<<<< HEAD
        $proceso= new Proceso();
        $procesos =$proceso->getProceso();
        $cat_eventos =$this->model->Categoriaevento();
=======
        $proceso = new Proceso();
        $procesos = $proceso->getProceso();
        $cat_eventos = $this->model->Categoriaevento();
>>>>>>> b9ab8a7f8347787494f360b9ec5764de210a568c
        require_once 'Views/Layout/default.php';
        require_once 'Views/Autoreportes/add.php';
        require_once 'Views/Layout/foot.php';
    }

<<<<<<< HEAD
  public function Proceso_reponsable(){
     echo'listo para mostra proceso';
  }

  public function Evento(){
    echo'listo para mostra evento';
   }


=======
    public function Proceso_reponsable()
    {
        $cargo = new Cargo();
        $cargos = $cargo->GetCargo($_REQUEST['proceso']);
        // print_r($cargos);
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
>>>>>>> b9ab8a7f8347787494f360b9ec5764de210a568c


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
<<<<<<< HEAD
        $clientes = new Cliente();
        $clientes->id = $_REQUEST['id'];
        $clientes->nombre = $_REQUEST['nombre'];
        $clientes->telefono = $_REQUEST['telefono'];
        $clientes->direccion = $_REQUEST['direccion'];
        $clientes->fechainicio = date('Y-m-d');
        $clientes->direccion = $_REQUEST['direccion'];
        $clientes->rector = $_REQUEST['rector'];
        $clientes->correos = $_REQUEST['correos0'] . '~' . $_REQUEST['correos1'] . '~' . $_REQUEST['correos2'];
        $clientes->salario = $_REQUEST['salario'];

        /*manejando la img*/
        $files = new Seguridad();
        $files->name = $_FILES['filename']['name'];
        $files->tpm_name = $_FILES['filename']['tmp_name'];
        $files->type = $_FILES['filename']['type'];
        $files->size = $_FILES['filename']['size'];
        $files->error = $_FILES['filename']['error'];


        if ($_FILES['filename']['size'] > 200000) {
            $filename =   $files->SubirImg($files);
        } else {
        }
        $clientes->filename = $filename;
   
       $clientes->id > 0 ?
            $this->model->Actualizar($clientes) :
            $this->model->Registrar($clientes);
           
            echo'<script>
            alert("El cliente fue creado con Éxito");
            window.location.href = "?c=clientes&a=index";
            </script>';

    }

    public function Verificar()
    {
        $clientes = new Cliente();
        $_SESSION['datos_cliente'] = $this->model->upCliente($_REQUEST['id']);
        if (isset($_REQUEST['id'])) {
            $clientes = $this->model->upClienteValidar($_REQUEST['id']);
           // print_r($clientes->squema);
            $_SESSION['squema'] = $clientes->squema;
          //  exit();
            echo'<script>            
            window.location.href = "?c=clientes&a=dashboard";
            </script>';
        }else{

        }
        
    }

    public function Dashboard()
    {
       $solicitud=new Solicitud();
       $solicitudes =$solicitud->SolicitudesTotal();  
       $si =$solicitud->SolicitudesSi();     
       $no =$solicitud->SolicitudesNo();
       $rev =$solicitud->SolicitudesRev();
       $vacias= $solicitud->SolicitudesVacias();
       
        require_once 'Views/Layout/default.php';
        require_once 'Views/Cliente/dashboard.php';
        require_once 'Views/Layout/footer.php';
      
    }

=======
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
>>>>>>> b9ab8a7f8347787494f360b9ec5764de210a568c
}
