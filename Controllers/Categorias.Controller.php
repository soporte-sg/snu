<?php
// importar los modelos necesarios
require_once 'Models/database.php';
require_once 'Models/Categoria.php';

//nombre la clase
class CategoriasController
{
    public function __CONSTRUCT()
    {
        $this->model = new Categoria();
    }
    /*crear los metodos necesarios*/
    public function Index()
    {
        $categoria = new Categoria();
        $categorias = $categoria->Index();
        require_once 'Views/Layout/inventario.php';
        require_once 'Views/Categorias/index.php';
        require_once 'Views/Layout/foot.php';
    }
    public function Add()
    {
        $categoria = new Categoria();
        if (isset($_REQUEST['id'])) {
            $categoria = $categoria->Categoria($_REQUEST['id']);
        }
        require_once 'Views/Categorias/crud.php';
    }

    public function Crud()
    {
        $categoria = new Categoria();
        $categoria->id = $_REQUEST['id'];
        $categoria->nombre = $_REQUEST['nombre'];
        $categoria->codigo = $_REQUEST['codigo'];
        $categoria->vidautil = $_REQUEST['vidautil'];
        $categoria->created = $_REQUEST['created'];
        $categoria->modified = date('Y-m-d');

        $categoria->id > 0 ? $categoria->Edit($categoria) : $categoria->Add($categoria);
    }



    public function Delete()
    {
        $this->model->Delete($_REQUEST['id']);
    }
}
