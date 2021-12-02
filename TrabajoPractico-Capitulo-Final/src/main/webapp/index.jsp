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
            <img src="images/promociones/promoArg.jpeg" class="d-block w-100" alt="promocion">
          </div>
          <div class="carousel-item">
            <img src="images/promociones/promoCom.jpeg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="images/promociones/promoDra.jpeg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="images/promociones/promoPol.jpeg" class="d-block w-100" alt="...">
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
  </section>
  <section class="container secciones">
    <hr>
    <div class="row tarjetas">
      <div class="col-4 tarjeta">
        <div class="card tarjeta" style="width: 18rem;">
          <img src="images/atracciones/breakingBad.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Breaking Bad</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
              Launch demo modal
            </button>
            <div class="modal fade bd-example-modal-lg" id="exampleModalLong" tabindex="-1" role="dialog"
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
                          <img src="images/atracciones/breakingBad.png" alt="breaking Bad">

                        </div>
                        <div class="col-md-6">
                          <h2>Breaking Bad</h2>
                          <p>
                            El profesor calmado de qu�mica de una secundaria, Walter White cree que su vida no puede ser
                            peor. Su
                            salario apenas le alcanza para sostener a su familia, una situaci�n que no mejora cuando su
                            esposa da a
                            luz y su hijo adolescente sufre de par�lisis cerebral, pero Walter queda anonadado cuando se
                            entera que
                            tiene un c�ncer terminal. Al concluir que su enfermedad iba a arruinar financieramente a su
                            familia, �l
                            toma una decisi�n desesperada con el fin de ganar m�s dinero durante el tiempo que le queda
                            y
                            transforma un viejo veh�culo de recreaci�n en un laboratorio de matanfetaminas sobre ruedas.
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-4 tarjeta">
        <div class="card tarjeta" style="width: 18rem;">
          <img src="images/atracciones/theOffice.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">The Office</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
              Launch demo modal
            </button>
            <div class="modal fade bd-example-modal-lg" id="exampleModalLong" tabindex="-1" role="dialog"
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
                          <img src="images/atracciones/theOffice.png" alt="breaking Bad">

                        </div>
                        <div class="col-md-6">
                          <h2>The Office</h2>
                          <p>
                            La adaptaci�n de Estados Unidos, localizada en Scranton, Pensilvania., es la de una compa��a
                            papelera de alguna forma un poco m�s din�mica que la versi�n original Brit�nica, aunque los
                            personajes son esencialmente los mismos, desde Michael Scott, el peor jefe de todos hasta un
                            hombre cualquiera Jim, enamorado de la recepcionista Pam a quien �l le coquetea cuando no
                            est�
                            preocupado por atormentar a su compa�ero Dwight, un hombre muy excitable y adul�n.
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
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
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
              Launch demo modal
            </button>
            <div class="modal fade bd-example-modal-lg" id="exampleModalLong" tabindex="-1" role="dialog"
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
                          <img src="images/atracciones/glee.png" alt="breaking Bad">

                        </div>
                        <div class="col-md-6">
                          <h2>Glee</h2>
                          <p>
                            El profesor optimista, Will Schuester intenta inspirar a un grupo de artistas del mont�n
                            para
                            llevar el club musical de la secundaria McKinley a la gloria nuevamente y tomar parte en la
                            competencia nacional. Claro que ser�a una tarea m�s f�cil si no fuese por las estrellas
                            actuales
                            del coro: una soprano ingenua, una diva en entrenamiento que se reh�sa a ser la vocalista de
                            fondo, un guitarrista exc�ntrico y una chica rara que lucha por ocultar su tartamudeo. Con
                            dos
                            talentos reales al lado, Will y su colega Emma Pillsbury, est�n determinados a hacer lo que
                            sea
                            para probar lo equivocados que otros est�n y hacer que el club vuelva a ser grandioso
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
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
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
              Launch demo modal
            </button>
            <div class="modal fade bd-example-modal-lg" id="exampleModalLong" tabindex="-1" role="dialog"
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
                          <img src="images/atracciones/betterCallSaull.png" alt="breaking Bad">

                        </div>
                        <div class="col-md-6">
                          <h2>Better Call Saul</h2>
                          <p>
                            La vida del peculiar abogado Saul Goodman mientras defiende a narcotraficantes en
                            particular,
                            y a toda suerte de criminales en general.
                            Better Call Saul es la precuela de la galardonada serie Breaking Bad, situada seis a�os
                            antes de que Saul
                            Goodman (Bob Odenkirk) se convirtiese en abogado de Walter White.
                            En ese entonces, el hombre destinado a ser Saul Goodman es conocido como Jimmy McGill, un
                            abogado
                            de poca monta tratando de ascender en el mundo y esforz�ndose por llegar a fin de mes.
                            Trabajando con
                            �l (y a menudo en su contra) est� Mike Ehrmantraut (Jonathan Banks). La serie trata acerca
                            de la
                            transformaci�n de Jimmy en Saul Goodman, el hombre que pone el "criminal" en "abogado
                            criminal".
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
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
            <p class="card-text">Mientras investiga un secuestro, un expolic�a se infiltra en una prisi�n y se encuentra
              rodeado de
              peligrosos criminales que no deben conocer su verdadera identidad.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
              Launch demo modal
            </button>
            <div class="modal fade bd-example-modal-lg" id="exampleModalLong" tabindex="-1" role="dialog"
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
                          <img src="images/atracciones/elMarginal.png" alt="breaking Bad">

                        </div>
                        <div class="col-md-6">
                          <h2>El Marginal</h2>
                          <p>
                            Mientras investiga un secuestro, un expolic�a se infiltra en una prisi�n y se encuentra
                            rodeado de
                            peligrosos criminales que no deben conocer su verdadera identidad.
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
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
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
              Launch demo modal
            </button>
            <div class="modal fade bd-example-modal-lg" id="exampleModalLong" tabindex="-1" role="dialog"
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
                          <img src="images/atracciones/okupas.png" alt="breaking Bad">

                        </div>
                        <div class="col-md-6">
                          <h2>Okupas</h2>
                          <p>
                            Durante el a�o 2000, Ricardo, el Pollo, Walter y el Chiqui ocupan una casa en el barrio
                            porte�o
                            de Congreso. Los cuatro j�venes forjan una fuerte amistad que los lleva a pasar por
                            diferentes
                            historias de delincuencia, drogas y marginalidad social
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
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
            <p class="card-text">Durante el cierre de una campa�a electoral, un candidato es asesinado y ahora su
              compa�ero
              de f�rmula tiene la posibilidad de convertirse en presidente.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
              Launch demo modal
            </button>
            <div class="modal fade bd-example-modal-lg" id="exampleModalLong" tabindex="-1" role="dialog"
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
                          <img src="images/atracciones/elReino.png" alt="...">

                        </div>
                        <div class="col-md-6">
                          <h2>El Reino</h2>
                          <p>
                            Durante el cierre de una campa�a electoral, un candidato es asesinado y ahora su compa�ero
                            de f�rmula tiene la posibilidad de convertirse en presidente.
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-4 tarjeta">
        <div class="card tarjeta" style="width: 18rem;">
          <img src="images/atracciones/modernFamily.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Modern Family</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
              Launch demo modal
            </button>
            <div class="modal fade bd-example-modal-lg" id="exampleModalLong" tabindex="-1" role="dialog"
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
                          <img src="images/atracciones/modernFamily.jpg" alt="breaking Bad">

                        </div>
                        <div class="col-md-6">
                          <h2>Modern Family</h2>
                          <p>
                            Narrada desde la perspectiva de un cineasta de documental que nunca es visto, la serie
                            ofrece
                            un panorama honesto y divertido, con frecuencia sobre la vida de una familia. Los padres
                            Phil y
                            Claire anhelan una relaci�n honesta y abierta con sus tres hijos, pero es un gran desaf�o
                            debido
                            a sus personalidades, una adolescente que trata de crecer demasiado r�pido, la otra que es
                            demasiado inteligente para su propio bien y el hijo menor bullicioso. Jay y su esposa
                            Gloria,
                            quien es mucho menor que �l, est�n criando al hijo de ella juntos pero la gente
                            frecuentemente
                            se equivoca al confundirlo con el padre de su esposa. Mientras tanto, la pareja Mitchell y
                            Cameron ha adoptado una ni�a de Vietnam, esto genera retos diversos.
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
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
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
              Launch demo modal
            </button>
            <div class="modal fade bd-example-modal-lg" id="exampleModalLong" tabindex="-1" role="dialog"
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
                          <img src="images/atracciones/peakyBlinders.jpg" alt="...">

                        </div>
                        <div class="col-md-6">
                          <h2>Peaky Blinders</h2>
                          <p>
                            Gran Breta�a vive la posguerra. Los soldados regresan, se acu�an nuevas revoluciones y nacen
                            bandas criminales en una naci�n agitada. En Birmingham, una pandilla de g�nsters callejeros
                            asciende hasta convertirse en los reyes de la clase obrera.
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-4 tarjeta">
        <div class="card tarjeta" style="width: 18rem;">
          <img src="images/atracciones/theBlacklist.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">The Blacklist</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
              Launch demo modal
            </button>
            <div class="modal fade bd-example-modal-lg" id="exampleModalLong" tabindex="-1" role="dialog"
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
                          <img src="images/atracciones/theBlacklist.png" alt="...">

                        </div>
                        <div class="col-md-6">
                          <h2>Okupas</h2>
                          <p>
                            Cuando el exagente de gobierno y fugitivo Raymond "Red" Reddington se entrega al FBI, les
                            hace una oferta que no podr�n rechazar. Bajo la misteriosa condici�n de que s�lo trabajar�
                            con
                            la reciente graduada de Quantico, Elizabeth Keen, �ste se compromete a ayudar a capturar
                            criminales de una lista que �l cre�, la cual incluye a pol�ticos, mafiosos, esp�as y
                            terroristas
                            internacionales -empezando por el terrorista, cre�do muerto, Ranko Zamani-. Mientras los dos
                            persiguen a su presa, Red obliga a su aprendiz a pensar como un criminal para visualizar la
                            situaci�n en su totalidad.

                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
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
            <p class="card-text">Basada en la historia de Ars�ne Lupin, el ladr�n Assane Diop se propone vengar a su
              padre de
              las injusticias sufridas por parte de una familia adinerada.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
              Launch demo modal
            </button>
            <div class="modal fade bd-example-modal-lg" id="exampleModalLong" tabindex="-1" role="dialog"
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
                          <img src="images/atracciones/lupin.png" alt="...">

                        </div>
                        <div class="col-md-6">
                          <h2>Lupin</h2>
                          <p>
                            Basada en la historia de Ars�ne Lupin, el ladr�n Assane Diop se propone vengar a su padre de
                            las injusticias sufridas por parte de una familia adinerada.
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
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
            <p class="card-text">Una banda organizada de ladrones se propone cometer el atraco del siglo en la F�brica
              Nacional de Moneda y Timbre. Cinco meses de preparaci�n quedar�n reducidos a once d�as
              para poder llevar a cabo con �xito el gran golpe.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
              Launch demo modal
            </button>
            <div class="modal fade bd-example-modal-lg" id="exampleModalLong" tabindex="-1" role="dialog"
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
                          <img src="images/atracciones/casaPapel.jpg" alt="...">

                        </div>
                        <div class="col-md-6">
                          <h2>La Casa de Papel</h2>
                          <p>
                            Una banda organizada de ladrones se propone cometer el atraco del siglo en la F�brica
                            Nacional de Moneda y Timbre. Cinco meses de preparaci�n quedar�n reducidos a once d�as
                            para poder llevar a cabo con �xito el gran golpe.
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-4 tarjeta">
        <div class="card tarjeta" style="width: 18rem;">
          <img src="images/atracciones/dark.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Dark</h5>
            <p class="card-text">La desaparici�n de dos ni�os muestra los v�nculos entre cuatro familias y expone el
              pasado de
              una peque�a ciudad.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
              Launch demo modal
            </button>
            <div class="modal fade bd-example-modal-lg" id="exampleModalLong" tabindex="-1" role="dialog"
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
                          <img src="images/atracciones/dark.png" alt="...">

                        </div>
                        <div class="col-md-6">
                          <h2>Dark</h2>
                          <p>
                            La desaparici�n de dos ni�os muestra los v�nculos entre cuatro familias y expone el pasado
                            de
                            una peque�a ciudad.
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
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