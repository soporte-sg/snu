<?php
class Permiso
{

    private $pdo;
    public $id;
    public $rol;
    public $created;
    public $modified;

    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Index()
    {
        try {
            $stm = $this->pdo->prepare("SELECT * FROM rols");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function Permiso()
    {
        try {
            $id = $_REQUEST['id'];
            $stm = $this->pdo->prepare("SELECT * FROM permisos_ WHERE tipo_usuarios=$id ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Obtener()
    {
        try {
            $id = $_REQUEST['id'];
            $stm = $this->pdo->prepare("SELECT * FROM permisos_ WHERE id=$id ");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function AddEdit()
    {
    }
    public function Registrar($rol)
    {
        $created = date('Y-m-d');
        $modified = date('Y-m-d');
        try {

            $stm = "INSERT INTO rols(rol, created, modified )
                VALUES(?, ?, ?)";
            $this->pdo->prepare($stm)->execute(array($rol, $created, $modified));
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function Actualizar(Permiso $data)
    {
        
        try {
            $sql = "UPDATE permisos_ SET crear='$data->crear', leer='$data->leer', actualizar='$data->actualizar', borrar='$data->borrar' WHERE id = '$data->id'";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
}

    public function getRol($id)
    {
        try {
            $stm = $this->pdo->prepare("SELECT * FROM rols WHERE id=$id");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function Delete()
    {
    }

    public function validar($modulo, $tipo)
	{
		try {
			$stm = $this->pdo->prepare("SELECT * FROM permisos_ WHERE  modulo = '$modulo'  and tipo_usuarios='$tipo'");
			$stm->execute();
			return $stm->fetch(PDO::FETCH_OBJ);
		} catch (Exception $e) {
			die($e->getMessage());
		}
	}
}
