  <div class="container">
    <div class="row filtre">
      <!-- select des realisateur genre parution titre -->
      <div class="col-lg-4">
        <div id="realisateur">
          <h2>Réalisateurs  <img src="View/asset/img/logo/arrowdownft.svg" alt="arrowdown"></h2>
          <!-- drop down -->
          <div id="realisateur-down">
            <?php foreach ($select_all_realisator as $key => $column_table): ?>
              <a href="index.php?page=realisateur&id_realisateur=<?php echo $column_table['id_realisateur'] ?>"><?php echo $column_table['Nom_realisateur'].'&nbsp'.$column_table['prenom_realisateurs']; ?> </a>
            <?php endforeach; ?>
            <?php
            // foreach ($select_all_realisator as $key => $column_table) {
              // echo '<label for ="realisator'.$key.'">' . $column_table['Nom_realisateur'] .'&nbsp' . $column_table['prenom_realisateurs'] . '</label><br/>';
              // echo '<input id="realisator'.$key.'" type="submit" name="realisator" hidden>';
            // }
            ?>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div id="acteur">
          <h2>Acteurs <img src="View/asset/img/logo/arrowdownft.svg" alt="arrowdown"></h2>
          <!-- drop down -->
          <div id="acteur_down">
            <?php foreach ($select_all_actor as $key => $column_table): ?>
              <a href="index.php?page=acteur&id_acteur=<?php echo $column_table['id_acteur']; ?>"><?php echo $column_table['nom_acteur'].'&nbsp'.$column_table['prenom_acteur']; ?> </a>
            <?php endforeach; ?>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div id="genre">
          <h2>Genre  <img src="View/asset/img/logo/arrowdownft.svg" alt="arrowdown"></h2>
          <!-- drop down -->
          <div id="genre_down">
            <?php foreach ($select_all_genre as $key => $column_table): ?>
              <a href="index.php?page=genre&id_genre=<?php echo $column_table['id_genre']; ?>"><?php echo $column_table['type_genre']; ?> </a>
            <?php endforeach; ?>
          </div>
        </div>
      </div>
    </div>
  </div>
