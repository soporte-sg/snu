<?php
// importar los modelos necesarios
require_once 'Models/database.php';
require_once 'Models/Ubicacion.php';
require_once 'Models/Sede.php';

//nombre la clase
class UbicacionesController
{
    public function __CONSTRUCT()

    {
        $this->model = new Ubicacion();
    }
    /*crear los metodos necesarios*/
    public function Index()
    {
        $ubicacion = new Ubicacion();
        $ubicacions = $ubicacion->Index();
        require_once 'Views/Layout/inventario.php';
        require_once 'Views/Ubicaciones/index.php';
        require_once 'Views/Layout/foot.php';
    }
    public function Add()
    {
        $ubicacion = new Ubicacion();
        $sede = new Sede();
        $sedes =$sede->Index();
        if (isset($_REQUEST['id'])) {
            $ubicacion = $ubicacion->Ubicacion($_REQUEST['id']);
        }
        require_once 'Views/Ubicaciones/crud.php';
    }

    public function Crud()
    {
        $Ubicacions = new Ubicacion();
        $Ubicacions->id = $_REQUEST['id'];
        $Ubicacions->nombre = strtoupper($_REQUEST['nombre']);        
        $Ubicacions->sede_id = strtoupper($_REQUEST['sede_id']);    
        $Ubicacions->created = $_REQUEST['created'];        
        $Ubicacions->modified = date('Y-m-d');
        $Ubicacions->id > 0 ? $Ubicacions->Edit($Ubicacions) : $Ubicacions->Add($Ubicacions);
    }
    
    public function Descripcion()
    {
        $ubicacion = new Ubicacion();
        $ubicacions = $ubicacion->UbicacionxSede($_REQUEST['sede_id']);
      ?>
        <select name="ubicacion_id" id="ubicacion_id" class="form-control" required="required">';
            <option value="">Seleccionar</option>
            <?php foreach ($ubicacions as $value) : ?>
                <option value="<?= $value->id ?>"> <?= $value->nombre ?></option>
            <?php endforeach; ?>
        </select>

      <?php }
    public function Delete()
    {
        $this->model->Delete($_REQUEST['id']);
    }
}
