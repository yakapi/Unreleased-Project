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
    <link rel="stylesheet" href="../css/branch.css">
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
            <h1>Team Work / Branch </h1>
            <p>Travailler en équipe à l'aide des branches</p>
          </div>
        </div>
      </div>
    </section>
    <!-- Section content-page -->
    <section class="content-page">
      <!-- Article Local BRANCH -->
      <article class="local-branch">
        <?php require 'article/article-etape7.php'; ?>
      </article>
      <!-- Article Local BRANCH to Online  -->
      <article class="online-branch">
        <?php require 'article/article-etape8.php'; ?>
      </article>
      <!-- Article ADD Files to BRANCH -->
      <article class="add-file-branch">
        <?php require 'article/article-etape9.php'; ?>
      </article>
      <!-- Article Merge BRANCH -->
      <article class="merge-branch">
        <?php require 'article/article-etape10.php'; ?>
      </article>
  </section>
  <footer>
    <?php require '../php/common/common-footer.php'; ?>
  </footer>
  </body>
</html>
