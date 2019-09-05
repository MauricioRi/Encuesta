<? php

function conecatarBase ($host,$usuario,$clave,$base){
if (!$enlace= mysql_connect($host,$usuario,$clave)){
return false;
} elseif (!mysql_select_db(base)){
return false;
} else {
return true;




?>