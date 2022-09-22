<?php
class Grafico{
    private $pdo;

    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }


/*Solicitudes aprobadas por mes */
   public function SolByMes()
   {
    try {
        $result = array();
        $stms="SELECT DISTINCT(TipoDocumento) as tipo,EjecucionCambio,COUNT(Aprobado) as total  FROM solicitudes WHERE Aprobado='si' GROUP BY TipoDocumento ";
        $stm = $this->pdo->prepare($stms);
        $stm->execute();
        return $stm->fetchAll(PDO::FETCH_ASSOC);
    //      while ($row=$stm->fetch(PDO::FETCH_ASSOC)) {
    //         $result['Solicitudes'][]=$row['tipo'];
    //         $result['total'][]=$row['total'];
    //         $result['EjecucionCambio'][]=$row['EjecucionCambio'];
    //      };
    //   return  json_encode($result);
    //    return $row['TipoDocumento'];

    } catch (Exception $e) {
        die($e->getMessage());
    }
   }

}