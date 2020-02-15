<section id="article-film">
        <div class="ecran">
                <div class="presentation">
                    <img src="View/asset/img/<?php echo $all_movie_article['film_min_img']; ?>" class="photo" alt="<?php echo $all_movie_article['titre']; ?>">
                        <div class="retour rltv">
                         <a class="retourindex abslt" href="index.php">
                             <img src="View/asset/img/logo/leftarrow.svg" alt="retour">
                             <p>Retour</p>
                         </a>
                     </div>
                </div>
           <div id="f-margin">
                <h1><?php echo $all_movie_article['titre'];  ?></h1>
                <h2 >FICHE TECHNIQUE : </h2>
                <div class="f-technique">
                    <div class="ft1">
                        <h3> Date de sortie :  </h3>
                        <p><?php echo $all_movie_article['date_sortie']; ?></p>
                    </div>
                    <div class="ft1">
                        <h3>Durée : </h3>
                        <p><?php echo $all_movie_article['duree']; ?> min</p>
                    </div>
                    <div class="ft1">
                        <h3>Type : </h3>
                        <p><?php echo $all_movie_article['type']; ?></p>
                    </div>
                    <div class="ft1">
                        <h3>Genre : </h3>
                        <p><?php foreach ($genre_aru as $key => $value) {
                          echo '<p>'.$value . '&nbsp</p>';
                        }; ?></p>
                    </div>
                    <div class="ft1">
                        <h3>Réalisateur : </h3>
                        <?php for ($i=0; $i < count($aru_realisateur_id) ; $i++) {?>
                          <a href="index.php?page=realisateur&id_realisateur=<?php echo $aru_realisateur_id[$i]; ?>">
                            <?php echo $realisateur_aru[$i]; ?>
                          </a>
                          <?php
                        } ?>
                    </div>
                    <div class="ft1">
                        <h3> Acteurs principaux : </h3>
                        <?php for ($i=0; $i < count($aru_acteur_id) ; $i++) {
                          ?><a href="index.php?page=acteur&id_acteur=<?php echo $aru_acteur_id[$i]; ?>"><?php echo $acteur_aru[$i]; ?></a><?php

                        } ?>
                    </div>
                </div>
                        <div class="bande-o">
                          <?php echo $all_movie_article['iframe']; ?>
                        </div>
                    <div class="bloc-syno">
                        <h2>SYNOPSIS :</h2>
                        <p class="synopsis">
                          <?php echo $all_movie_article['synopsis']; ?>
                        </p>
                    </div>
           </div>

   </div>

    </section>
