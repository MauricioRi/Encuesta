<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Feedback Form HTML Template - reusable form</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
        <link rel="stylesheet" href="form.css" >
        <script src="https://code.jquery.com/jquery-3.4.1.js"
          integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
          crossorigin="anonymous"></script>
        <script src="./preguntas.js"></script>
    </head>
    <body >
        <div class="container">
            <div class="imagebg"></div>
            <div class="row " style="margin-top: 50px">
                <div class="col-md-10 col-md-offset-1 form-container">

                    <h2>¿Como fue tu experiencia de servicio?</h2>
                    <form role="form" method="post" id="reused_form">
                        <div class="row" id = "cuestionario">
                            <div class="col-sm-12 form-group">
                                <span id="no_pregunta">Pregunta 1</span>
                                <br>
                                <label id="pregunta">¿Si necesitó de ayuda para la búsqueda de un libro?</label>
                                <p>
                                    <label class="radio-inline">
                                        <input type="radio" name="experience" onclick="molesto(1)" id="radio_experience" value="1" >
                                        &#x1F621; molesto
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="experience" onclick="sig_pregunta(2)" id="radio_experience" value="2" >
                                        &#x1F641; insatisfecho
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="experience" onclick="sig_pregunta(3)" id="radio_experience" value="3" >
                                        &#x1F615; indiferente
                                    </label>

                                    <label class="radio-inline">
                                        <input type="radio" name="experience" onclick="sig_pregunta(4)" id="radio_experience" value="4" >
                                       &#x1F642; satisfecho
                                    </label>

                                    <label class="radio-inline">
                                        <input type="radio" name="experience" onclick="sig_pregunta(5)" id="radio_experience" value="5" >
                                        &#x1F601; muy satisfecho
                                    </label>
                                </p>
                            </div>
                        </div>
                        <div class="row" id="explain">
                            <div class="col-sm-12 form-group">
                                <label for="comments" id="pregunta_estp">¿Cómo le entendieron?</label>
                                <textarea  onkeypress="envio_text(1, event)" class="form-control" type="textarea" name="comments" id="comments" placeholder="Your Comments" maxlength="6000" rows="7"></textarea>
                            </div>
                        </div>
                        <div class="col-sm-12 form-group" id="fin_encuesta">
                            <button class="btn btn-lg btn-warning btn-block" id="enviar">Finalizar </button>
                        </div>
                        </div>
                    </form>

                    <div id="success_message" style="width:100%; height:100%; display:none; "> <h3>Posted your feedback successfully!</h3> </div>
                    <div id="error_message" style="width:100%; height:100%; display:none; "> <h3>Error</h3> Sorry there was an error sending your form. </div>
                </div>
            </div>
        </div>
    </body>
</html>
