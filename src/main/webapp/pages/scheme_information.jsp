<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>मुख्यमंत्री - माझी लाडकी बहीण योजना</title>
    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@200;300;400;600;700;800;900&family=Martel:wght@200;300;400;600;700;800;900&display=swap"
      rel="stylesheet"
    />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./style/bootstrap.css" />
    <link rel="stylesheet" href="./style/style.css" />

    <!-- FontAwesome -->
    <script
      src="https://kit.fontawesome.com/e08babf8bc.js"
      crossorigin="anonymous"
    ></script>

    <style>
      /* Custom styles for responsive images */
      .navbar-brand img {
        height: auto;
        max-height: 8rem;
        width: auto;
        max-width: 100%;
      }
      .saffron-color {
        background-color: #ea6e2e;
      }
      .saffron-border-color {
        border-color: #ea6e2e;
      }
      .blue-color {
        background-color: rgb(44, 61, 131);
      }
      .blue-color-dark {
        background-color: rgb(30, 47, 117);
      }
      @media (max-width: 768px) {
        .navbar-brand img {
          max-height: 6rem; /* Adjust for smaller screens */
        }
      }

      @media (max-width: 576px) {
        .navbar-brand img {
          max-height: 4rem; /* Adjust for extra small screens */
        }
      }

      /* Center the links on larger screens */
      .navbar-nav {
        margin-left: auto;
        margin-right: auto;
      }
      .carousel-item img {
        max-width: 50%; /* Adjust this value to control the size */
        margin: 0 auto; /* Center the image */
      }

      .carousel-control-prev,
      .carousel-control-next {
        width: 5%; /* Adjust the width as needed */
      }

      .carousel-control-prev-icon,
      .carousel-control-next-icon {
        background-color: transparent; /* Make the background transparent */
      }

      .carousel-control-prev,
      .carousel-control-next {
        background-color: transparent; /* Make the buttons transparent */
        border: none; /* Remove any border if present */
      }

      .carousel-control-prev:hover,
      .carousel-control-next:hover {
        background-color: rgba(
          0,
          0,
          0,
          0.1
        ); /* Add a slight hover effect if needed */
      }

      .carousel-control-prev-icon,
      .carousel-control-next-icon {
        filter: invert(100%); /* Make icons white (invert their color) */
        opacity: 0.7; /* Set transparency for the icon */
      }

      .carousel-control-prev-icon:hover,
      .carousel-control-next-icon:hover {
        opacity: 1; /* Make icons fully visible on hover */
      }

      @media (max-width: 768px) {
        .carousel-item img {
          max-width: 75%; /* Make the image larger on smaller screens if needed */
        }
      }

      @media (max-width: 576px) {
        .carousel-item img {
          max-width: 90%; /* Make the image even larger on extra small screens if needed */
        }
      }

      /* Center the toggler button on small screens */
      @media (max-width: 768px) {
        .navbar-toggler {
          margin-left: auto;
          margin-right: auto;
        }
      }
    </style>
  </head>
  <body>
    <!-- Header section -->
    <header>
      <!-- Contact in header -->
      <div
        class="card blue-color text-white flex-row align-items-center justify-content-between"
      >
        <div class="d-flex flex-row align-items-center">
          <i
            class="fa-solid fa-phone-volume"
            style="color: #ffffff; margin-left: 1rem"
          ></i>
          <p class="list-group fs-6 my-2 mx-3">
            हेल्पलाइन टोल फ्री संपर्क क्रमांक : १८१
          </p>
        </div>

       <div>
            
            <p class="my-2 mr-2 position-relative end">
            <a style="color: #ffffff" href="./scheme_information_en"> English <i class="fa-solid fa-globe fa-rotate-by mr-5" ></i></a>
            <a class="nav-link d-inline-block" href="./adminlogin" style="color: white;">प्रशासक लॉगिन</a>
			</p>
        </div>
      </div>

      <!-- Logo section header -->
      <nav class="navbar navbar-light bg-white">
        <div
          class="container-fluid d-flex align-items-center justify-content-between"
        >
          <div class="d-flex align-items-center">
            <a class="navbar-brand" href="#">
              <img src="./assets/logo.png" alt="Logo 1" />
            </a>
            <a class="navbar-brand" href="#">
              <img src="./assets/logo-maha.png" alt="Logo 2" />
            </a>
          </div>
          <a class="navbar-brand" href="#">
            <img src="./assets/govEmblem.png" alt="Government Emblem" />
          </a>
        </div>
      </nav>

      <!-- Navigation links section -->
      <nav class="navbar navbar-expand-lg navbar-dark saffron-color">
        <div class="container-fluid">
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNav"
            aria-controls="navbarNav"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse m-0" id="navbarNav">
            <ul class="navbar-nav text-center">
              <li class="nav-item border-bottom mx-4">
                <i class="fa-solid fa-house-user" style="color: #ffffff"></i>
                <a
                  class="nav-link active d-inline-block"
                  aria-current="page"
                  href="./"
                  >मुखपृष्ठ</a
                >
              </li>
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-solid fa-circle-info"></i>
                <a class="nav-link d-inline-block" href="./scheme_information">योजनेची माहिती</a>
              </li>
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-solid fa-file"></i>
                <a
                  class="nav-link d-inline-block"
                  href="./required_documents"
                  >आवश्यक कागदपत्रे</a
                >
              </li>
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-solid fa-user"></i>
                <a class="nav-link d-inline-block" href="./login">अर्जदार लॉगिन</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <!-- carousel -->

    <div class="bd-example my-5">
      <div id="carouselExampleCaptions" class="carousel slide">
      
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="./assets/mlby-aim1.jpg" class="d-block" alt="..." />
           
          </div>
          <div class="carousel-item">
            <img src="./assets/mlby-benifits.jpg" class="d-block" alt="..." />
           
          </div>
          <div class="carousel-item">
            <img src="./assets/mlby-aim.jpg" class="d-block" alt="..." />
            
          </div>
          <div class="carousel-item">
            <img src="./assets/mlby-pm.jpg" class="d-block" alt="..." />
            
          </div>
        </div>
        <button
          class="carousel-control-prev"
          type="button"
          data-bs-target="#carouselExampleCaptions"
          data-bs-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden text-dark">Previous</span>
        </button>
        <button
          class="carousel-control-next"
          type="button"
          data-bs-target="#carouselExampleCaptions"
          data-bs-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden text-dark">Next</span>
        </button>
      </div>
    </div>

    <!-- footer section -->
    <footer class="text-white">
      <div class="blue-color card-body">
        <h6 class="card-title">
          महिला व बाल विकास विभाग, महाराष्ट्र 3 रा मजला, नवीन प्रशासकीय इमारत,
          मादाम कामा रोड, हुतात्मा राजगुरू चौक, मुंबई - 400032, महाराष्ट्र, भारत
        </h6>
        <p class="card-text">
          3 रा मजला, नवीन प्रशासकीय इमारत, मादाम कामा रोड, हुतात्मा राजगुरू चौक,
          मुंबई - 400032, महाराष्ट्र, भारत.
        </p>
      </div>
      <div class="card-body blue-color-dark">
        <p class="card-text">
          कॉपीराइट © २०२१ महिला व बाल विकास विभाग, शासन. महाराष्ट्राचा. सर्व
          हक्क राखीव.
        </p>
      </div>
    </footer>

    <!-- <script src="./script/bootstrap.bundle.min.js"></script> -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
