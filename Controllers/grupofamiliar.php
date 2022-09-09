<?php
// importar los modelos necesarios
require_once 'Models/database.php';
require_once 'Models/Grupofamiliar.php';

//nombre la clase
class GrupofamiliarController
{
    public function __CONSTRUCT()
    {
        $this->model = new Grupofamiliar();
    }
    /*crear los metodos necesarios*/
    public function Index()
    {
        
        require_once 'Views/Layout/default.php';
        require_once 'Views/Cliente/index.php';
        require_once 'Views/Layout/foot.php';
    }
    public function Add()
    {
        
        require_once 'Views/Layout/default.php';
        require_once 'Views/Cliente/index.php';
        require_once 'Views/Layout/foot.php';
    }
    public function Edit()
    {
        
        require_once 'Views/Layout/default.php';
        require_once 'Views/Cliente/index.php';
        require_once 'Views/Layout/foot.php';
    }

}