<?php
require_once 'Models/database.php';
require_once 'Models/Persona.php';
class PersonasController
{

    private $model;

    public function __CONSTRUCT()
    {
        $this->model = new Persona();
    }

    public function Index()
    {
        $this->model->GetPersona($_REQUEST['id']);
        require_once '../vista/header_acceso.php';
        require_once '../vista/persona/buscar.php';
        require_once '../vista/footer.php';

    }




    public function Ver()
    {

        require_once '../vista/header_acceso.php';
        require_once '../vista/persona/ver.php';
        require_once '../vista/footer.php';

    }
    public function Procesar()
    {
       $persona= $this->model->GetPersona($_REQUEST['id']);       
       require_once 'Views/seleccion/index.php';
      

    }

    public function Registrar()
    {
        sleep(1);
        $alm = new Persona();
        $alm->persona_id = $_REQUEST['persona_id'];
        $alm->fecha = $_REQUEST['fecha'];
        $alm->hora = $_REQUEST['hora'];
        $alm->asunto = $_REQUEST['asunto'];
        $alm->puesto_id = $_REQUEST['puesto_id'];
        $alm->portero_id = $_REQUEST['portero_id'];
        // exit();
        $this->model->Registrar($alm);

    }

    public function Editar_asunto()
    {
        sleep(1);
        $alm = new Persona();

        $alm->asunto_id = $_REQUEST['asunto_id'];
        $alm->novedad = $_REQUEST['novedad'];

        $this->model->Edit_asunto($alm);

    }

    public function insertar()
    {

        require_once '../vista/header_acceso.php';
        require_once '../vista/visita/index.html';
        require_once '../vista/footer.php';

    }
    public function Accesso()
    {

        require_once '../vista/header_acceso.php';
        require_once '../vista/Persona/accesso.php';
        require_once '../vista/footer.php';

    }
    public function Puesto()
    {

        require_once '../vista/header_acceso.php';
        require_once '../vista/Persona/puesto.php';
        require_once '../vista/footer.php';

    }

    public function Editar()
    {
        $alm = new Persona();
        if (isset($_REQUEST['visitante_id'])) {
            $alm = $this->model->Obtener($_REQUEST['visitante_id']);
            // print_r($alm);

        }
        require_once '../vista/header_acceso.php';
        require_once '../vista/Persona/editar.php';
        require_once '../vista/footer.php';

    }

    public function Edit()
    {
        $alm = new Persona();

        $alm->id = $_REQUEST['id'];
        $alm->foto = $_REQUEST['foto'];
        $alm->nombre = $_REQUEST['nombre'];
        $alm->apellidos = $_REQUEST['apellidos'];
        $alm->identidad = $_REQUEST['identidad'];
        $alm->vehi_placa = $_REQUEST['vehi_placa'];

        if ($alm->id > 0) {
            $this->model->Update($alm);
        }
        echo '
            <script>
             alert("la actualización  se realizo con éxito.");
             window.location = "?c=Personas&a=editar&visitante_id=' . $alm->id . '";
            </script>
            ';

    }

    /*  public function Add_inventario()
{

require_once '../vista/header_acceso.php';
require_once '../vista/Persona/add_inventario.php';
require_once '../vista/footer.php';

}

public function Crud()
{
$alm = new Persona();

if (isset($_REQUEST['item_id'])) {
$alm = $this->model->Update($_REQUEST['item_id']);
}

// require_once '../vista/header_acceso.php';
require_once '../vista/Persona/inv_editar.php';
require_once '../vista/footer.php';
}

public function Guardar()
{
$alm = new Persona();
$alm->id = $_REQUEST['id'];
$alm->puesto_id = $_REQUEST['puesto_id'];
$alm->cantidad = $_REQUEST['cantidad'];
$alm->item = $_REQUEST['item'];
$alm->estado = $_REQUEST['estado'];
$alm->creacion = date('Y-m-d');
$alm->novedad = $_REQUEST['actualizacion'] . '/' . $_REQUEST['novedad'];
$alm->actualizacion = $_REQUEST['actualizacion'];

$alm->id > 0
? $this->model->Actualizar($alm)
: $this->model->Registrar($alm);

header('Location:?c=Persona&a=puesto');
}

public function add_tramite()
{
$alm = new Persona();

$alm->portero_id = $_REQUEST['portero_id'];
$alm->puesto_id = $_REQUEST['puesto_id'];
$alm->tramite = $_REQUEST['tramite'];
$alm->f_entrega = $_REQUEST['f_entrega'];
$alm->h_entrega = $_REQUEST['h_entrega'];
$alm->observacion = $_REQUEST['observacion'];

$alm->id > 0
? $this->model->Actualizar($alm)
: $this->model->Guarda_Tramite($alm);

echo '<script>
alert("El tramite de ' . $alm->tramite . ' del puesto se realizo con éxito.");
window.location = "?c=Persona&a=puesto";
</script>
';

// header('Location:?c=Persona&a=puesto');
}

public function Eliminar()
{
// exit();
$this->model->Eliminar($_REQUEST['id']);
echo '<script>
alert("El Item fue retirado con éxito.");
window.location = "?c=Persona&a=puesto";
</script>
';
}*/
}