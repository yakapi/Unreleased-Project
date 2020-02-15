<section id="article-genre">
  <div class="genre">
    <div class="container">
      <div class="row">
        <?php foreach ($aru_film_min as $key => $value): ?>

          <div class="col-lg-3">
            <a href="index.php?page=film&id_film=<?php echo $aru_film_id[$key]; ?>">
              <div class="content-film">
                <img src="View/asset/img/<?php echo $aru_film_min[$key]; ?>" alt="<?php echo $aru_film_titre[$key]; ?>">
                <div class="carre">
                  <p><?php echo $aru_film_titre[$key]; ?></p>
                </div>
              </div>
          </a>
        </div>
        <?php endforeach; ?>
      </div>
    </div>
  </div>
</section>
