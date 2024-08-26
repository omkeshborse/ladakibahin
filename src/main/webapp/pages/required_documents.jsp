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
      .blue-color-dark{
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

        <p class="my-2 mr-2 position-relative end">त्रुटी नोंदवा</p>
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
                  href="/"
                  >मुखपृष्ठ</a
                >
              </li>
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-solid fa-circle-info"></i>
                <a class="nav-link d-inline-block" href="./scheme_information">योजनेची माहिती</a>
              </li>
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-solid fa-file"></i>
                <a class="nav-link d-inline-block" href="./required_documents">आवश्यक कागदपत्रे</a>
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

    <div class="container my-5" style="color: #ea6e2e;">
        <div class="text-center ">
            <h2 class="d-inline-block pb-3 border-bottom border-dark border-2 font-weight-bold"  >आवश्यक कागदपत्रे</h2>
        </div>
        <div class="shadow p-2 mb-5 bg-white rounded">
            <span class="d-inline-block mt-2 font-weight-bolder ml-3">१. आधार कार्ड अर्जामध्ये आधारकार्ड प्रमाणे नाव नमुद करावे</span>
        </div>
        <div class="shadow p-2 mb-5 bg-white rounded">
            <span class="d-inline-block mt-2 font-weight-bolder ml-3">२. अधिवास प्रमाणपत्र</span> 
            <p class="text-dark ml-4 mt-2">प्रमाणपत्र उपलब्ध नसेल तर महिलेचे (१५ वर्षापूर्वीचे रेशनकार्ड/१५ वर्षा पूर्वीचे मतदार ओळखपत्र / जन्म प्रमाणपत्र / शाळा सोडल्याचा दाखला) यापैकी कोणतेही एक.</p>
        </div>
        <div class="shadow p-2 mb-5 bg-white rounded">
            <span class="d-inline-block mt-2 font-weight-bolder ml-3">३. महिलेचा जन्म परराज्यातील असल्यास पतीचे</span> 
            <p class="text-dark ml-4 mt-2">(१५ वर्षापूर्वीचे रेशन कार्ड / १५ वर्षापूर्वीचे मतदार ओळखपत्र / जन्म प्रमाणपत्र / शाळा सोडल्याचा दाखला/अधिवास प्रमाणपत्र) यापैकी कोणतेही एक.</p>
        </div>
        <div class="shadow p-2 mb-5 bg-white rounded">
            <span class="d-inline-block mt-2 font-weight-bolder ml-3">४. वार्षिक उत्पन्न - रु. २.५० लाखापेक्षा कमी असणे आवश्यक</span> 
           <ul style="color:black ;">
            <li> 
                <p class="text-dark ml-4 mt-2">अ &#41; पिवळी अथवा केशरी शिधापत्रिका असल्यास उत्पन्न प्रमाणपत्राची आवश्यकता नाही.</p></li>
            <li> 
                <p class="text-dark ml-4 mt-2">ब &#41; शुभ्र शिधापत्रिका असल्यास अथवा कोणतीही शिधापत्रिका नसल्यास वार्षिक उत्पन्न रु. २.५० लाखापर्यंत असल्याचे प्रमाणपत्र आवश्यक.
            </li>
           </ul>
        </div>
        <div class="shadow p-2 mb-5 bg-white rounded">
            <span class="d-inline-block mt-2 font-weight-bolder ml-3">५. नवविवाहितेच्या बाबतीत</span> 
            <p class="text-dark ml-4 mt-2">रेशानकार्डवर तिच्या नावाची नोंद नसल्यास विवाह प्रमाणपत्र असलेल्या अशा नवविवाहितेच्या पतीचे रेशनकार्ड हे उत्पन्नाचा दाखला म्हणून ग्राह्य राहील.</p>
        </div>
        <div class="shadow p-2 mb-5 bg-white rounded">
            <span class="d-inline-block mt-2 font-weight-bolder ml-3">६. बँक खाते तपशील</span> 
            <p class="text-dark ml-4 mt-2">(खाते आधार लिंक असावे)
        </p>
        </div>
        <div class="shadow p-2 mb-5 bg-white rounded">
            <span class="d-inline-block mt-2 font-weight-bolder ml-3">७. लाभार्थी महिलेचे हमीपत्र व फोटो</span> 
        </p>
        </div>

    </div>

    <!-- footer section -->
    <footer class=" text-white">
      <div class="blue-color card-body">
        <h6 class="card-title">
          महिला व बाल विकास विभाग, महाराष्ट्र 3 रा मजला, नवीन प्रशासकीय इमारत,
          मादाम कामा रोड, हुतात्मा राजगुरू चौक, मुंबई - 400032, महाराष्ट्र, भारत
        </h6>
        <p class="card-text">
          3 रा मजला, नवीन प्रशासकीय इमारत, मादाम कामा रोड, हुतात्मा राजगुरू चौक, मुंबई - 400032, महाराष्ट्र, भारत.
        </p>
        
      </div>
      <div class="card-body blue-color-dark">
        <p class="card-text">
          कॉपीराइट © २०२१ महिला व बाल विकास विभाग, शासन. महाराष्ट्राचा. सर्व हक्क राखीव.
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
