<?php
require_once 'Models/database.php';
require_once 'Models/Soporte.php';
require_once 'Models/Persona.php';

class SoportesController
{

    private $model;
    public function __CONSTRUCT()
    {
        $this->model = new Soporte();
    }

    public function Index()
    {
        $alm = new Persona();
        if (isset($_REQUEST['id'])) {
            $alm = $alm->GetPersona($_REQUEST['id']);
        }
        require_once 'Views/Soportes/index.php';
    }
    public function Subir()
    {
        // $alm = new Persona();
        // $alm->id = $_REQUEST['id1'];
        // $alm->cedula = $_REQUEST['cedula'];
        // $alm->user = $_REQUEST['user'];       
        // $this->model->Documentos($alm)/*registra Los doc*/ ;      

        $ubicacion = 'Assets/soportes/';
        $fileTmpPath = $_FILES['file_eps_afp']['tmp_name'];
        $fileName = $_FILES['file_eps_afp']['name'];
        $fileSize = $_FILES['file_eps_afp']['size'];
        $fileType = $_FILES['file_eps_afp']['type'];
        $soporte = new Soporte();
        $soporte->cedula = $_REQUEST['cedula'];

        foreach ($_FILES as $key => $value) {
            if ($value != '0') {
                $soporte->nombre = $key;
                $soporte->tmp_name = $value['tmp_name'];
                $soporte->size = $value['size'];
                $soporte->type = $value['type'];
                $soporte->dir = 'Assets/soportes/' . $_REQUEST['cedula'] . '/';
                if ($soporte->size > 0) {
                    $this->model->Mover($soporte);
                }
            }
        }  
        echo'
        <script>
         alert("Los Soportes se subieron con éxito");
         window.history.back()
        // window.location = "https://sgvalle.com/seleccionados/";
        </script>';     
    }
}
