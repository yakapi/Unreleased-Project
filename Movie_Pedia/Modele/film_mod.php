<?php
require 'Recursive-Modele/bdd-log.php';
$options = [PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC];
$bdd = new PDO("mysql:dbname=$dbname;host=$host;charset=utf8", $user, $pass,$options);

$query_movie_article = $bdd->prepare('SELECT
     film.*,-- on selectionne tous dans la table film
     GROUP_CONCAT(genre.type_genre SEPARATOR ", ") AS genres,-- on regroupe les different genre lier a film dans un new tableau genres
     GROUP_CONCAT(acteur.nom_acteur SEPARATOR ", ") AS actorname,-- on regroupe les different genre lier a film dans un new tableau genres
     GROUP_CONCAT(acteur.id_acteur SEPARATOR ", ") AS actorid,-- on regroupe les different genre lier a film dans un new tableau genres
     GROUP_CONCAT(realisateurs.id_realisateur SEPARATOR ", ") AS realisatorid,-- on regroupe les different genre lier a film dans un new tableau genres
     GROUP_CONCAT(realisateurs.Nom_realisateur SEPARATOR ", ") AS realisatorname -- on regroupe les different realisateur lier a film dans un new tableau genres
     FROM film -- depuis la table film
     INNER JOIN apartenir ON film.id_film = apartenir.id_film -- on join la collone id_film de la table film et de la table appartenir
     INNER JOIN genre ON apartenir.id_genre = genre.id_genre -- on join la collone id_genre de la table apartenir et de la table genre

     INNER JOIN realiser ON film.id_film = realiser.id_film
     INNER JOIN realisateurs ON realiser.id_realisateur = realisateurs.id_realisateur

     INNER JOIN jouer ON film.id_film = jouer.id_film
     INNER JOIN acteur ON jouer.id_acteur = acteur.id_acteur

     WHERE film.id_film = :select_film-- Ou id_film egal a la valeur de select_film
     GROUP BY film.id_film');

$bind_query = $query_movie_article->bindValue('select_film', $_GET['id_film']);
$table_all_movie_article = $query_movie_article->execute();
$all_movie_article = $query_movie_article->fetch();
//regroupemment des reponse multiples de genre dans un tableau
$exp_genre = explode(", ",$all_movie_article['genres']);
$genre_aru = array_unique($exp_genre);
//regroupemment des reponse multiples de acteur dans un tableau
$exp_acteur = explode(", ",$all_movie_article['actorname']);
$acteur_aru = array_unique($exp_acteur);
//regroupemment des reponse multiples de acteur dans un tableau
$exp_realisateur = explode(", ",$all_movie_article['realisatorname']);
$realisateur_aru = array_unique($exp_realisateur);

$exp_acteur_id = explode(", ",$all_movie_article['actorid']);
$aru_acteur_id = array_unique($exp_acteur_id);

$exp_realisateur_id = explode(", ", $all_movie_article['realisatorid']);
$aru_realisateur_id = array_unique($exp_realisateur_id);
?>
