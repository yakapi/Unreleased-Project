<?php
require 'Recursive-Modele/bdd-log.php';
$options = [PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC];
$bdd = new PDO("mysql:dbname=$dbname;host=$host;charset=utf8", $user, $pass,$options);

$query_realisator_article = $bdd->prepare('SELECT
  realisateurs.*,
  GROUP_CONCAT(film.id_film SEPARATOR ", ") AS filmid,
  GROUP_CONCAT(film.titre SEPARATOR ", ") AS filmtitre,
  GROUP_CONCAT(film.film_min_img SEPARATOR ", ") AS minfilm
  FROM realisateurs

  INNER JOIN realiser ON realisateurs.id_realisateur = realiser.id_realisateur
  INNER JOIN film ON realiser.id_film = film.id_film

  WHERE realisateurs.id_realisateur = :select_realisator
  GROUP BY realisateurs.id_realisateur ');
$bind_query_realisator = $query_realisator_article->bindValue('select_realisator', $_GET['id_realisateur']);
$ex_query_realisator = $query_realisator_article->execute();
$ar_query_realisator = $query_realisator_article->fetch();

$exp_film_id = explode(", ", $ar_query_realisator['filmid']);
$aru_film_id = array_unique($exp_film_id);

$exp_film_titre = explode(", ", $ar_query_realisator['filmtitre']);
$aru_film_titre = array_unique($exp_film_titre);

$exp_film_min = explode(", ", $ar_query_realisator['minfilm']);
$aru_film_min = array_unique($exp_film_min);

 ?>
