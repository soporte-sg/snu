<?php


class Doc_ext
{

    private $pdo;
    public $id;
    public $CodDocumento;
    public $Proceso;
    public $NomDocumento;
    public $Version;
    public $Recuperacion;
    public $proteccion;
    public $Almacenamiento;
    public $preservacion;
    public $Emision;
    public $Actualizacion;
    public $dir;
    public $filename;


    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }


    public function getDocumentos($proceso)
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT MAX(codigo) AS ultimo
            FROM  sgcexternos 
            WHERE proceso='$proceso'");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function getDocCod($codigo)
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT *
            FROM  sgcexternos 
            WHERE codigo='$codigo' ");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }



    public function getDocProceso($proceso)
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT documentos.*, procesos.* 
            FROM  documentos, procesos
            WHERE documentos.Proceso = Procesos.id
            AND   documentos.Proceso = '$proceso'
            ORDER BY CodDocumento");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function getDocs($proceso)
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT *  FROM  sgcexternos
            WHERE sgcexternos.proceso = '$proceso'
            ORDER BY codigo");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function GetDoc($id)
    {

        try {

            $stm = $this->pdo->prepare("SELECT * FROM  Documentos WHERE id='$id'");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function upClienteValidar($id)
    {

        try {
            $stm = $this->pdo->prepare("SELECT clientes.*, squemas.* FROM  clientes, squemas 
            WHERE clientes.id=squemas.cliente_id AND clientes.id=$id ");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Registrar(Doc_ext $data)
    {

        try {

            $stm = "INSERT INTO sgcexternos(codigo, proceso, nombre, expedicion, descripcion)
            VALUES(?, ?, ?, ?, ? )";
            $this->pdo->prepare($stm)->execute(array(
                $data->codigo,
                $data->proceso,
                $data->nombre,
                $data->expedicion,
                $data->descripcion,

            ));

            $id = $this->pdo->lastInsertId();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Actualizar(Doc_ext $data)
    {

        try {

            $sql = "UPDATE sgcexternos SET codigo='$data->codigo', proceso='$data->proceso', nombre='$data->nombre',
              	expedicion='$data->expedicion', descripcion='$data->descripcion', filename='$data->filename', dir='$data->dir',
                WHERE id = $data->id";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }


    public function SubirDoc()
    {

         $_REQUEST['a'];
        $fileTmpPath = $_FILES['filename']['tmp_name'];
        $fileName = $_FILES['filename']['name'];
        $fileSize = $_FILES['filename']['size'];
        $fileType = $_FILES['filename']['type'];
        $fileNameCmps = explode(".", $fileName);
        $fileExtension = strtolower(end($fileNameCmps));
        $newFileName = $fileName;
        $allowedfileExtensions = array('xls', 'doc', 'pdf', 'docx');
        if (in_array($fileExtension, $allowedfileExtensions)) {
            // directory in which the uploaded file will be moved
            if ($_REQUEST['a'] == "GestionDocext") {
             echo    $uploadFileDir = 'Assets/img/Externos/';
            } else {
                echo  $uploadFileDir = 'Assets/Solicitudes/' . $_SESSION['datos_cliente']->nombre . '/';
            }
            $dest_path = $uploadFileDir . $newFileName;
            if (!file_exists($uploadFileDir)) {
                mkdir($uploadFileDir, 0777, true);
            }
            if (move_uploaded_file($fileTmpPath, $dest_path)) {
               echo $message = 'El archivo se cargó correctamente.';
            } else {
                echo $message = 'Hubo algún error al mover el archivo al directorio de carga. Asegúrese de que el servidor web pueda escribir en el directorio de carga.';
            }
        } else {
            echo '<script type = "text/javascript">
                    alert("La solictud fue gestionada , el archivo no pudo se subido, revisa el formato, recuerda que debe ser .pdf");
                    </script> ';
        }
    }
}
