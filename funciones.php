<?php
  function getQuestions(){
    require_once("./conexion.php");
    $conexion->query("set names utf8");
    $preguntas = $conexion->query('SELECT * FROM datos');

    $preg = Array();
    while($row = $preguntas->fetch_object()){
      array_push($preg, $row);
    }
    echo json_encode($preg);
  }

if(isset($_POST['preguntas'])) getQuestions();
?>
