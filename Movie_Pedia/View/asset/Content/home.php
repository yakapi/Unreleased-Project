<section id="corps-de-page">
  <div class="deco rltv">
      <img class ="clap abslt" src="View/asset/img/deco/clap.png" alt="clap">
  </div>
  
  <div id="karousel" class="rltv">
    <?php
    include 'carroussel3D.php';
    ?>
  </div>
  <div class="arrow1 js-scrollTo">
    <?php
    require 'View/asset/img/logo/arrow.php';
    ?>
  </div>
  <div class="deco rltv">
      <img class ="popcorng abslt" src="View/asset/img/deco/popcorng.png" alt="popcorng">
      <img class ="popcornd abslt" src="View/asset/img/deco/popcornd.png" alt="popcornd">
  </div>
  <div class="recherche">
  <h1>Je cherche un
  <a class="typewrite" data-period="2000" data-type='[ "film", "acteur", "réalisateur", "genre"]'>
  <span class="wrap"></span>
  </a>
</h1>
  </div>
  <div class="arrow2 js-scrollTo">
    <?php
    require 'View/asset/img/logo/arrow.php';
    ?>
  </div>
  <div id="filter-nav">
    <?php require 'View/asset/Content/Recursive-content/filter-film.php'; ?>
  </div>
  <!-- Zone d'Affichage -->
  <aside class="screen-zone rltv">
    
    <div class="container">
      <div class="row margin">
        <?php
          foreach ($forAll_movie as $key => $column_table) {
            ?>
            <div class="col-lg-2">
              <div class="carre rltv">
                <img src="View/asset/img/<?php echo $column_table['film_min_img']?>" alt="<?php echo $column_table['titre'] ?>">
                <a href="index.php?page=film&id_film=<?php echo $column_table['id_film']?>">
                  <div class="carre-view abslt">
                    <h1><?php echo $column_table['titre']; ?></h1>
                    <div class="hm-date">
                        <p>Date de sortie : </p>
                        <?php echo '<p>'.$column_table['date_sortie'].'</p>';?>
                    </div>
                    <div class="hm-duree">
                      <p>Durée : </p>
                      <?php echo '<p>'.$column_table['duree'].' min</p>'; ?>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <?php
          }
         ?>
      </div>
    </div>
    
  </aside>
  
  <img class="arrowup oh" src="View/asset/img/logo/arrowup.svg" alt="arrowup">
</section>
