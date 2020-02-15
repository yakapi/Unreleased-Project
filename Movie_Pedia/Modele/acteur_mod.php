<?php
require 'Recursive-Modele/bdd-log.php';
$options = [PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC];
$bdd = new PDO("mysql:dbname=$dbname;host=$host;charset=utf8", $user, $pass,$options);

$query_acteur_all = $bdd->prepare('SELECT
  acteur.*,
  GROUP_CONCAT(film.id_film SEPARATOR ", ") AS filmid,
  GROUP_CONCAT(film.titre SEPARATOR ", ") AS filmtitre,
  GROUP_CONCAT(film.film_min_img SEPARATOR ", ") AS imgminfilm
  FROM acteur
  INNER JOIN jouer ON acteur.id_acteur = jouer.id_acteur
  INNER JOIN film ON jouer.id_film = film.id_film
  WHERE acteur.id_acteur = :select_acteur
  GROUP BY acteur.id_acteur');
$bind_query = $query_acteur_all->bindValue('select_acteur', $_GET['id_acteur']);
$ex_all_acteur = $query_acteur_all->execute();
$ar_all_acteur = $query_acteur_all->fetch();

$exp_film_id = explode(", ", $ar_all_acteur['filmid']);
$aru_film_id = array_unique($exp_film_id);
$exp_film_titre = explode(", ", $ar_all_acteur['filmtitre']);
$aru_film_tire = array_unique($exp_film_titre);

$exp_film_min = explode(", ", $ar_all_acteur['imgminfilm']);
$aru_film_min = array_unique($exp_film_min);


 ?>
