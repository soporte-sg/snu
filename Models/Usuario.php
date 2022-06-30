<?php
class Usuario
{ 
    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }



    public function Index(){
        try {
            $stm = $this->pdo->prepare("SELECT usuarios.* , rols.rol FROM  usuarios, rols WHERE usuarios.rol_id=rols.id ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function getUsuario(){

        try {
            $id=$_REQUEST['id'];
            $stm = $this->pdo->prepare("SELECT * FROM  usuarios WHERE id='$id'");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function ClaveUpdate(Usuario $data){

        try {
            $sql = "UPDATE usuarios SET username='$data->username' , password='$data->password' WHERE id = '$data->id";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
}