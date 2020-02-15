    <section id="article-realisateur">
        <div class="ecran">
            <div class="presentation">
                <img src="View/asset/img/<?php echo $ar_query_realisator['img_realisateur'] ?>" class="photo" alt="<?php echo $ar_query_realisator['Nom_realisateur']; ?>">
                <div class="retour rltv">
                    <a class="retourindex abslt" href="index.php">
                        <img src="View/asset/img/logo/leftarrow.svg" alt="retour">
                        <p>Retour</p>
                    </a>
                </div>
            </div>
                <div id="f-margin">
                    <h1><?php echo $ar_query_realisator['prenom_realisateurs'].'&nbsp'.$ar_query_realisator['Nom_realisateur']; ?></h1>
                    <div class="bloc-bio mb">
                        <h2> BIOGRAPHIE ET PARCOURS:</h2>
                        <p class="bio"><?php echo $ar_query_realisator['biographie_realisateur']; ?> </p>
                    </div>
                  <div class="info-cle">
                    <h2> INFORMATIONS DIVERSES </h2>
                    <div class="info1">
                        <h3> Date de naissance : </h3>
                        <p><?php echo $ar_query_realisator['naisance_realisateur']; ?></p>
                    </div>
                    <div class="info1">

                        <h3>Nationnalité : </h3>
                        <p> <?php echo $ar_query_realisator['nationalite_realisateur']; ?></p>
                    </div>

                    <div class="info1">
                        <h3> Filmographie totale </h3>
                        <p><?php echo $ar_query_realisator['nombre_films']; ?></p>
                    </div>

                    <div class="info2">
                        <h3> Films principaux : </h3>
                        <?php foreach ($aru_film_min as $key => $value): ?>
                            <a href="index.php?page=film&id_film=<?php echo $aru_film_id[$key];?>">
                                <div class="carre mr rltv">
                                    <img src="View/asset/img/<?php echo $value; ?>" alt="<?php echo $aru_film_titre[$key]; ?>">
                                    <div class="carre-view abslt">
                                        <p>
                                            <?php echo $aru_film_titre[$key]; ?>
                                        </p>
                                    </div>
                                </div>
                            </a>
                        <?php endforeach; ?>
                    </div>
                  </div>
                </div>
            </div>
    </section>
