<?php
//nombrar la clase
class Mantenimiento
{
    // crear los atributos poner los mismo nombre de la tb

    private $pdo; // atributo de la conexion a bd
    public $producto_id; //atributo del objeto
    public $user_id; //atributo del objeto
    public $verif_user_id; //atributo del objeto
    public $est_solicitud; //atributo del objeto
    public $est_ejecucion; //atributo del objeto
    public $est_verificacion; //atributo del objeto
    public $codigo; //atributo del objeto
    public $responsable; //atributo del objeto
    public $responsable_id; //atributo del objeto
    public $descripcion; //atributo del objeto
    public $fecha; //atributo del objeto
    public $recomendacion; //atributo del objeto
    public $detalles; //atributo del objeto
    public $verificacion; //atributo del objeto
    public $created; //atributo del objeto
    public $modified; //atributo del objeto


    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }


    public function IndexTodo()
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT mantenimientos.*, productos.nombre as produNombre, productos.id as produId, carateristicas FROM  mantenimientos, productos WHERE  productos.id=mantenimientos.producto_id  GROUP BY codigo ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function Index($id)
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT mantenimientos.*, productos.nombre as produNombre, productos.id as produId, carateristicas FROM  mantenimientos, productos WHERE est_solicitud='planeacion' AND productos.id=mantenimientos.producto_id AND codigo='$id'  ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function IndexPlan()
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT count(id) as cantidad, mantenimientos.* FROM  mantenimientos WHERE est_solicitud='planeacion' GROUP BY codigo ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function IndexPlanEjecutado()
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT count(id) as cantidad, mantenimientos.* FROM  mantenimientos WHERE est_ejecucion='ejecucion' GROUP BY codigo ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function Xproducto($id)
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT * FROM   mantenimientos WHERE producto_id =$id ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }


    

    public function Add(Mantenimiento $data)
    {
        try {
            $stm = "INSERT INTO mantenimientos(
            `producto_id`, 
            `user_id`, 
            `verif_user_id`, 
            `est_solicitud`,
            `est_ejecucion`,
            `est_verificacion`,
            `estado`,
            `codigo`,
             `responsable`,
             `responsable_id`,
             `descripcion`,
             `fecha`,
             `recomendacion`,
             `detalles`,
             `verificacion`,
             `created`,
             `modified` )
            VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?,?)";
            $this->pdo->prepare($stm)->execute(array(
                $data->producto_id,
                $data->user_id,
                $data->verif_user_id,
                $data->est_solicitud,
                $data->est_ejecucion,
                $data->est_verificacion,
                $data->estado,
                $data->codigo,
                $data->responsable,
                $data->responsable_id,
                $data->descripcion,
                $data->fecha,
                $data->recomendacion,
                $data->detalles,
                $data->verificacion,
                $data->created=date('Y-m-d'),
                $data->modified=date('Y-m-d'),
            ));
            $id_cliente = $this->pdo->lastInsertId();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    

    public function Quitar($id)
    {
        try {
            $sql = "DELETE FROM mantenimientos WHERE id = $id";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function ValMant(Mantenimiento $data)
    {
       // print_r($data);
        try {
            $sql = "UPDATE  mantenimientos SET est_verificacion='$data->est_verificacion', 	verificacion='$data->verificacion', modified='$data->modified'  WHERE codigo = '$data->codigo'";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function  EjecMant(Mantenimiento $data)
    {
       // print_r($data);
        try {
            $sql = "UPDATE  mantenimientos SET est_ejecucion='$data->est_ejecucion', detalles='$data->detalles', recomendacion='$data->recomendacion', modified='$data->modified'  WHERE codigo = '$data->codigo' AND producto_id='$data->producto_id'";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }


    public function Delete()
    {
        try {
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
}
