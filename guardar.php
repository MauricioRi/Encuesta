<?php

  function saveEncuesta(){
      require_once("./conexion.php");

      $data = json_decode($_POST['encuesta']);
      $registros_insertados = 0;
      $sql_inicio = "INSERT INTO pregunta VALUES";
      foreach( $data as $row){
        //$pregunta = json_decode($row);
        $id = $row -> ID;
        $ponde = $row -> ponderacion;
        $texto = $row -> texto;
        //echo $id;
        if($conexion->query($sql_inicio."($id, '$texto', $ponde, NOW());")) $registros_insertados = $registros_insertados + 1;
      }

      echo $registros_insertados;
  }

  if($_POST['encuesta']) saveEncuesta();
?>
