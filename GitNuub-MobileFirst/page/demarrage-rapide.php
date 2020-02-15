<?php
//===================================
//======== Config head.php ==========
$head_title = "GitNuub";
$head_bootstrap = "../css/bootstrap.css";
$head_style = "../css/style.css";
$head_responsive = "../css/responsive.css";
$head_jQuery = "../js/jquery-3.4.1.js";
//===== FIN Config head.php =========
//===================================

//===================================
//====== Config header/footer =======
$logo = "../php/svg-code/GitNuub.php";
$footer_up = "../php/svg-code/footer-up.php";
$link_index = "../index.php";
$link_start = "demarrage-rapide.php";
$link_branch = "branche.php";
$link_collab = "collab.php";
//=== FIN Config header/footer ======
//=================================== ?>
<!DOCTYPE html>
<html lang="fr" dir="ltr">
  <head>
    <!-- Common Head -->
    <?php require '../php/common/common-head.php'; ?>
    <!-- Config Additionnel -->
      <!-- Description Site -->
      <link rel="stylesheet" href="../css/starter.css">
  </head>
  <body>
    <!-- Header -->
    <header>
      <?php require '../php/common/common-header.php'; ?>
    </header>
    <!-- Section descrbie-page -->
    <section class="describe-page">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <h1>Démarrage Rapide</h1>
            <p>Les premiers pas avec GitHub</p>
          </div>
        </div>
      </div>
    </section>
    <!-- Section content-page -->
    <section class="content-page">
      <!-- Article INSTALLATION -->
      <article class="installation">
        <?php require 'article/article-etape1.php'; ?>
      </article>
      <!-- Article CONFIGURATION -->
      <article class="configuration">
        <?php require 'article/article-etape2.php'; ?>
      </article>
      <!-- Article Creation Repository en ligne -->
      <article class="online-repository">
        <?php require 'article/article-etape3.php'; ?>
      </article>
      <!-- Article Connection Repository local -->
      <article class="configuration">
        <?php require 'article/article-etape4.php'; ?>
      </article>
      <!-- Article Init Master Branch -->
      <article class="init-master">
        <?php require 'article/article-etape5.php'; ?>
      </article>
      <!-- Article Send File -->
      <article class="configuration">
        <?php require 'article/article-etape6.php'; ?>
      </article>
  </section>
  <footer>
    <?php require '../php/common/common-footer.php'; ?>
  </footer>
  <script type="text/javascript" src="../js/starter-scroll.js"></script>
  </body>
</html>
