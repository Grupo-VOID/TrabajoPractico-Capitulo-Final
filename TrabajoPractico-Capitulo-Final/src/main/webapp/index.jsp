<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TPCapitulo 3</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</head>

<body>
  <header>
    <div class="w-100">
      <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
          <ion-icon name="logo-youtube"></ion-icon>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Promociones</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Atracciones</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Itinerario</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                Dropdown
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
              </div>
            </li>
          </ul>
        </div>
      </nav>
    </div>
  </header>
  <section class="container secciones">
    <div class="row">
      <div class="col-2"></div>
      <div class="col-8">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
              aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
              aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
              aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3"
              aria-label="Slide 4"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="images/promociones/promocion1.jpeg" class="d-block w-100" alt="promocion">
            </div>
            <div class="carousel-item">
              <img src="images/promociones/promocion2.jpeg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="images/promociones/promocion3.jpeg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="images/promociones/promocion4.jpeg" class="d-block w-100" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previo</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Siguiente</span>
          </button>
        </div>
      </div>
      <div class="col-2"></div>
    </div>
  </section>
  <section class="container secciones">
    <hr>
    <div class="row tarjetas">
      <div class="col-4 tarjeta">
        <div class="card tarjeta" style="width: 18rem;">
          <img src="images/atracciones/atraccion.webp" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Atraccion 1</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
      </div>
      <div class="col-4 tarjeta">
        <div class="card tarjeta" style="width: 18rem;">
          <img src="images/atracciones/atraccion.webp" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Atraccion 2</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
      </div>
      <div class="col-4 tarjeta">
        <div class="card tarjeta" style="width: 18rem;">
          <img src="images/atracciones/atraccion.webp" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Atraccion 3</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
      </div>

      <div class="col-4 tarjeta">
        <div class="card tarjeta" style="width: 18rem;">
          <img src="images/atracciones/atraccion.webp" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Atraccion 4</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
      </div>
      <div class="col-4 tarjeta">
        <div class="card tarjeta" style="width: 18rem;">
          <img src="images/atracciones/atraccion.webp" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Atraccion 5</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
      </div>
      <div class="col-4 tarjeta">
        <div class="card tarjeta" style="width: 18rem;">
          <img src="images/atracciones/atraccion.webp" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Atraccion 6</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <footer class="container secciones">
    <hr>
    <div class="row">
      <div class="row">
        <div class="m-1 text-center">Grupo VOID</div>
        <div class="m-1 text-center">Logos de Redes</div>
        <div class="m-2 text-center"><a href="#">Politicas de Cookies</a> | <a href="#">Aviso Legal</a> | <a
            href="#">Politicas de Provacidad</a></div>
      </div>
    </div>

  </footer>

  <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>

</html>