<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Mukhyamantri - Majhi Ladki Bahin Yojana.</title>
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
           Helpline Toll-Free Contact Number: 181
          </p>
        </div>

       <div>
            
            <p class="my-2 mr-2 position-relative end">
            <a style="color: #ffffff" href="./required_documents"> Marathi <i class="fa-solid fa-globe fa-rotate-by mr-5" ></i></a>
             <a class="nav-link d-inline-block" href="./adminlogin" style="color: white;">Admin Login</a>
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
                  href="./index_en"
                  >Home</a
                >
              </li>
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-solid fa-circle-info"></i>
                <a class="nav-link d-inline-block" href="./scheme_information_en">Scheme Information</a>
              </li>
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-solid fa-file"></i>
                <a class="nav-link d-inline-block" href="./required_documents_en">Required Documents</a>
              </li>
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-solid fa-user"></i>
                <a class="nav-link d-inline-block" href="./login">Applicant Login</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <div class="container my-5" style="color: #ea6e2e;">
        <div class="text-center ">
            <h2 class="d-inline-block pb-3 border-bottom border-dark border-2 font-weight-bold"  >Necessary documents</h2>
        </div>
        <div class="shadow p-2 mb-5 bg-white rounded">
            <span class="d-inline-block mt-2 font-weight-bolder ml-3">1. In the Aadhaar card application, mention the name as per Aadhaar card</span>
        </div>
        <div class="shadow p-2 mb-5 bg-white rounded">
            <span class="d-inline-block mt-2 font-weight-bolder ml-3">2. Domicile Certificate</span> 
            <p class="text-dark ml-4 mt-2">Any one of the following (Ration card before 15 years / Voter ID card before 15 years / Birth certificate / School leaving certificate) if certificate is not available.</p>
        </div>
        <div class="shadow p-2 mb-5 bg-white rounded">
            <span class="d-inline-block mt-2 font-weight-bolder ml-3">3. If the woman is born in a other state then the husband</span> 
            <p class="text-dark ml-4 mt-2">(Ration Card before 15 years / Voter ID card before 15 years / Birth Certificate / School Leaving Certificate / Residence Certificate) Any one of these.</p>
        </div>
        <div class="shadow p-2 mb-5 bg-white rounded">
            <span class="d-inline-block mt-2 font-weight-bolder ml-3">4. Annual Income - Rs. Must be less than 2.50 lakhs</span> 
           <ul style="color:black ;">
            <li> 
                <p class="text-dark ml-4 mt-2">  a&#41; Income certificate is not required in case of yellow or orange ration card.</p></li>
            <li> 
                <p class="text-dark ml-4 mt-2"> b &#41;  In case of white ration card or no ration card annual income Rs. 2.50 Lakh certificate required.
            </li>
           </ul>
        </div>
        <div class="shadow p-2 mb-5 bg-white rounded">
            <span class="d-inline-block mt-2 font-weight-bolder ml-3">5. In the case of recently been married </span> 
            <p class="text-dark ml-4 mt-2">If her name is not mentioned on the ration card, the ration card of the husband of such a newly married woman with marriage certificate will be accepted as proof of income.</p>
        </div>
        <div class="shadow p-2 mb-5 bg-white rounded">
            <span class="d-inline-block mt-2 font-weight-bolder ml-3">6. Bank account details</span> 
            <p class="text-dark ml-4 mt-2">(Account should be Aadhaar link)
        </p>
        </div>
        <div class="shadow p-2 mb-5 bg-white rounded">
            <span class="d-inline-block mt-2 font-weight-bolder ml-3">7. Self declaration letter and photograph of beneficiary woman</span> 
        </p>
        </div>

    </div>

    <!-- footer section -->
    <footer class=" text-white">
      <div class="blue-color card-body">
        <h6 class="card-title">
          Women and Child Development Department & Government of Maharashtra,
        </h6>
        <p class="card-text">
          3rd Floor, New Administrative Building , Madam Kama Road, Hutatma Rajguru Chowk, Mumbai - 400032, Maharashtra , india .


        </p>
        
      </div>
      <div class="card-body blue-color-dark">
        <p class="card-text">
         Copyright © 2021 Women and Child Development Department & Government of Maharashtra. All Rights Reserved.
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
