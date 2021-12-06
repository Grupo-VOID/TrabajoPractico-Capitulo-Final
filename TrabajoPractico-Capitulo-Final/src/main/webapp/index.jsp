<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TPCapitulo 3</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <script src="js/bootstrap.min.js"></script>

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
        <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
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
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
            <div class="mx-auto order-0">
                <a class="navbar-brand mx-auto" href="#">Navbar 2</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a href="#"><button class="btn btn-primary" type="button">Log In</button></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="row">
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
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4"
                    aria-label="Slide 5"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5"
                    aria-label="Slide 6"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="6"
                    aria-label="Slide 7"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="7"
                    aria-label="Slide 8"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="8"
                    aria-label="Slide 9"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="9"
                    aria-label="Slide 10"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="10"
                    aria-label="Slide 11"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="11"
                    aria-label="Slide 12"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="12"
                    aria-label="Slide 13"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="13"
                    aria-label="Slide 14"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="14"
                    aria-label="Slide 15"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="15"
                    aria-label="Slide 16"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="16"
                    aria-label="Slide 17"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/banner/promoArg.jpeg" class="d-block w-100" alt="promocion">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/promoCom.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/promoDra.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/promoPol.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/BetterCallSaul.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/BlackList.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/BreakingBad.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/Dark.jpeg" class="d-block w-100" alt="promocion">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/ElMarginal.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/ElReino.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/Glee.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/LaCasaDePapel.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/Lupin.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/ModernFamilly.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/Okupas.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/PeakyBlinders.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/banner/TheOffice.jpeg" class="d-block w-100" alt="...">
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
    <div class="container">
        <hr>
        <div class="row card-group">
            <div class="col-4 tarjeta">
                <div class="card tarjeta" style="width: 18rem;">
                    <img src="images/atracciones/breakingBad.jpeg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Breaking Bad</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's
                            content.</p>
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#exampleModalLong1">
                            Ver detalles
                        </button>
                        <div class="modal fade bd-example-modal-lg" id="exampleModalLong1" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <img src="images/atracciones/breakingBad.jpeg"
                                                        class="img-responsive fit-image" alt="breaking Bad">

                                                </div>
                                                <div class="col-md-6">
                                                    <h2>Breaking Bad</h2>
                                                    <p>
                                                        El profesor calmado de química de una secundaria, Walter White
                                                        cree que su vida no puede ser
                                                        peor. Su
                                                        salario apenas le alcanza para sostener a su familia, una
                                                        situación que no mejora cuando su
                                                        esposa da a
                                                        luz y su hijo adolescente sufre de parálisis cerebral, pero
                                                        Walter queda anonadado cuando se
                                                        entera que
                                                        tiene un cáncer terminal. Al concluir que su enfermedad iba a
                                                        arruinar financieramente a su
                                                        familia, él
                                                        toma una decisión desesperada con el fin de ganar más dinero
                                                        durante el tiempo que le queda
                                                        y
                                                        transforma un viejo vehículo de recreación en un laboratorio de
                                                        matanfetaminas sobre ruedas.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Cerrar</button>
                                        <button type="button" class="btn btn-primary">Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4 tarjeta">
                <div class="card tarjeta" style="width: 18rem;">
                    <img src="images/atracciones/theOffice.jpeg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">The Office</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's
                            content.</p>
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#exampleModalLong2">
                            Ver detalles
                        </button>
                        <div class="modal fade bd-example-modal-lg" id="exampleModalLong2" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <img src="images/atracciones/theOffice.jpeg"
                                                        class="img-responsive fit-image" alt="breaking Bad">

                                                </div>
                                                <div class="col-md-6">
                                                    <h2>The Office</h2>
                                                    <p>
                                                        La adaptación de Estados Unidos, localizada en Scranton,
                                                        Pensilvania., es la de una compañía
                                                        papelera de alguna forma un poco más dinámica que la versión
                                                        original Británica, aunque los
                                                        personajes son esencialmente los mismos, desde Michael Scott, el
                                                        peor jefe de todos hasta un
                                                        hombre cualquiera Jim, enamorado de la recepcionista Pam a quien
                                                        él le coquetea cuando no
                                                        está
                                                        preocupado por atormentar a su compañero Dwight, un hombre muy
                                                        excitable y adulón.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Cerrar</button>
                                        <button type="button" class="btn btn-primary">Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4 tarjeta">
                <div class="card tarjeta" style="width: 18rem;">
                    <img src="images/atracciones/glee.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Glee</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's
                            content.</p>
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#exampleModalLong3">
                            Ver detalles
                        </button>
                        <div class="modal fade bd-example-modal-lg" id="exampleModalLong3" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <img src="images/atracciones/glee.png"
                                                        class="img-responsive fit-image" alt="breaking Bad">

                                                </div>
                                                <div class="col-md-6">
                                                    <h2>Glee</h2>
                                                    <p>
                                                        El profesor optimista, Will Schuester intenta inspirar a un
                                                        grupo de artistas del montón
                                                        para
                                                        llevar el club musical de la secundaria McKinley a la gloria
                                                        nuevamente y tomar parte en la
                                                        competencia nacional. Claro que sería una tarea más fácil si no
                                                        fuese por las estrellas
                                                        actuales
                                                        del coro: una soprano ingenua, una diva en entrenamiento que se
                                                        rehúsa a ser la vocalista de
                                                        fondo, un guitarrista excéntrico y una chica rara que lucha por
                                                        ocultar su tartamudeo. Con
                                                        dos
                                                        talentos reales al lado, Will y su colega Emma Pillsbury, están
                                                        determinados a hacer lo que
                                                        sea
                                                        para probar lo equivocados que otros están y hacer que el club
                                                        vuelva a ser grandioso
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Cerrar</button>
                                        <button type="button" class="btn btn-primary">Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4 tarjeta">
                <div class="card tarjeta" style="width: 18rem;">
                    <img src="images/atracciones/betterCallSaull.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Better Call Saul</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's
                            content.</p>
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#exampleModalLong4">
                            Ver detalles
                        </button>
                        <div class="modal fade bd-example-modal-lg" id="exampleModalLong4" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <img src="images/atracciones/betterCallSaull.png"
                                                        class="img-responsive fit-image" alt="breaking Bad">

                                                </div>
                                                <div class="col-md-6">
                                                    <h2>Better Call Saul</h2>
                                                    <p>
                                                        La vida del peculiar abogado Saul Goodman mientras defiende a
                                                        narcotraficantes en
                                                        particular,
                                                        y a toda suerte de criminales en general.
                                                        Better Call Saul es la precuela de la galardonada serie Breaking
                                                        Bad, situada seis años
                                                        antes de que Saul
                                                        Goodman (Bob Odenkirk) se convirtiese en abogado de Walter
                                                        White.
                                                        En ese entonces, el hombre destinado a ser Saul Goodman es
                                                        conocido como Jimmy McGill, un
                                                        abogado
                                                        de poca monta tratando de ascender en el mundo y esforzándose
                                                        por llegar a fin de mes.
                                                        Trabajando con
                                                        él (y a menudo en su contra) está Mike Ehrmantraut (Jonathan
                                                        Banks). La serie trata acerca
                                                        de la
                                                        transformación de Jimmy en Saul Goodman, el hombre que pone el
                                                        "criminal" en "abogado
                                                        criminal".
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Cerrar</button>
                                        <button type="button" class="btn btn-primary">Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4 tarjeta">
                <div class="card tarjeta" style="width: 18rem;">
                    <img src="images/atracciones/elMarginal2.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">El Marginal</h5>
                        <p class="card-text">Mientras investiga un secuestro, un expolicía se infiltra en una prisión y
                            se encuentra
                            rodeado de
                            peligrosos criminales que no deben conocer su verdadera identidad.</p>
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#exampleModalLong5">
                            Ver detalles
                        </button>
                        <div class="modal fade bd-example-modal-lg" id="exampleModalLong5" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <img src="images/atracciones/elMarginal.png"
                                                        class="img-responsive fit-image" alt="breaking Bad">

                                                </div>
                                                <div class="col-md-6">
                                                    <h2>El Marginal</h2>
                                                    <p>
                                                        Mientras investiga un secuestro, un expolicía se infiltra en una
                                                        prisión y se encuentra
                                                        rodeado de
                                                        peligrosos criminales que no deben conocer su verdadera
                                                        identidad.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Cerrar</button>
                                        <button type="button" class="btn btn-primary">Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4 tarjeta">
                <div class="card tarjeta" style="width: 18rem;">
                    <img src="images/atracciones/okupas.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Okupas</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's
                            content.</p>
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#exampleModalLong6">
                            Ver detalles
                        </button>
                        <div class="modal fade bd-example-modal-lg" id="exampleModalLong6" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <img src="images/atracciones/okupas.png"
                                                        class="img-responsive fit-image" alt="...">

                                                </div>
                                                <div class="col-md-6">
                                                    <h2>Okupas</h2>
                                                    <p>
                                                        Durante el año 2000, Ricardo, el Pollo, Walter y el Chiqui
                                                        ocupan una casa en el barrio
                                                        porteño
                                                        de Congreso. Los cuatro jóvenes forjan una fuerte amistad que
                                                        los lleva a pasar por
                                                        diferentes
                                                        historias de delincuencia, drogas y marginalidad social
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Cerrar</button>
                                        <button type="button" class="btn btn-primary">Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4 tarjeta">
                <div class="card tarjeta" style="width: 18rem;">
                    <img src="images/atracciones/elReino2.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">El Reino</h5>
                        <p class="card-text">Durante el cierre de una campaña electoral, un candidato es asesinado y
                            ahora su
                            compañero
                            de fórmula tiene la posibilidad de convertirse en presidente.</p>
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#exampleModalLong7">
                            Ver detalles
                        </button>
                        <div class="modal fade bd-example-modal-lg" id="exampleModalLong7" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <img src="images/atracciones/elReino.png"
                                                        class="img-responsive fit-image" alt="...">

                                                </div>
                                                <div class="col-md-6">
                                                    <h2>El Reino</h2>
                                                    <p>
                                                        Durante el cierre de una campaña electoral, un candidato es
                                                        asesinado y ahora su compañero
                                                        de fórmula tiene la posibilidad de convertirse en presidente.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Cerrar</button>
                                        <button type="button" class="btn btn-primary">Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4 tarjeta">
                <div class="card tarjeta" style="width: 18rem;">
                    <img src="images/atracciones/modernFamily.jpeg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Modern Family</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's
                            content.</p>
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#exampleModalLong8">
                            Ver detalles
                        </button>
                        <div class="modal fade bd-example-modal-lg" id="exampleModalLong8" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <img src="images/atracciones/modernFamily.jpeg"
                                                        class="img-responsive fit-image" alt="...">

                                                </div>
                                                <div class="col-md-6">
                                                    <h2>Modern Family</h2>
                                                    <p>
                                                        Narrada desde la perspectiva de un cineasta de documental que
                                                        nunca es visto, la serie
                                                        ofrece
                                                        un panorama honesto y divertido, con frecuencia sobre la vida de
                                                        una familia. Los padres
                                                        Phil y
                                                        Claire anhelan una relación honesta y abierta con sus tres
                                                        hijos, pero es un gran desafío
                                                        debido
                                                        a sus personalidades, una adolescente que trata de crecer
                                                        demasiado rápido, la otra que es
                                                        demasiado inteligente para su propio bien y el hijo menor
                                                        bullicioso. Jay y su esposa
                                                        Gloria,
                                                        quien es mucho menor que él, están criando al hijo de ella
                                                        juntos pero la gente
                                                        frecuentemente
                                                        se equivoca al confundirlo con el padre de su esposa. Mientras
                                                        tanto, la pareja Mitchell y
                                                        Cameron ha adoptado una niña de Vietnam, esto genera retos
                                                        diversos.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Cerrar</button>
                                        <button type="button" class="btn btn-primary">Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4 tarjeta">
                <div class="card tarjeta" style="width: 18rem;">
                    <img src="images/atracciones/peakyBlinders.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Peaky Blinders</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's
                            content.</p>
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#exampleModalLong9">
                            Ver detalles
                        </button>
                        <div class="modal fade bd-example-modal-lg" id="exampleModalLong9" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <img src="images/atracciones/peakyBlinders.jpg"
                                                        class="img-responsive fit-image" alt="...">

                                                </div>
                                                <div class="col-md-6">
                                                    <h2>Peaky Blinders</h2>
                                                    <p>
                                                        Gran Bretaña vive la posguerra. Los soldados regresan, se acuñan
                                                        nuevas revoluciones y nacen
                                                        bandas criminales en una nación agitada. En Birmingham, una
                                                        pandilla de gánsters callejeros
                                                        asciende hasta convertirse en los reyes de la clase obrera.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Cerrar</button>
                                        <button type="button" class="btn btn-primary">Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4 tarjeta">
                <div class="card tarjeta" style="width: 18rem;">
                    <img src="images/atracciones/theBlacklist.jpeg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">The Blacklist</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's
                            content.</p>
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#exampleModalLong10">
                            Ver detalles
                        </button>
                        <div class="modal fade bd-example-modal-lg" id="exampleModalLong10" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <img src="images/atracciones/theBlacklist.jpeg"
                                                        class="img-responsive fit-image" alt="...">

                                                </div>
                                                <div class="col-md-6">
                                                    <h2>The Blacklist</h2>
                                                    <p>
                                                        Cuando el exagente de gobierno y fugitivo Raymond "Red"
                                                        Reddington se entrega al FBI, les
                                                        hace una oferta que no podrán rechazar. Bajo la misteriosa
                                                        condición de que sólo trabajará
                                                        con
                                                        la reciente graduada de Quantico, Elizabeth Keen, éste se
                                                        compromete a ayudar a capturar
                                                        criminales de una lista que él creó, la cual incluye a
                                                        políticos, mafiosos, espías y
                                                        terroristas
                                                        internacionales -empezando por el terrorista, creído muerto,
                                                        Ranko Zamani-. Mientras los dos
                                                        persiguen a su presa, Red obliga a su aprendiz a pensar como un
                                                        criminal para visualizar la
                                                        situación en su totalidad.

                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Cerrar</button>
                                        <button type="button" class="btn btn-primary">Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4 tarjeta">
                <div class="card tarjeta" style="width: 18rem;">
                    <img src="images/atracciones/lupin.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Lupin</h5>
                        <p class="card-text">Basada en la historia de Arsène Lupin, el ladrón Assane Diop se propone
                            vengar a su
                            padre de
                            las injusticias sufridas por parte de una familia adinerada.</p>
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#exampleModalLong11">
                            Ver detalles
                        </button>
                        <div class="modal fade bd-example-modal-lg" id="exampleModalLong11" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <img src="images/atracciones/lupin.png"
                                                        class="img-responsive fit-image" alt="...">

                                                </div>
                                                <div class="col-md-6">
                                                    <h2>Lupin</h2>
                                                    <p>
                                                        Basada en la historia de Arsène Lupin, el ladrón Assane Diop se
                                                        propone vengar a su padre de
                                                        las injusticias sufridas por parte de una familia adinerada.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Cerrar</button>
                                        <button type="button" class="btn btn-primary">Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4 tarjeta">
                <div class="card tarjeta" style="width: 18rem;">
                    <img src="images/atracciones/casaPapel2.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">La Casa de Papel</h5>
                        <p class="card-text">Una banda organizada de ladrones se propone cometer el atraco del siglo en
                            la Fábrica
                            Nacional de Moneda y Timbre. Cinco meses de preparación quedarán reducidos a once días
                            para poder llevar a cabo con éxito el gran golpe.</p>
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#exampleModalLong12">
                            Ver detalles
                        </button>
                        <div class="modal fade bd-example-modal-lg" id="exampleModalLong12" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <img src="images/atracciones/casaPapel.jpg"
                                                        class="img-responsive fit-image" alt="...">

                                                </div>
                                                <div class="col-md-6">
                                                    <h2>La Casa de Papel</h2>
                                                    <p>
                                                        Una banda organizada de ladrones se propone cometer el atraco
                                                        del siglo en la Fábrica
                                                        Nacional de Moneda y Timbre. Cinco meses de preparación quedarán
                                                        reducidos a once días
                                                        para poder llevar a cabo con éxito el gran golpe.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Cerrar</button>
                                        <button type="button" class="btn btn-primary">Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4 tarjeta">
                <div class="card tarjeta" style="width: 18rem;">
                    <img src="images/atracciones/dark.jpeg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Dark</h5>
                        <p class="card-text">La desaparición de dos niños muestra los vínculos entre cuatro familias y
                            expone el
                            pasado de
                            una pequeña ciudad.</p>
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#exampleModalLong13">
                            Ver detalles
                        </button>
                        <div class="modal fade bd-example-modal-lg" id="exampleModalLong13" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <img src="images/atracciones/dark.jpeg"
                                                        class="img-responsive fit-image" alt="...">

                                                </div>
                                                <div class="col-md-6">
                                                    <h2>Dark</h2>
                                                    <p>
                                                        La desaparición de dos niños muestra los vínculos entre cuatro
                                                        familias y expone el pasado
                                                        de
                                                        una pequeña ciudad.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Cerrar</button>
                                        <button type="button" class="btn btn-primary">Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
</body>

</html>