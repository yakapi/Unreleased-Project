<?php
//===================================
//======== Config head.php ==========
$head_title = "GitNuub";
$head_bootstrap = "css/bootstrap.css";
$head_style = "css/style.css";
$head_responsive = "css/responsive.css";
$head_jQuery = "js/jquery-3.4.1.js";
//===== FIN Config head.php =========
//===================================

//===================================
//====== Config header/footer =======
$logo = "php/svg-code/GitNuub.php";
$footer_up = "php/svg-code/footer-up.php";
$link_index = "index.php";
$link_start = "page/demarrage-rapide.php";
$link_branch = "page/branche.php";
$link_collab = "page/collab.php";
//=== FIN Config header/footer ======
//===================================
 ?>
<!DOCTYPE html>
<html lang="fr" dir="ltr">
  <head>
    <!-- Common Head -->
    <?php require 'php/common/common-head.php'; ?>
    <!-- Config Additionnel -->
      <!-- Description Site -->
      <meta name="description" content="Commencer GitHub Facilement">
  </head>
  <body>
    <!-- Header -->
    <header>
      <?php require 'php/common/common-header.php'; ?>
    </header>
    <!-- Section descrbie-page -->
    <section class="describe-page">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <h1>Git Talk</h1>
            <p>Une Présentation du Vocabulaire Général de GitHub</p>
          </div>
        </div>
      </div>
    </section>
    <!-- Section content-page -->
    <section class="content-page">
      <!-- Article REPOSITORY -->
      <article class="repository">
        <?php require 'page/article/article-repository.php'; ?>
      </article>
      <article class="add">
        <?php require 'page/article/article-add.php'; ?>
      </article>
      <article class="pull">
        <?php require 'page/article/article-pull.php'; ?>
      </article>
      <article class="pullrequest">
        <?php require 'page/article/article-pullrequest.php'; ?>
      </article>
      <article class="commit">
        <?php require 'page/article/article-commit.php'; ?>
      </article>
      <article class="push">
        <?php require 'page/article/article-push.php'; ?>
      </article>
      <article class="merge">
        <?php require 'page/article/article-merge.php'; ?>
      </article>
      <article class="upstream">
        <?php require 'page/article/article-upstream.php'; ?>
      </article>
      <article class="status">
        <?php require 'page/article/article-status.php'; ?>
      </article>
      <article class="fetch">
        <?php require 'page/article/article-fetch.php'; ?>
      </article>
      <article class="fork">
        <?php require 'page/article/article-fork.php'; ?>
      </article>
  </section>
  <footer>
    <?php require 'php/common/common-footer.php'; ?>
  </footer>
  </body>
</html>
