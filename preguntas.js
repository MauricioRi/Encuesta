var indice_pregunta = 0;
var preguntas = [];

function getPreguntas(){
  $.ajax({
    type: 'POST',
    url: './funciones.php',
    data: {'preguntas': 'get'},
    async: true,
    success: function(response){
      console.log(response);
      preguntas = JSON.parse(response);
      $("#pregunta").html("¿" + preguntas[indice_pregunta].Pregunta + "?");
      $("#no_pregunta").html("Pregunta "+(indice_pregunta + 1));
      $("#fin_encuesta").hide();
      $("#explain").hide();
    }
  });
}

var pregunta_actual;
var id_pregunta_actual;
var respuesta;

var respuestas = [];

function sig_pregunta(respuesta){

  var text = ""
  if (respuesta == 1) {
    text = $("#comments").val();
  }
  if(preguntas[indice_pregunta+1].Tipo == 1 && respuesta != 1){
    indice_pregunta++;
    indice_pregunta++;
  }
  else {
    formato = {
      ID: preguntas[indice_pregunta].ID,
      ponderacion: respuesta,
      texto: text
    };
    respuestas.push(formato);

    indice_pregunta++;
  }
  document.querySelectorAll('[name=experience]').forEach((x) => x.checked = false);

  if(indice_pregunta >= preguntas.length - 1){
    $("#fin_encuesta").show();
    $("#cuestionario").hide();
  }
  else {
    $("#fin_encuesta").hide();
    $("#pregunta").html("¿" + preguntas[indice_pregunta].Pregunta + "?");
    $("#no_pregunta").html("Pregunta "+(indice_pregunta + 1));
    $("#explain").hide();

  }
}

function envio_text(respuesta, e){
  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla==13){
    sig_pregunta(respuesta);
    $("#cuestionario").show();
  }
}

function molesto(respuesta){
  if(preguntas[indice_pregunta+1].Tipo == 1){
    console.log(preguntas[indice_pregunta+1].Tipo);
    $("#pregunta_estp").html("¿" + preguntas[indice_pregunta+1].Pregunta + "?")
    var formato = {
      ID: preguntas[indice_pregunta].ID,
      ponderacion: respuesta,
      texto: $("#comments").val()
      
    };
    respuestas.push(formato);
    $("#comments").val("");
    $("#explain").show();
    $("#cuestionario").hide();
    indice_pregunta++;

  }
  else {
    $("#explain").show();
  }
}

function sendEncuesta(){
  $.ajax({
    type: 'POST',
    data: {"encuesta" : JSON.stringify(respuestas)},
    async: true,
    url: "./guardar.php",
    success: function(response) {
      alert(response);
      if(response) location.reload(true);
    }
  });
}

getPreguntas();
