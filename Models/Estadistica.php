<?php

class Estadistica
{
    private $pdo;

    
    public $id;
    public $url;
    public $navegador;
    public $usuario;
    public $fecha_hora;


    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Est()
    {
        /* echo "<h1>Estadisticas del sitio:</h1>";
        //Recuperar informacion del visitante de la variabler globa $_SERVER
        echo "<h4>nombre de la pagina web actual</h4>";
        echo $_SERVER['PHP_SELF'];
        echo "<h4>Pagina web de donde viene el visitante</h4>";
        echo $_SERVER['HTTP_REFERER'];
        echo "<h4> Nombre del navegador</h4>";
        echo $_SERVER['HTTP_USER_AGENT'];
        echo "<h4>Direccion Ip del visitante</h4>";
        echo $_SERVER['REMOTE_ADDR'];
        echo date("Y-m-d h:i:sa");*/
    }

    public function getUserIpAddress()
    {
        foreach (['HTTP_CLIENT_IP', 'HTTP_X_FORWARDED_FOR', 'HTTP_X_FORWARDED', 'HTTP_X_CLUSTER_CLIENT_IP', 'HTTP_FORWARDED_FOR', 'HTTP_FORWARDED', 'REMOTE_ADDR'] as $key) {

            // Comprobamos si existe la clave solicitada en el array de la variable $_SERVER
            if (array_key_exists($key, $_SERVER)) {

                // Eliminamos los espacios blancos del inicio y final para cada clave que existe en la variable $_SERVER
                foreach (array_map('trim', explode(',', $_SERVER[$key])) as $ip) {

                    // Filtramos* la variable y retorna el primero que pase el filtro
                    if (filter_var($ip, FILTER_VALIDATE_IP, FILTER_FLAG_NO_PRIV_RANGE | FILTER_FLAG_NO_RES_RANGE) !== false) {
                        return $ip;
                    }
                }
            }
        }

        return '?'; // Retornamos '?' si no hay ninguna IP o no pase el filtro
    }



    public function Add(Estadistica $data)
    {
        try {
            $stm = "INSERT INTO estadisticas(url, navegador, usuario, fecha_hora )
            VALUES(?, ?, ?, ?)";
            $this->pdo->prepare($stm)->execute(array(
                $data->url,
                $data->navegador,
                $data->usuario,
                $data->fecha_hora
            ));
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Get()
    {
        try {
            $user = $_SESSION['user']->FullName;
            $stm = $this->pdo->prepare("SELECT  MAX(fecha_hora) AS ULTIMA, estadisticas.* FROM  estadisticas WHERE usuario= '$user'");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
}
