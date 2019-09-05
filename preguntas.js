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
      console.log(preguntas[0].Pregunta);
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
  console.log(respuesta);
  var text = ""
  if (respuesta == 1) {
    text = $("#explain").text();
  }
  if(preguntas[indice_pregunta].Tipo != 1){
    formato = {
      ID: preguntas[indice_pregunta].ID,
      ponderacion: respuesta,
      texto: $("#comments").val()
    };
    respuestas.push(formato);
    indice_pregunta++;
  }
  else {
    indice_pregunta++;
  }
  document.querySelectorAll('[name=experience]').forEach((x) => x.checked = false);
  console.log(respuestas);

  if(indice_pregunta >= preguntas.length - 1){
    $("#fin_encuesta").show();
    $("#cuestionario").hide();
  }
  else {
    $("#fin_encuesta").hide();
    $("#pregunta").html("¿" + preguntas[indice_pregunta].Pregunta + "?");
    $("#no_pregunta").html("Pregunta "+(indice_pregunta + 1));
    $("#explain").hide();
    if(preguntas[indice_pregunta+1].Tipo == 1){
      indice_pregunta++;
    }
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
    $("#pregunta_estp").html("¿" + preguntas[indice_pregunta+1].Pregunta + "?")
    var formato = {
      ID: preguntas[indice_pregunta].ID,
      ponderacion: respuesta,
      texto: $("#comments").val()
    };
    respuestas.push(formato);
    $("#explain").show();
    $("#cuestionario").hide();
    indice_pregunta++;
  }
  else {
    $("#comments").val("");
    $("#explain").show();
  }
}

function sendEncuesta(){
  $.ajax({

  });
}

getPreguntas();
