<?php

function conectaBase ($host,$usuario,$clave,$base){
if (!$enlace= @mysql_connect($host,$usuario,$clave)){
//notemos la arroba antepuesta a la función que devolvía error
return false;
} elseif (!mysql_select_db(base)){
return false;
} else {
return true;
}
}

include ("datos.php");
include ("funciones.php");
// Usamos esas variables:
if (conectarBase ($host, $usuario, $clave, $base)){
$consulta= "SELECT * FROM empleados";
if ($paquete= consultar ($consulta)){
// Aquí llamaremos a una función que muestre esos datos
} else {
echo "<p>No se encontraron datos</p>";
}
} else {
echo "<p> Servicio interrumpidos</p>";
}
?>
