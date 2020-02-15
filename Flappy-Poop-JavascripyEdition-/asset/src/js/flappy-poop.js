$(document).ready(function(){
  let score = 0;
// Créer un Profil a notre hero
  // Constructeur de Hero
  function hero(name, level){// nom + prenom que nous donnerons au hero
    let hero = document.getElementById('hero');
    this.name = name;// la variable du nom que nous aurons donner au hero
    this.level = level;// la variable du level que nous aurons donner au hero
    this.element = hero;// La variable récupérer de notre hero
    this.autoMove = setInterval(function (){// on execute en boucle une fonction dans un intervalle de temps
          let hero_pos_y = parseInt(window.getComputedStyle(hero).getPropertyValue("bottom"));// on récupère la variable de la position basse de notre hero
          hero_pos_y -= 5;// on soustrait 5 au resultat récupérer dans la console
          hero.style.bottom = hero_pos_y + "px";// on affecte cette nouvelle valeur a la position css de notre héro
        },50);// on definit l intervale de temps d'execution de notre boucle
    this.hero_forward = setInterval(function(){
          let hero_pos_x = parseInt(window.getComputedStyle(hero).getPropertyValue("left"));// on récupère la variable de la position basse de notre hero
          hero_pos_x += 2;
          hero.style.left = hero_pos_x + "px";
        },500);
    this.jump = $(window).on('keydown', function(keyboard){// ecoute d'une pression sur le clavier
          if (keyboard.keyCode == 32) {// Si ce dit code est == a 32 alors
            let hero_pos_y = parseInt(window.getComputedStyle(hero).getPropertyValue("bottom"));// on récupère la variable de la position basse de notre hero
            hero_pos_y += 50;// on ajoute 5 au resultat récupérer dans la console
            hero.style.bottom = hero_pos_y + "px";// on affecte cette nouvelle valeur a la position css de notre héro
          }
        });

    };
// !voila nous avons créer un constructeur de hero
// Generer un spawn d ennemi
  //on creer un constructeur de spawn ennemi
  function spawn_enemy(name){
    function random_location(){
      function getRandomInt(max) {
        return Math.floor(Math.random() * Math.floor(max));
      };
      let random_pos = getRandomInt(8);
      if (random_pos == 0) {
        let random_skin = getRandomInt(4)
        if (random_skin == 0) {
          $("#ecran").append('<div id="spawn-loc1" class="enemy skin-enemy"></div>');
        }else if (random_skin == 1) {
          $("#ecran").append('<div id="spawn-loc1" class="enemy skin-enemy2"></div>');
        }else {
          $("#ecran").append('<div id="spawn-loc1" class="enemy skin-enemy3"></div>');
        }
      }else if (random_pos == 1) {
        let random_skin = getRandomInt(4)
        if (random_skin == 0) {
          $("#ecran").append('<div id="spawn-loc2" class="enemy skin-enemy"></div>');
        }else if (random_skin == 1) {
          $("#ecran").append('<div id="spawn-loc2" class="enemy skin-enemy2"></div>');
        }else {
          $("#ecran").append('<div id="spawn-loc2" class="enemy skin-enemy3"></div>');
        }
      }else if (random_pos == 2) {
        let random_skin = getRandomInt(4)
        if (random_skin == 0) {
          $("#ecran").append('<div id="spawn-loc3" class="enemy skin-enemy"></div>');
        }else if (random_skin == 1) {
          $("#ecran").append('<div id="spawn-loc3" class="enemy skin-enemy2"></div>');
        }else {
          $("#ecran").append('<div id="spawn-loc3" class="enemy skin-enemy3"></div>');
        }
      }else if (random_pos == 3) {
        let random_skin = getRandomInt(4)
        if (random_skin == 0) {
          $("#ecran").append('<div id="spawn-loc4" class="enemy skin-enemy"></div>');
        }else if (random_skin == 1) {
          $("#ecran").append('<div id="spawn-loc4" class="enemy skin-enemy2"></div>');
        }else {
          $("#ecran").append('<div id="spawn-loc4" class="enemy skin-enemy3"></div>');
        }
      }else if (random_pos == 4) {
        let random_skin = getRandomInt(4)
        if (random_skin == 0) {
          $("#ecran").append('<div id="spawn-loc5" class="enemy skin-enemy"></div>');
        }else if (random_skin == 1) {
          $("#ecran").append('<div id="spawn-loc5" class="enemy skin-enemy2"></div>');
        }else {
          $("#ecran").append('<div id="spawn-loc5" class="enemy skin-enemy3"></div>');
        }
      }else if (random_pos == 5) {
        let random_skin = getRandomInt(4)
        if (random_skin == 0) {
          $("#ecran").append('<div id="spawn-loc6" class="enemy skin-enemy"></div>');
        }else if (random_skin == 1) {
          $("#ecran").append('<div id="spawn-loc6" class="enemy skin-enemy2"></div>');
        }else {
          $("#ecran").append('<div id="spawn-loc6" class="enemy skin-enemy3"></div>');
        }
      }else if (random_pos == 6) {
        let random_skin = getRandomInt(4)
        if (random_skin == 0) {
          $("#ecran").append('<div id="spawn-loc7" class="enemy skin-enemy"></div>');
        }else if (random_skin == 1) {
          $("#ecran").append('<div id="spawn-loc7" class="enemy skin-enemy2"></div>');
        }else {
          $("#ecran").append('<div id="spawn-loc7" class="enemy skin-enemy3"></div>');
        }
      }else {
        let random_skin = getRandomInt(4)
        if (random_skin == 0) {
          $("#ecran").append('<div id="spawn-loc8" class="enemy skin-enemy"></div>');
        }else if (random_skin == 1) {
          $("#ecran").append('<div id="spawn-loc8" class="enemy skin-enemy2"></div>');
        }else {
          $("#ecran").append('<div id="spawn-loc8" class="enemy skin-enemy3"></div>');
        }
      }
    }
    this.summon_enemy = random_location();
    let enemy_t = document.querySelectorAll('.enemy');
      function enemy_move(){
        setInterval(function(){
          for (var i = 0; i < enemy_t.length; i++) {
            let enemy_pos_x = parseInt(window.getComputedStyle(enemy_t[i]).getPropertyValue("right"));// on récupère la variable de la position basse de notre hero
            enemy_pos_x += 2;
            enemy_t[i].style.right = enemy_pos_x + "px";
          };
        },50);
      };
      this.enemy_move = enemy_move();
        function enemy_rule(){
          setInterval(function(){
            for (var i = 0; i < enemy_t.length; i++) {
              let enemy_pos_x = parseInt(window.getComputedStyle(enemy_t[i]).getPropertyValue("left"));// on récupère la variable de la position basse de notre hero
              if (enemy_pos_x < 0) {
                enemy_t[i].remove();
                score += 1;
              };
            };
          },50);
        };
        this.enemy_rule = enemy_rule();
      this.name = name;// la variable du nom que nous aurons donner au hero
    };

  // on créer un constructeur qui serviras a générer des spawn
  function spawn_generator(){
    this.spawn_generate = setInterval(function(){
        let poopy_enemy = new spawn_enemy("woofy");
      },1000);

  };


//Lancement + Regles du jeu
  $("#click-start").on('click', function(){
      $("#start").fadeOut(1000);
      let spawn_loader = new spawn_generator();
      let poopy = new hero("poopy", "5");
      let score_player = setInterval(function(){
        return console.log(score*15);
      },1000);
      // constructeur de regles
      function game_rules(){
        function stop_game(){
          clearInterval(poopy.autoMove);
          clearInterval(poopy.hero_forward);
          clearInterval(spawn_loader.spawn_generate);

        };
        this.border_conflict = setInterval(function(){
          let hero_pos_top = parseInt(window.getComputedStyle(poopy.element).getPropertyValue("top"));// on récupère la variable de la position basse de notre hero
          let hero_pos_bottom = parseInt(window.getComputedStyle(poopy.element).getPropertyValue("bottom"));// on récupère la variable de la position basse de notre hero
            if (hero_pos_top < 5) {
              stop_game();
            };
            if (hero_pos_bottom < 5) {
              stop_game();
            }
          },50);

      };
      let game_ruler = new game_rules();
  });

});
