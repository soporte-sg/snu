<?php


class Roles
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

    public function AddEdit()
    {
    }
    public function Crud()
    {
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
}
