<?php

  // Récupération des nom et prenom acteurs
  $query_select_actor = $bdd->prepare('SELECT id_acteur,prenom_acteur,nom_acteur FROM acteur');
  $table_select_actor = $query_select_actor->execute();
  $select_all_actor = $query_select_actor->fetchAll();
  // Récupération des titres de films et leur dates de sortie
  $query_select_film = $bdd->prepare('SELECT titre,date_sortie FROM film');
  $table_select_film = $query_select_film->execute();
  $select_all_film = $query_select_film->fetchAll();
  //Récupératio des Genres
  $query_select_gnr = $bdd->prepare('SELECT * FROM genre');
  $table_select_genre = $query_select_gnr->execute();
  $select_all_genre = $query_select_gnr->fetchAll();
  //Récupération des realisateur
  $query_select_realisator = $bdd->prepare('SELECT * FROM realisateurs');
  $table_select_realisator = $query_select_realisator->execute();
  $select_all_realisator = $query_select_realisator->fetchAll();
  //** fetchAll modern action **
  // $all_actor = $query_actor->fetchAll();
  // foreach ($all_actor as $id => $value) {
  //   var_dump($value);
  // }
  //** basic fetch action **
  // $all_actor = $query_actor->fetch();
  // while ($all_actor = $query_actor->fetch()) {
  //   foreach ($all_actor as $id => $value) {
  //     echo $value;
  //   }
  // }


 ?>
