<?php
session_start();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Table multiplication</title>
    <script src="https://kit.fontawesome.com/e6ea10640a.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
  <header id="upSide" class="rltv">

    <div class="logo txt-c abslt">
      <h4> MX - Engine</h4>
    </div>
    <div class="title-princ h-100">
      <h1>MultyX -
        <span class="txt-rotate" data-period="2000" data-rotate='[ "Multiplicator", "Learn", "Checkin", "BrainWork", "Easy!" ]'></span>
      </h1>
    </div>
  </header>
<section>

    <?php
    require 'table.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    /* Verrification du 1er formulaire */
    if (isset($_POST['envoi'])) {
    $_SESSION['tableQ'] = $_POST["table"];
    $table = $_SESSION['tableQ'];
    $result;

    ?>

<div class="table-content">
  <div class="flex-jc">
    <div class="table-board">

    <?php
/* Création de la table de multiplication choisi à partir du 1er form */
for ($i=1; $i < 16; $i++) {
    $result = $table * $i;
    echo "<div class='ligne txt-c'>".$table . " x ". $i . " = " . $result . "</div>";
    }
?>
<form class="mg-auto" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
<button class="btn-perso txt-c hvr-shutter-out-horizontal hvr-push" name="Exo" type="submit" value="Check in your self" >Check in your self</button>
</form>
<?php
  }

if (isset($_POST['Exo'])) {

  /* Création des questions à partir du nombre choisi à partir du 1er form  */
  for ($i=1; $i < 11 ; $i++) {
    $tableQuest = $_SESSION["tableQ"];
    $_SESSION["question".$i] = "<input class='btn-perso rep-width txt-c' name='val".$i."' type='number' value='".$tableQuest."' readonly> x <input class='btn-perso rep-width txt-c' name='val2".$i."' type='number' value='".random_int(1,15)."' readonly> = ";


    /* Deuxième form (les questions) */    ?>
    </div>
  </div>

        <?php
/* Input de la réponse */

}

?>

<?php
}

/* Partie fonctionnement des questions */

$verif = "mauvais";
/* Verif des questions (2eme form) */
if ( isset($_POST["Exo"])) {


if (!isset($_SESSION["num_Q"])) {
  $_SESSION["num_Q"] = 0;
  if ($_SESSION["num_Q"] < 1 || $_SESSION["num_Q"] > 10) {
    $_SESSION["num_Q"] = 1;
    $_SESSION["score"] = 0;
  }
}

?>
<form class="txt-c" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">

<?php


  if ($_SESSION["num_Q"] < 1 || $_SESSION["num_Q"] > 10) {
    $_SESSION["num_Q"] = 1;
    $_SESSION["score"] = 0;

  }

echo '<p class="question-block">Question 1 / 10 </p>';
echo $_SESSION["question".$_SESSION["num_Q"]]."<input class='btn-perso rep-width txt-c' name='result".$_SESSION["num_Q"]."' type='number'> <br>";
?>
    <input class='btn-perso' type="submit" name="revision" value="Continue">
</form>

<?php
}
?>
<?php

if (isset($_POST['revision'])) {
  $_SESSION["num_qest"] = $_SESSION["num_Q"] + 1;
  $phrase = 'Question '. $_SESSION["num_qest"] . ' / 10';
  if ($_SESSION["num_Q"] == 10) {
    $phrase = "FINISH !";
  }
  ?>
  <form class="txt-c" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
  <?php
  echo $phrase;
  $_SESSION["multipl1"] = $_POST['val'.$_SESSION["num_Q"]];
  $_SESSION["multipl2"] = $_POST['val2'.$_SESSION["num_Q"]];
  $_SESSION["result"] = $_POST['result'.$_SESSION["num_Q"]];
  $rep = $_SESSION["multipl1"] * $_SESSION["multipl2"];

  if ($rep == $_SESSION["result"]) {
    $_SESSION["score"] ++;
    $verif = "bon";
    echo "<div class='".$verif."'>Right</div>";
    $_SESSION['reponse'.$_SESSION['num_Q']] = "<div class='".$verif."'>C'est Juste</div>";

  }
  else {
    echo "<div class='".$verif."'>Wrong</div>";
    $_SESSION['reponse'.$_SESSION['num_Q']] = "<div class='".$verif."'>C'est Faux</div>";

  }






  $_SESSION["num_Q"] ++;

    switch ($_SESSION["num_Q"]) {
      case 2:
        echo $_SESSION["question".$_SESSION["num_Q"]]."<input class='btn-perso rep-width' name='result".$_SESSION["num_Q"]."' type='number'> <br><input class='btn-perso txt-c' type='submit' name='revision' value='Continue'>";
      break;
      case  3:
        echo $_SESSION["question".$_SESSION["num_Q"]]."<input class='btn-perso rep-width' name='result".$_SESSION["num_Q"]."' type='number'> <br><input class='btn-perso txt-c' type='submit' name='revision' value='Continue'>";
      break;
      case 4:
        echo $_SESSION["question".$_SESSION["num_Q"]]."<input class='btn-perso rep-width' name='result".$_SESSION["num_Q"]."' type='number'> <br><input class='btn-perso txt-c' type='submit' name='revision' value='Continue'>";
      break;
      case  5:
        echo $_SESSION["question".$_SESSION["num_Q"]]."<input class='btn-perso rep-width' name='result".$_SESSION["num_Q"]."' type='number'> <br><input class='btn-perso txt-c' type='submit' name='revision' value='Continue'>";
      break;
      case  6:
        echo $_SESSION["question".$_SESSION["num_Q"]]."<input class='btn-perso rep-width' name='result".$_SESSION["num_Q"]."' type='number'> <br><input  class='btn-perso txt-c' type='submit' name='revision' value='Continue'>";
      break;
      case 7:
        echo $_SESSION["question".$_SESSION["num_Q"]]."<input class='btn-perso rep-width' name='result".$_SESSION["num_Q"]."' type='number'> <br><input class='btn-perso txt-c' type='submit' name='revision' value='Continue'>";
      break;
      case  8:
        echo $_SESSION["question".$_SESSION["num_Q"]]."<input class='btn-perso rep-width' name='result".$_SESSION["num_Q"]."' type='number'> <br><input class='btn-perso txt-c' type='submit' name='revision'>";
      break;
      case 9:
        echo $_SESSION["question".$_SESSION["num_Q"]]."<input class='btn-perso rep-width' name='result".$_SESSION["num_Q"]."' type='number'> <br><input class='btn-perso txt-c' type='submit' name='revision'>";
      break;
      case  10:
        echo $_SESSION["question".$_SESSION["num_Q"]]."<input class='btn-perso rep-width' name='result".$_SESSION["num_Q"]."' type='number'> <br><input class='btn-perso txt-c' type='submit' name='revision'>";

      break;
      default:
      echo "Your Score : ". $_SESSION["score"] . "/10";
      echo '<form action="reset.php"><button class="btn-perso hvr-shutter-out-horizontal hvr-push" name="reset" type="submit" value="reset">Reset</button></form>';
    break;
    }
?>
<div class="result_Q">
<?php

?>
</div>
</form>
<?php

    }
}
?>

    </div>
  </section>
  <div class="dis-none">
    <div id="quad-svg">
      <?php require 'quadrillage.php'; ?>
    </div>
  </div>
    <footer id="downSide" class="rltv txt-c">
      <div class="box-promo h-100">
        <h4 class="css117">CSS117</h4>
      </div>
      <div class="project-link abslt hvr-pulse-shrink">
        <a class="hvr-pulse-shrink" href="https://github.com/yakapi/MultyX" target="_blank"><i class="fab fa-github-alt hvr-pulse-shrink"></i></a>
      </div>
    </footer>
    <script src="jquery-3.4.1.js"></script>
    <script src="title.js"></script>
    <script src="quadrillage.js"></script>
</body>
</html>
