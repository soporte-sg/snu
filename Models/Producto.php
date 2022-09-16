<?php
//nombrar la clase
class Producto
{
    // crear los atributos poner los mismo nombre de la tb

    private $pdo; // atributo de la conexion a bd
    public $id; //atributo del objeto
    public $categoria_id; //atributo del objeto

    public $fabricante_id; //atributo del objeto

    public $ubicacion_id; //atributo del objeto

    public $estado_id; //atributo del objeto

    public $usuario_id; //atributo del objeto

    public $sede_id; //atributo del objeto

    public $proveedor; //atributo del objeto
    public $cantidad; //atributo del objeto
    public $factura; //atributo del objeto
    public $nombre; //atributo del objeto
    public $carateristicas; //atributo del objeto
    public $serie; //atributo del objeto
    public $placainventario; //atributo del objeto
    public $preciocosto; //atributo del objeto
    public $fechacompra; //atributo del objeto
    public $filename; //atributo del objeto
    public $dir; //atributo del objeto
    public $created; //atributo del objeto
    public $modified; //atributo del objeto
    public $adquisicion;



    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function Informe()
    {
        $stm = $this->pdo->prepare("SELECT COUNT(estado_id) AS cantidad, estados.nombre AS estado 
        FROM productos, estados 
        WHERE productos.estado_id= estados.id 
        GROUP BY estado_id");
        $stm->execute();
        return $stm->fetchAll(PDO::FETCH_OBJ);
    }

    public function Index()
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT * FROM  productos ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Producto($id)
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT * FROM  productos WHERE id = $id ");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    
    public function VerProducto($id)
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT productos.*, productos.id as producto_id,
            categorias.nombre as categoria, categorias.id as categoria_id,
            fabricantes.nombres as fabricantes,fabricantes.id as fabricantes_id,
            ubicacions.nombre as ubicacion,ubicacions.id as ubicacion_id,
            sedes.nombre as sede, sedes.id as sede_id,
            estados.nombre as estado , estados.id as estado_id
                FROM  productos
                    LEFT JOIN categorias ON productos.categoria_id= categorias.id
                    LEFT JOIN fabricantes ON productos.fabricante_id= fabricantes.id
                    LEFT JOIN ubicacions ON productos.ubicacion_id= ubicacions.id
                    LEFT JOIN sedes ON productos.sede_id= sedes.id
                    LEFT JOIN estados ON productos.estado_id= estados.id
                WHERE productos.id = $id");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Xubicacion($id)
    {
        try{
        $stm = $this->pdo->prepare("SELECT productos.*, productos.id as producto_id,
            categorias.nombre as categoria, categorias.id as categoria_id,
            fabricantes.nombres as fabricantes,fabricantes.id as fabricantes_id,
            ubicacions.nombre as ubicacion,ubicacions.id as ubicacion_id,
            sedes.nombre as sede, sedes.id as sede_id,
            estados.nombre as estado , estados.id as estado_id
                FROM  productos
                    LEFT JOIN categorias ON productos.categoria_id= categorias.id
                    LEFT JOIN fabricantes ON productos.fabricante_id= fabricantes.id
                    LEFT JOIN ubicacions ON productos.ubicacion_id= ubicacions.id
                    LEFT JOIN sedes ON productos.sede_id= sedes.id
                    LEFT JOIN estados ON productos.estado_id= estados.id
                WHERE productos.ubicacion_id = $id");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function Add(Producto $data)
    {
        try {

            $stm = "INSERT INTO productos(`categoria_id`, `fabricante_id`, `ubicacion_id`, `estado_id`, `usuario_id`, `sede_id`, `adquisicion`,
                                           `proveedor`, `cantidad`, `factura`, `nombre`, `carateristicas`, `serie`, `placainventario`,
                                            `preciocosto`, `fechacompra`, `filename`, `dir`, `created`, `modified` )
            VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            $this->pdo->prepare($stm)->execute(array(

                $data->categoria_id,
                $data->fabricante_id,
                $data->ubicacion_id,
                $data->estado_id,
                $data->usuario_id,
                $data->sede_id,
                $data->adquisicion,
                $data->proveedor,
                $data->cantidad,
                $data->factura,
                $data->nombre,
                $data->carateristicas,
                $data->serie,
                $data->placainventario,
                $data->preciocosto,
                $data->fechacompra,
                $data->filename,
                $data->dir,
                $data->created,
                $data->modified,
            ));
            $_SESSION['id_producto'] = $this->pdo->lastInsertId();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Edit(Producto $data)
    {
        try {
            $sql = "UPDATE tb_proceso_noconformes SET nombre='$data->nombre', direccion='$data->direccion', telefono='$data->telefono',
                correos='$data->correos', salario='$data->salario', matriz='$data->matriz', fechainicio='$data->fechainicio',
                rector='$data->rector'  WHERE id = $data->id";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function EditEstado(Producto $data)
    {
        try {
            $sql = "UPDATE productos SET estado_id='$data->estado_id'  WHERE id = $data->id";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    
    public function RespuestaEdit(Producto $data)
    {
        try {
            $sql = "UPDATE  tb_proceso_noconformes SET estado='$data->estado', fechaRespuesta='$data->fechaRespuesta', conciliacion='$data->conciliacion',
                taccion='$data->taccion', respuesta='$data->respuesta', num_accion_corr='$data->num_accion_corr' , 	fechaValidacion='$data->fechaValidacion', observacion='$data->observacion', observacion1='$data->observacion1'  WHERE id = $data->id";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }



    public function GetAutoreporte($campo, $valor)
    {

        try {
            $stm = $this->pdo->prepare("SELECT  tb_proceso_noconformes.*,tb_condiciones.* , tb_proceso_noconformes.usuario as user, tb_proceso_noconformes.id as id1
            FROM  tb_proceso_noconformes, tb_condiciones 
            WHERE 
            $campo='$valor'
            AND tb_proceso_noconformes.TbCondiciones_id=tb_condiciones.id");
            $stm->execute();

            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
        }
    }

    public function GetAutorep($id)
    {

        try {

            $stm = $this->pdo->prepare("SELECT  tb_proceso_noconformes.*,tb_condiciones.* , tb_proceso_noconformes.usuario as user, tb_proceso_noconformes.id as id1 
            FROM  tb_proceso_noconformes, tb_condiciones 
            WHERE 
            tb_proceso_noconformes.id='$id'
             AND
             tb_proceso_noconformes.TbCondiciones_id=tb_condiciones.id           
            ");
            $stm->execute();

            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
        }
    }

    public function Recurrente($pro, $cond)
    {
        try {

            $stm = $this->pdo->prepare("SELECT COUNT(tb_proceso_noconformes.id) AS cantidad
            FROM  tb_proceso_noconformes
            WHERE 
            tb_proceso_noconformes.proceso='$pro'
             AND
             tb_proceso_noconformes.TbCondiciones_id='$cond'           
            ");
            $stm->execute();

            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
        }
    }

    public function SubirImg()
    {
        $fileTmpPath = $_FILES['filename']['tmp_name'];
        $fileName = $_FILES['filename']['name'];
        $fileSize = $_FILES['filename']['size'];
        $fileType = $_FILES['filename']['type'];
        $fileNameCmps = explode(".", $fileName);
        $fileExtension = strtolower(end($fileNameCmps));
        $newFileName = $fileName;
        $allowedfileExtensions = array('jpg', 'png', 'jpeg');
        if (in_array($fileExtension, $allowedfileExtensions)) {
            // directory in which the uploaded file will be moved
            $uploadFileDir = 'Assets/productos/' . $_SESSION['datos_cliente']->nombre . '/';
            echo $dest_path = $uploadFileDir . $newFileName;
            if (!file_exists($uploadFileDir)) {
                mkdir($uploadFileDir, 0777, true);
                echo    $message = 'no existe la carpeta';
            }
            if (move_uploaded_file($fileTmpPath, $dest_path)) {
                echo    $message = 'El archivo se cargó correctamente.';
            } else {
                echo  $message = 'Hubo algún error al mover el archivo al directorio de carga. Asegúrese de que el servidor web pueda escribir en el directorio de carga.';
            }
        } else {
            echo '<script type = "text/javascript">
                    alert("La solictud fue gestionada , el archivo no pudo se subido, revisa el formato, recuerda que debe ser .pdf");
                    </script> ';
        }
    }

    public function reg_Prestamo(Producto $data)
    {
        try {

            
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function edit_Prestamo(Producto $data)
    {
        # code...
    }


    public function Delete()
    {
        try {
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
}
