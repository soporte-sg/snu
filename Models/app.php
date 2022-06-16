<?php

class App 
{
    private $pdo;

    public function __CONSTRUCT()
    {
        try {
         $this->pdo = new Database;
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

     public function getUser($user, $pass)
     {
             try {
                $result = array();
                $stm = $this->pdo->prepare("SELECT * FROM  usuarios  WHERE  usuarios='$user' AND  password='$pass' AND estado='1'");
                $stm->execute();
                return $stm->fetchAll(PDO::FETCH_OBJ);
            } catch (Exception $e) {
                die($e->getMessage());
            }
     }

     public function Identificar($u,$c)
     { 
          echo $u.$c.'usando esta funcion';  
          if($_SERVER["REQUEST_METHOD"] == "POST"){
            try {
                $result = array();
                $stm = $this->pdo->prepare("SELECT * FROM  usuarios  WHERE  usuarios='$u' AND  password='$c' AND estado='1'");
                $stm->execute();
                return $stm->fetchAll(PDO::FETCH_OBJ);
            } catch (Exception $e) {
                die($e->getMessage());
            }



        }else{
 
          }
       
         }

    }

