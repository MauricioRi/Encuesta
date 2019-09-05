<?php
  $usuario = "root";
  $contrasena = "";
  $servidor = "localhost";
  $basededatos = "encuestas";

  $conexion = new mysqli($servidor, $usuario, $contrasena, $basededatos);

  if ($conexion->connect_error) {
    die('Error de Conexión (' . $conexion->connect_errno . ') '
            . $conexion->connect_error);
  }
  return $conexion;
?>
