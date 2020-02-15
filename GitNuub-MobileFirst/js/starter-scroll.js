$(document).ready(function(){

// Déroulement du Contenu des Article du Démarrage rapide
  //Installation
  $("#installation-click").on('click', function(){
    $("#installation-content").slideToggle(1000);
  });

  // Configuration
  $("#configuration-click").on('click', function(){
    $("#configuration-content").slideToggle(1000);
  });

  // Creation Repository en ligne
  $("#repository-online-click").on('click', function(){
    $("#repository-online-content").slideToggle(1000);
  });

  // Clonnage
  $("#clone-title").on('click', function(){
    $("#clone-contenu").slideToggle(1000);
  });

  // Master
  $("#master-title").on('click', function(){
    $("#master-contenu").slideToggle(1000);
  });

  // Send
  $("#send-title").on('click', function(){
    $("#send-contenu").slideToggle(1000);
  });

});
