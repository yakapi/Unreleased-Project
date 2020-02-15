<?php
require 'Recursive-Modele/bdd-log.php';
$options = [PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC];
$bdd = new PDO("mysql:dbname=$dbname;host=$host;charset=utf8", $user, $pass,$options);

$query_forAll_movie = $bdd->prepare('SELECT * FROM film');
$table_forAll_movie = $query_forAll_movie->execute();
$forAll_movie = $query_forAll_movie->fetchAll();



 ?>
