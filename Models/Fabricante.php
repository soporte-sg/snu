<?php
//nombrar la clase
class Fabricante
{
    // crear los atributos poner los mismo nombre de la tb

    private $pdo; // atributo de la conexion a bd
    public $nombres; //atributo del objeto
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


    public function Index()
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT * FROM  fabricantes ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
 
    public function Fabricante($id)
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT * FROM  fabricantes WHERE id='$id' ");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    

    public function Add(Categoria $data)
    {
        try {

            $stm = "INSERT INTO fabricantes( nombres,created,modified)
            VALUES(?, ?, ?)";
            $this->pdo->prepare($stm)->execute(array(
                $data->nombres,
                $data->created,
                $data->modified,

            ));
            $id = $this->pdo->lastInsertId();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Edit(Categoria $data)
    {
        try {
            $sql = "UPDATE fabricantes SET nombres='$data->nombres', modified='$data->modified'
                    WHERE id = $data->id";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }


    


    public function Delete($id)
    {
        try {
            $sql = "DELETE FROM `fabricantes` WHERE id = $id";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
}
