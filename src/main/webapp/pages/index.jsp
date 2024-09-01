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

        <div>
            
            <p class="my-2 mr-2 position-relative end">
            <a style="color: #ffffff" href="./index_en"> English <i class="fa-solid fa-globe fa-rotate-by mr-5" ></i></a>
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

    <section class="mb-5">
      <img src="./assets/new-hero.jpeg" width="100%" alt="" />
    </section>

    <div class="m-2 row mb-5 d-flex justify-content-lg-between">
      <div class="col-sm-4 m-2">
        <div class="card saffron-color text-white">
          <div class="card-body text-center">
            <h3 class="card-title">पोर्टलवर प्राप्त अर्जांची एकूण संख्या</h3>
            <h3 class="card-text">6132368</h3>
          </div>
        </div>
      </div>
      <div class="col-sm-3 m-2">
        <div class="card saffron-color text-white">
          <div class="card-body text-center">
            <h3 class="card-title">पोर्टलवर प्राप्त अर्जांची एकूण संख्या</h3>
            <h3 class="card-text">428188</h3>
          </div>
        </div>
      </div>
      <div class="col-sm-4 m-2">
        <div class="card saffron-color text-white">
          <div class="card-body text-center">
            <h3 class="card-title">
              पोर्टलवर &nbsp; एकूण &nbsp; लाभार्थ्यांची संख्या
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
          <h1 class="display-5">मुख्यमंत्री - माझी लाडकी बहीण योजना</h1>
          <p class="lead text-justify">
            राज्यातील महिलांच्या आर्थिक स्वातंत्र्यासाठी, त्यांच्या आरोग्य आणि
            पोषणामध्ये सुधारणा करणे आणि कुटुंबातील त्यांची निर्णायक भूमिका मजबूत
            करण्यासाठी महाराष्ट्र राज्याची "मुख्यमंत्री माझी लाडकी बहीण" योजना
            सुरु करण्यास महाराष्ट्र शासनाने २८ जून २०२४ रोजी मान्यता दिली. या
            योजनेमार्फत महाराष्ट्र राज्यातील २१ ते ६५ वयोगटातील पात्र महिलांना
            दर महिना रु. १,५००/- असा आर्थिक लाभ DBT द्वारे देण्यात येणार आहे.
          </p>
          <h4>
            <a
              href=""
              class="text-center d-inline-block text-decoration-none fs-2"
              >अधिक जाणून घ्या
              <i class="fa-solid fa-arrow-right py-3" style="color: #ea6e2e"></i
            ></a>
          </h4>
        </div>
      </div>
    </section>

    <!-- video section  -->

    <div class="jumbotron jumbotron-fluid bg-white">
      <div class="container">
        <video src="./assets/hero-video.mp4" width="100%" controls controlsList="nodownload" muted autoplay></video>
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
              पात्रता</a
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
              <i class="fa-solid fa-cubes"></i>अपात्रता</a
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
              <i class="fa-solid fa-cubes"></i>अर्ज प्रक्रिया</a
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
                १. महाराष्ट्र राज्याचे रहिवाशी असणे आवश्यक.
              </li>
              <li class="list-group-item">
                २. राज्यातील विवाहीत, विधवा, घटस्फोटीत, परित्यक्ता आणि निराधार
                महिला तसेच कुटुंबातील केवळ एक अविवाहित महिला.
              </li>
              <li class="list-group-item">
                ३. किमान वयाची २१ वर्षे पूर्ण व कमाल वयाची ६५ वर्ष पूर्ण
                होईपर्यंत.
              </li>
              <li class="list-group-item">
                ४. लाभार्थ्याचे स्वतःचे आधार लिंक असलेले बँक खाते असावे.
              </li>
              <li class="list-group-item">
                ५. लाभार्थी कुटुंबाचे वार्षिक उत्पन्न रु. २.५० लाखापेक्षा जास्त
                नसावे.
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
                १. ज्यांच्या कुटुंबाचे एकत्रित वार्षिक उत्पन्न रु.२.५० लाख
                रुपयापेक्षा अधिक आहे.
              </li>
              <li class="list-group-item">
                २. ज्यांच्या कुटुंबातील सदस्य आयकरदाता आहे.
              </li>
              <li class="list-group-item">
                ३. ज्यांच्या कुटुंबातील सदस्य नियमित / कायम कर्मचारी म्हणून
                सरकारी विभाग / उपक्रम/मंडळ / भारत सरकार किंवा राज्य सरकारच्या
                स्थानिक संस्थेमध्ये कार्यरत आहेत किंवा सेवानिवृत्तीनंतर
                निवृत्तीवेतन घेत आहेत. तथापि, रु. २.५० लाखा पर्यंत उत्पन्न
                असलेले बाह्य यंत्रणाद्वारे कार्यरत असलेले कर्मचारी, स्वयंसेवी
                कामगार आणि कंत्राटी कर्मचारी पात्र ठरतील.
              </li>
              <li class="list-group-item">
                ४. सदर लाभार्थी महिला शासनाच्या इतर विभागा मार्फत राबविण्यात
                येणाऱ्या आर्थिक योजनेद्वारे दरमहा रु. १५००/- किंवा त्यापेक्षा
                जास्त रकमेचा लाभ घेत असेल.
              </li>
              <li class="list-group-item">
                ५. ज्यांच्या कुटुंबातील सदस्य विद्यमान किंवा माजी खासदार / आमदार
                आहे.
              </li>
              <li class="list-group-item">
                ६. ज्यांच्या कुटुंबातील सदस्य भारत सरकार किंवा राज्य सरकारच्या
                बोर्ड/कॉर्पोरेशन / उपक्रमाचे अध्यक्ष/उपाध्यक्ष/संचालक/सदस्य
                आहेत.
              </li>
              <li class="list-group-item">
                ७. ज्यांच्याकडे चारचाकी वाहन (ट्रॅक्टर वगळून) त्यांच्या
                कुटुंबातील सदस्यांच्या नावावर नोंदणीकृत आहे.
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
                १. ज्या महिलेस ऑनलाइन अर्ज करता येत नसेल, त्यांना अंगणवाडी
                सेविका/पर्यवेक्षिका/मुख्यसेविका/सेतु सुविधा
                केंद्र/ग्रामसेवक/समुह संसाधन व्यक्ती (CRP) / आशा सेविका/वार्ड
                अधिकारी / CMM (सिटी मिशन मॅनेजर) / मनपा बालवाडी सेविका / मदत
                कक्ष प्रमुख / आपले सरकार सेवा केंद्र यांचेकडे ऑनलाइन / ऑफलाइन
                अर्ज भरण्याची सुविधा उपलब्ध असेल. या अर्जासाठी कोणत्याही
                प्रकारचे शुल्क आकारले जाणार नाही.
              </li>
              <li class="list-group-item">
                २. अर्जदाराचे नाव, जन्मदिनांक, पत्ता याबाबतची माहिती आधारकार्ड
                प्रमाणे अचूक भरण्यात यावी. बँकेचा तपशील व मोबाईल नंबर अचूक
                भरावा.
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>

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
