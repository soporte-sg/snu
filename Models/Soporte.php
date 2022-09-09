<?php
class Soporte
{
    private $pdo;
    public $id;

    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public  function Listar()
    {
    }


    public  function Mover(Soporte $data)
    {

        $fileTmpPath = $data->tmp_name;
        $fileName = $data->nombre;
        $fileSize = $data->size;
        $fileType = $data->type;
        $fileNameCmps = explode(".", $fileName);
        $fileExtension = strtolower(end($fileNameCmps));
        $fileTypeCmps = explode("/", $fileType);
        $fileExtCmps = strtolower(end($fileTypeCmps));
        $newFileName = $fileName . '.' . $fileExtCmps;
        $allowedfileExtensions = array('jpg', 'gif', 'png', 'zip', 'txt', 'xls', 'doc', 'pdf');
        if (in_array($fileExtCmps, $allowedfileExtensions)) {
            // directory in which the uploaded file will be moved
            $uploadFileDir = $data->dir . '/';
            $dest_path = $uploadFileDir . $newFileName;
            if (!file_exists($uploadFileDir)) {
                mkdir($uploadFileDir, 0777, true);
            }
            if (move_uploaded_file($fileTmpPath, $dest_path)) {
                   $message = 'El archivo se cargó correctamente.';
            } else {
                  $message = 'Hubo algún error al mover el archivo al directorio de carga. Asegúrese de que el servidor web pueda escribir en el directorio de carga.';
            }
        }
    }
}
