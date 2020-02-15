<?php
require 'Recursive-Modele/bdd-log.php';
$options = [PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC];
$bdd = new PDO("mysql:dbname=$dbname;host=$host;charset=utf8", $user, $pass,$options);

$query_genre = $bdd->prepare('SELECT
  genre.*,
  GROUP_CONCAT(film.id_film SEPARATOR ", ") AS filmid,
  GROUP_CONCAT(film.titre SEPARATOR ", ") AS filmtitre,
  GROUP_CONCAT(film.film_min_img SEPARATOR ", ") AS minfilm
  FROM genre
  INNER JOIN apartenir ON genre.id_genre = apartenir.id_genre
  INNER JOIN film ON apartenir.id_film = film.id_film
  WHERE genre.id_genre = :select_all_genre
  GROUP BY genre.id_genre');
$bind_query = $query_genre->bindValue('select_all_genre', $_GET['id_genre']);
$ex_query_genre= $query_genre->execute();
$ar_query_genre = $query_genre->fetch();

$exp_film_id = explode(", ", $ar_query_genre['filmid']);
$aru_film_id = array_unique($exp_film_id);
$exp_film_titre = explode(", ", $ar_query_genre['filmtitre']);
$aru_film_titre = array_unique($exp_film_titre);
$exp_film_min = explode(", ", $ar_query_genre['minfilm']);
$aru_film_min = array_unique($exp_film_min);
 ?>
