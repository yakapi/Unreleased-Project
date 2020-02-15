<!doctype html>
<html lang="en">
  <head>
    <title></title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="library/bootstrap/bootstrap.css">
    <link href="https://fonts.googleapis.com/css?family=Press+Start+2P|Sigmar+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="asset/src/css/style.css">
  </head>
  <body>
    <header>
      <h1 class="sigmar">FlappyPoop</h1>
      <p class="PressStart white-c">ComputedJavascipt Edition</p>
    </header>
    <section>
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-3">

          </div>
          <!-- ECRAN DE JEU -->
          <div class="col-lg-6">
            <div class="border-screen-game gmd-3">
              <aside id="ecran">
                <div id="start">
                  <div class="zone-starter">
                    <div class="starter-half prltv">
                      <p class="PressStart pabslt center-pos tcb">Click</p>
                      <p class="PressStart pabslt center-pos tcw">Click</p>
                    </div>
                    <div class="starter-half prltv">
                      <p class="PressStart pabslt center-pos tcb">Start</p>
                      <p id="click-start" class="PressStart pabslt center-pos tcw">Start</p>
                    </div>
                  </div>
                </div>
                <div id="hero"></div>
              </aside>
            </div>
          </div>
          <div class="col-lg-3">

          </div>
        </div>
      </div>
    </section>
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-3">

          </div>
          <div class="col-lg-6">
            <aside id="copyright-download" class="PressStart">
              <h4 class="white-c mad-5a">All Right Reserved to All</h4>
              <p class="white-c mad-5a">Download Project here:</p>
              <a class="mad-5a" href="#">Download</a>
            </aside>
          </div>
          <div class="col-lg-3">

          </div>
        </div>
      </div>
    </footer>
    <div id="hidden-files" class="d-none">
      <div id="retry" class="opc-dead">
        <div class="zone-starter">
          <div class="starter-half prltv">
            <p class="PressStart pabslt center-pos tcb">Click</p>
            <p class="PressStart pabslt center-pos tcw">Click</p>
          </div>
          <div class="starter-half prltv">
            <p class="PressStart pabslt center-pos tcb">Try Again</p>
            <p id="click-retry" class="PressStart pabslt center-pos tcw">Try Again</p>
          </div>
        </div>
      </div>
    </div>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="library/jquery/jquery-3.4.1.js"></script>
    <!-- Optional JavaScript -->
    <script type="text/javascript" src="asset/src/js/flappy-poop.js"></script>
  </body>
</html>
