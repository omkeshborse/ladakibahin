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
            <a style="color: #ffffff" href="./"> Marathi <i class="fa-solid fa-globe fa-rotate-by mr-5" ></i></a>
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
                <a
                  class="nav-link d-inline-block"
                  href="./scheme_information_en"
                  >Scheme Information</a
                >
              </li>
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-solid fa-file"></i>
                <a
                  class="nav-link d-inline-block"
                  href="./required_documents_en"
                  >Required Documents</a
                >
              </li>
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-solid fa-user"></i>
                <a class="nav-link d-inline-block" href="./login"
                  >Applicant Login</a
                >
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <section class="mb-5">
      <img src="./assets/new-hero.jpeg" width="100%" alt="" />
    </section>

    <div class="m-2 row mb-5 d-flex justify-content-lg-between">
      <div class="col-sm-4 m-2">
        <div class="card saffron-color text-white">
          <div class="card-body text-center">
            <h3 class="card-title">Applications received on portal</h3>
            <h3 class="card-text">6132368</h3>
          </div>
        </div>
      </div>
      <div class="col-sm-3 m-2">
        <div class="card saffron-color text-white">
          <div class="card-body text-center">
            <h3 class="card-title"> Approved applications  </h3>
            <h3 class="card-text">428188</h3>
          </div>
        </div>
      </div>
      <div class="col-sm-4 m-2">
        <div class="card saffron-color text-white">
          <div class="card-body text-center">
            <h3 class="card-title">
              Total number of beneficiaries on portal
            </h3>
            <h3 class="card-text">10000</h3>
          </div>
        </div>
      </div>
    </div>

    <!-- info section  -->
    <section class="container mb-4">
      <div class="jumbotron jumbotron-fluid bg-white">
        <div class="container text-center">
          <h1 class="display-5">Mukhyamantri - Majhi Ladki Bahin Yojana.</h1>
          <p class="lead text-justify">
            The Government of Maharashtra on 28th June 2024 approved the launch of Maharashtra State's "Mukhya Mantri Majhi Ladki Bahin" scheme for economic independence of women in the state, improving their health and nutrition and strengthening their pivotal role in the family. Through this scheme, eligible women in the age group of 21 to 65 years in Maharashtra will get Rs. 1,500/- financial benefit will be given by DBT.
          </p>
          <h4>
            <a
              href=""
              class="text-center d-inline-block text-decoration-none fs-2"
              >Know More.
              <i class="fa-solid fa-arrow-right py-3" style="color: #ea6e2e"></i
            ></a>
          </h4>
        </div>
      </div>
    </section>

    <!-- video section  -->

    <div class="jumbotron jumbotron-fluid bg-white">
      <div class="container">
        <video
          src="./assets/hero-video.mp4"
          width="100%"
          controls
          controlsList="nodownload"
          muted
          autoplay
        ></video>
      </div>
    </div>

    <!-- Q&A section  -->
    <section>
      <div class="container my-5">
        <ul
          class="nav nav-tabs d-flex flex-column text-center flex-md-row flex-lg-row justify-content-lg-center"
          id="myTab"
          role="tablist"
        >
          <li class="nav-item mx-lg-5 mx-sm-0 border">
            <a
              class="nav-link h4 text-decoration-none text-dark"
              id="home-tab"
              data-toggle="tab"
              href="#home"
              role="tab"
              aria-controls="home"
              aria-selected="true"
            >
              <i class="fa-solid fa-cubes"></i>
              Eligibility</a
            >
          </li>
          <li class="nav-item mx-lg-5 mx-sm-0 border">
            <a
              class="nav-link h4 text-decoration-none text-dark"
              id="profile-tab"
              data-toggle="tab"
              href="#profile"
              role="tab"
              aria-controls="profile"
              aria-selected="false"
            >
              <i class="fa-solid fa-cubes"></i>Disqualification</a
            >
          </li>
          <li class="nav-item mx-lg-5 mx-sm-0 border">
            <a
              class="nav-link h4 text-decoration-none text-dark"
              id="contact-tab"
              data-toggle="tab"
              href="#contact"
              role="tab"
              aria-controls="contact"
              aria-selected="false"
            >
              <i class="fa-solid fa-cubes"></i>Application Process</a
            >
          </li>
        </ul>
        <div class="tab-content" id="myTabContent">
          <div
            class="tab-pane fade show active"
            id="home"
            role="tabpanel"
            aria-labelledby="home-tab"
          >
            <ul class="list-group list-group-flush p-2 border border-warning">
              <li class="list-group-item">
                1. Must be resident of Maharashtra state.
              </li>
              <li class="list-group-item">
                2. Married, widowed, divorced, abandoned and destitute women in the state and only one unmarried woman in the family.

              </li>
              <li class="list-group-item">
              3. Till completion of minimum age of 21 years and maximum age of 65 years.
              </li>
              <li class="list-group-item">
                4. Beneficiary should have own bank account with Aadhaar link.
              </li>
              <li class="list-group-item">
               5. Annual income of the beneficiary family is Rs. Should not exceed 2.50 lakhs.
              </li>
            </ul>
          </div>
          <div
            class="tab-pane fade"
            id="profile"
            role="tabpanel"
            aria-labelledby="profile-tab"
          >
            <ul class="list-group list-group-flush p-2 border border-warning">
              <li class="list-group-item">
                1. Whose combined annual family income is more than Rs.2.50 lakhs.
              </li>
              <li class="list-group-item">
                2. Whose family member is an income tax payer.
              </li>
              <li class="list-group-item">
               3. Whose family members are working as regular / permanent employees in Government Department / Undertaking / Board / Government of India or local body of State Government or are drawing pension after retirement. However, Rs. Outsourced employees, voluntary workers and contract workers with income up to Rs 2.50 lakh will be eligible.

              </li>
              <li class="list-group-item">
                4. The said beneficiary women through the financial scheme implemented through other departments of the Govt. per month Rs. 1500/- or more will be availing.

              </li>
              <li class="list-group-item">
              5. Whose family member is a present or former MP / MLA.

              </li>
              <li class="list-group-item">
           6. Whose family member is Chairman/Vice-Chairman/Director/Member of Board/Corporation/Undertaking of Government of India or State Government.
              </li>
              <li class="list-group-item">
               7. Those who own a four-wheeler (excluding tractor) registered in the name of their family members.
              </li>
            </ul>
          </div>
          <div
            class="tab-pane fade"
            id="contact"
            role="tabpanel"
            aria-labelledby="contact-tab"
          >
            <ul class="list-group list-group-flush p-2 border border-warning">
              <li class="list-group-item">
                1. For women who are not able to apply online, Anganwadi Sevika/Supervisor/Chief Sevika/Setu Suvidha Kendra/Gram Sevak/Group Resource Person (CRP)/ASHA Sevika/Ward Officer/CMM (City Mission Manager)/Mnpa Balwadi Sevika/Help Center Head/ Your Sarkar Seva Kendra will have online/offline application facility available. No fee will be charged for this application.
              </li>
              <li class="list-group-item">
              2. Applicant's name, date of birth, address should be filled correctly as per Aadhaar card. Fill the bank details and mobile number correctly.
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <!-- footer section -->
    <footer class="text-white">
      <div class="blue-color card-body">
        <h6 class="card-title">
          Women and Child Development Department & Government of Maharashtra, 
        </h6>
        <p class="card-text">
          3rd Floor, New Administrative Building ,
Madam Kama Road, Hutatma Rajguru Chowk,
Mumbai - 400032, Maharashtra , india .
        </p>
      </div>
      <div class="card-body blue-color-dark">
        <p class="card-text">
          Copyright  © 2021  Women and Child Development Department & Government of Maharashtra. All Rights Reserved.
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
