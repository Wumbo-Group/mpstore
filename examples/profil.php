
<!--
=========================================================
Paper Dashboard 2 PRO - v2.0.1
=========================================================

Product Page: https://www.creative-tim.com/product/paper-dashboard-2-pro
Copyright 2019 Creative Tim (https://www.creative-tim.com)

Coded by Creative Tim

=========================================================

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. -->


<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from demos.creative-tim.com/paper-dashboard-2-pro/examples/dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Jan 2020 13:03:56 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    MPStore
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  <!-- CSS Files -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/paper-dashboard.min790f.css?v=2.0.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
  <!-- Extra details for Live View on GitHub Pages -->
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="brown" data-active-color="danger">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="http://www.creative-tim.com/" class="simple-text logo-mini">
          <div class="logo-image-small">
            <img src="assets/img/logo-small.png">
          </div>
        </a>
        <a href="http://www.creative-tim.com/" class="simple-text logo-normal">
          MPSTORE
          <!-- <div class="logo-image-big">
            <img src="assets/img/logo-big.png">
          </div> -->
        </a>
      </div>
      <div class="sidebar-wrapper">
        <div class="user">
          <div class="photo">
            <img src="assets/img/faces/ayo-ogunseinde-2.jpg" />
          </div>
          <div class="info">
            <a data-toggle="collapse" href="#collapseExample" class="collapsed">
              <span>
                Nama User
                <b class="caret"></b>
              </span>
            </a>
            <div class="clearfix"></div>
            <div class="collapse" id="collapseExample">
              <ul class="nav">
                <li class="active">
                  <a href="profil.html">
                    <span class="sidebar-mini-icon">MP</span>
                    <span class="sidebar-normal">My Profile</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="sidebar-mini-icon">EP</span>
                    <span class="sidebar-normal">Edit Profile</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="sidebar-mini-icon">S</span>
                    <span class="sidebar-normal">Settings</span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>

        <ul class="nav">
          <li>
            <a href="dashboard.html">
              <i class="nc-icon nc-bank"></i>
              <p>Home</p>
            </a>
          </li>
          <li>
            <a data-toggle="collapse" href="#keuangan">
              <i class="nc-icon nc-money-coins"></i>
              <p>
                Keuangan
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse " id="keuangan">
              <ul class="nav">
                <li>
                  <a href="saldo.html">
                    <span class="sidebar-mini-icon">S</span>
                    <span class="sidebar-normal"> Saldo </span>
                  </a>
                </li>
                <li>
                  <a href="daftarbonus.html">
                    <span class="sidebar-mini-icon">DB</span>
                    <span class="sidebar-normal"> Daftar Bonus </span>
                  </a>
                </li>
                <li>
                  <a href="daftarpenarikan.html">
                    <span class="sidebar-mini-icon">DP</span>
                    <span class="sidebar-normal"> Daftar Penarikan </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>
          <li>
            <a data-toggle="collapse" href="#landingpage">
              <i class="nc-icon nc-tv-2"></i>
              <p>
                Landing Page
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse " id="landingpage">
              <ul class="nav">
                <li>
                  <a href="jumbotron.html">
                    <span class="sidebar-mini-icon">J</span>
                    <span class="sidebar-normal"> Jumbotron </span>
                  </a>
                </li>
                <li>
                  <a href="bannerkategori.html">
                    <span class="sidebar-mini-icon">BK</span>
                    <span class="sidebar-normal"> Banner Kategori </span>
                  </a>
                </li>
                <li>
                  <a href="bestseller.html">
                    <span class="sidebar-mini-icon">BS</span>
                    <span class="sidebar-normal"> Best Seller </span>
                  </a>
                </li>
                <li>
                  <a href="bannerprodukbaru.html">
                    <span class="sidebar-mini-icon">BP</span>
                    <span class="sidebar-normal"> Banner Produk Baru </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>
        </ul>

        <div class="user">
            <div class="clearfix"></div>
        </div>

        <ul class="nav">
          <li>
            <a data-toggle="collapse" href="#pagesExamples">
              <i class="nc-icon nc-book-bookmark"></i>
              <p>
                Pages
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse " id="pagesExamples">
              <ul class="nav">
                <li>
                  <a href="pages/timeline.html">
                    <span class="sidebar-mini-icon">T</span>
                    <span class="sidebar-normal"> Timeline </span>
                  </a>
                </li>
                <li>
                  <a href="pages/login.html">
                    <span class="sidebar-mini-icon">L</span>
                    <span class="sidebar-normal"> Login </span>
                  </a>
                </li>
                <li>
                  <a href="pages/register.html">
                    <span class="sidebar-mini-icon">R</span>
                    <span class="sidebar-normal"> Register </span>
                  </a>
                </li>
                <li>
                  <a href="pages/lock.html">
                    <span class="sidebar-mini-icon">LS</span>
                    <span class="sidebar-normal"> Lock Screen </span>
                  </a>
                </li>
                <li>
                  <a href="pages/user.html">
                    <span class="sidebar-mini-icon">UP</span>
                    <span class="sidebar-normal"> User Profile </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>
          <li>
            <a data-toggle="collapse" href="#componentsExamples">
              <i class="nc-icon nc-layout-11"></i>
              <p>
                Components
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse " id="componentsExamples">
              <ul class="nav">
                <li>
                  <a href="components/buttons.html">
                    <span class="sidebar-mini-icon">B</span>
                    <span class="sidebar-normal"> Buttons </span>
                  </a>
                </li>
                <li>
                  <a href="components/grid.html">
                    <span class="sidebar-mini-icon">G</span>
                    <span class="sidebar-normal"> Grid System </span>
                  </a>
                </li>
                <li>
                  <a href="components/panels.html">
                    <span class="sidebar-mini-icon">P</span>
                    <span class="sidebar-normal"> Panels </span>
                  </a>
                </li>
                <li>
                  <a href="components/sweet-alert.html">
                    <span class="sidebar-mini-icon">SA</span>
                    <span class="sidebar-normal"> Sweet Alert </span>
                  </a>
                </li>
                <li>
                  <a href="components/notifications.html">
                    <span class="sidebar-mini-icon">N</span>
                    <span class="sidebar-normal"> Notifications </span>
                  </a>
                </li>
                <li>
                  <a href="components/icons.html">
                    <span class="sidebar-mini-icon">I</span>
                    <span class="sidebar-normal"> Icons </span>
                  </a>
                </li>
                <li>
                  <a href="components/typography.html">
                    <span class="sidebar-mini-icon">T</span>
                    <span class="sidebar-normal"> Typography </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>
          <li>
            <a data-toggle="collapse" href="#formsExamples">
              <i class="nc-icon nc-ruler-pencil"></i>
              <p>
                Forms
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse " id="formsExamples">
              <ul class="nav">
                <li>
                  <a href="forms/regular.html">
                    <span class="sidebar-mini-icon">RF</span>
                    <span class="sidebar-normal"> Regular Forms </span>
                  </a>
                </li>
                <li>
                  <a href="forms/extended.html">
                    <span class="sidebar-mini-icon">EF</span>
                    <span class="sidebar-normal"> Extended Forms </span>
                  </a>
                </li>
                <li>
                  <a href="forms/validation.html">
                    <span class="sidebar-mini-icon">V</span>
                    <span class="sidebar-normal"> Validation Forms </span>
                  </a>
                </li>
                <li>
                  <a href="forms/wizard.html">
                    <span class="sidebar-mini-icon">W</span>
                    <span class="sidebar-normal"> Wizard </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>
          <li>
            <a data-toggle="collapse" href="#tablesExamples">
              <i class="nc-icon nc-single-copy-04"></i>
              <p>
                Tables
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse " id="tablesExamples">
              <ul class="nav">
                <li>
                  <a href="tables/regular.html">
                    <span class="sidebar-mini-icon">RT</span>
                    <span class="sidebar-normal"> Regular Tables </span>
                  </a>
                </li>
                <li>
                  <a href="tables/extended.html">
                    <span class="sidebar-mini-icon">ET</span>
                    <span class="sidebar-normal"> Extended Tables </span>
                  </a>
                </li>
                <li>
                  <a href="tables/datatables.net.html">
                    <span class="sidebar-mini-icon">DT</span>
                    <span class="sidebar-normal"> DataTables.net </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>
          <li>
            <a data-toggle="collapse" href="#mapsExamples">
              <i class="nc-icon nc-pin-3"></i>
              <p>
                Maps
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse " id="mapsExamples">
              <ul class="nav">
                <li>
                  <a href="maps/google.html">
                    <span class="sidebar-mini-icon">GM</span>
                    <span class="sidebar-normal"> Google Maps </span>
                  </a>
                </li>
                <li>
                  <a href="maps/fullscreen.html">
                    <span class="sidebar-mini-icon">FSM</span>
                    <span class="sidebar-normal"> Full Screen Map </span>
                  </a>
                </li>
                <li>
                  <a href="maps/vector.html">
                    <span class="sidebar-mini-icon">VM</span>
                    <span class="sidebar-normal"> Vector Map </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>
          <li>
            <a href="widgets.html">
              <i class="nc-icon nc-box"></i>
              <p>Widgets</p>
            </a>
          </li>
          <li>
            <a href="charts.html">
              <i class="nc-icon nc-chart-bar-32"></i>
              <p>Charts</p>
            </a>
          </li>
          <li>
            <a href="calendar.html">
              <i class="nc-icon nc-calendar-60"></i>
              <p>Calendar</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-minimize">
              <button id="minimizeSidebar" class="btn btn-icon btn-round">
                <i class="nc-icon nc-minimal-right text-center visible-on-sidebar-mini"></i>
                <i class="nc-icon nc-minimal-left text-center visible-on-sidebar-regular"></i>
              </button>
            </div>
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="#pablo">Paper Dashboard 2 PRO</a>
          </div>
          <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <form>
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <div class="input-group-append">
                  <div class="input-group-text">
                    <i class="nc-icon nc-zoom-split"></i>
                  </div>
                </div>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link btn-magnify" href="#pablo">
                  <i class="nc-icon nc-layout-11"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Stats</span>
                  </p>
                </a>
              </li>
              <li class="nav-item btn-rotate dropdown">
                <a class="nav-link dropdown-toggle" href="http://example.com/" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="nc-icon nc-bell-55"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Some Actions</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <a class="dropdown-item" href="#">Something else here</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link btn-rotate" href="#pablo">
                  <i class="nc-icon nc-settings-gear-65"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Account</span>
                  </p>
                </a>
              </li>
            </ul>
          </div> -->
        </div>
      </nav>
      <!-- End Navbar -->
      <!-- <div class="panel-header">

  <canvas id="bigDashboardChart"></canvas>


</div> -->
      <div class="content">
        <div class="row">
          <div class="col-md-4">
            <div class="card card-user">
              <div class="image">
                <img src="assets/img/bg/damir-bosnjak.jpg" alt="...">
              </div>
              <div class="card-body">
                <div class="author">
                  <a href="#">
                    <img class="avatar border-gray" src="assets/img/mike.jpg" alt="...">
                    <h5 class="title">Nama User</h5>
                  </a>
                  <p class="description">
                    username
                  </p>
                </div>
                <p class="description text-center">
                  Link replika store
                </p>
              </div>
            </div>
          </div>
          <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                <h5 class="title">Profil</h5>
              </div>
              <div class="card-body">
                <form>
                  <div class="row">
                    <div class="col-md-5">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <input type="email" class="form-control" disabled="" placeholder="Email" value="">
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <label>Username</label>
                        <input type="text" class="form-control" disabled="" placeholder="Username" value="">
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label>Kata Sandi</label>
                        <input type="password" class="form-control" disabled="" placeholder="Kata Sandi" value="password">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>Nama Lengkap</label>
                        <input type="text" class="form-control" disabled="" placeholder="Nama Lengkap" value="">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label>Jenis Kelamin</label>
                        <select name="JenisKelamin" class="form-control" disabled="" placeholder="Jenis Kelamin">
                          <option value="Laki-laki">Laki-laki</option>
                          <option value="Perempuan">Perempuan</option>
                        </select> 
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label>No. WhatsApp</label>
                        <input type="text" class="form-control"  disabled="" placeholder="No. Whatsapp" value="">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>Alamat</label>
                        <textarea disabled="" rows="4" cols="80" class="form-control textarea">Alamat</textarea>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-3">
                      <div class="form-group float-left">
                        <input type="submit" class="btn btn-primary" disabled="" value="Sunting">
                      </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-3">
                      <div class="form-group float-right">
                        <input id="buttonEnableSunting" type="button" class="btn btn-warning" value="Sunting Profil">
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <footer class="footer footer-black  footer-white ">
        <div class="container-fluid">
          <div class="row">
            <nav class="footer-nav">
              <ul>
                <li>
                  <a href="https://www.creative-tim.com/" target="_blank">Creative Tim</a>
                </li>
                <li>
                  <a href="http://blog.creative-tim.com/" target="_blank">Blog</a>
                </li>
                <li>
                  <a href="https://www.creative-tim.com/license" target="_blank">Licenses</a>
                </li>
              </ul>
            </nav>
            <div class="credits ml-auto">
              <span class="copyright">
                ©
                <script>
                  document.write(new Date().getFullYear())
                </script>, made with <i class="fa fa-heart heart"></i> by Creative Tim
              </span>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
  <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
      <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
      </a>
      <ul class="dropdown-menu">
        <li class="header-title"> Sidebar Background</li>
        <li class="adjustments-line">
          <a href="javascript:void(0)" class="switch-trigger background-color">
            <div class="badge-colors text-center">
              <span class="badge filter badge-default active" data-color="brown"></span>
              <span class="badge filter badge-light" data-color="white"></span>
            </div>
            <div class="clearfix"></div>
          </a>
        </li>
        <li class="header-title"> Sidebar Active Color</li>
        <li class="adjustments-line text-center">
          <a href="javascript:void(0)" class="switch-trigger active-color">
            <span class="badge filter badge-primary" data-color="primary"></span>
            <span class="badge filter badge-info" data-color="info"></span>
            <span class="badge filter badge-success" data-color="success"></span>
            <span class="badge filter badge-warning" data-color="warning"></span>
            <span class="badge filter badge-danger active" data-color="danger"></span>
          </a>
        </li>
        <li class="header-title">
          Sidebar Mini
        </li>
        <li class="adjustments-line">
          <div class="togglebutton switch-sidebar-mini">
            <label class="switch-mini">
              <input class="bootstrap-switch" type="checkbox" data-toggle="switch" data-on-color="info" data-off-color="info" data-on-label="ON" data-off-label="OFF">
              <span class="toggle"></span>
            </label>
          </div>
        </li>
      </ul>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="assets/js/core/jquery.min.js"></script>
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/core/bootstrap.min.js"></script>
  <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <script src="assets/js/plugins/moment.min.js"></script>
  <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
  <script src="assets/js/plugins/bootstrap-switch.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="assets/js/plugins/sweetalert2.min.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="assets/js/plugins/jquery.validate.min.js"></script>
  <!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="assets/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="assets/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="assets/js/plugins/bootstrap-datetimepicker.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
  <script src="assets/js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="assets/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="assets/js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="assets/js/plugins/fullcalendar.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="assets/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Bootstrap Table -->
  <script src="assets/js/plugins/nouislider.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2Yno10-YTnLjjn_Vtk0V8cdcY5lC4plU"></script>
  <!-- Place this tag in your head or just before your close body tag. -->
  <script async defer src="buttons.github.io/buttons.js"></script>
  <!-- Chart JS -->
  <script src="assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/paper-dashboard.min790f.js?v=2.0.1" type="text/javascript"></script>
  <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
  <script src="assets/demo/demo.js"></script>
  <!-- Sharrre libray -->
  <script src="assets/demo/jquery.sharrre.js"></script>

   <?php
    $servername = "localhost";
    $username = "username";
    $password = "password";
    $dbname = "mpstore";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT id_user, nama_user, email_user FROM user";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo "id: " . $row["id_user"]. " - Name: " . $row["nama_user"]. " " . $row["email_user"]. "<br>";
        }
    } else {
        echo "0 results";
    }
    $conn->close();
  ?> 

  <script>
    $(document).ready(function(){
      $(".form-control").prop('disabled', true);
      $(".btn-primary").prop('disabled', true);

      $("#buttonEnableSunting").click(function(){
        $(".form-control").prop('disabled', false);
        $(".btn-primary").prop('disabled', false);
      });

    }); 
  </script>

  <noscript>
    <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=111649226022273&amp;ev=PageView&amp;noscript=1" />
  </noscript>
  <script>
    $(document).ready(function() {

      $sidebar = $('.sidebar');
      $sidebar_img_container = $sidebar.find('.sidebar-background');

      $full_page = $('.full-page');

      $sidebar_responsive = $('body > .navbar-collapse');
      sidebar_mini_active = true;

      window_width = $(window).width();

      fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

      // if( window_width > 767 && fixed_plugin_open == 'Dashboard' ){
      //     if($('.fixed-plugin .dropdown').hasClass('show-dropdown')){
      //         $('.fixed-plugin .dropdown').addClass('show');
      //     }
      //
      // }

      $('.fixed-plugin a').click(function(event) {
        // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
        if ($(this).hasClass('switch-trigger')) {
          if (event.stopPropagation) {
            event.stopPropagation();
          } else if (window.event) {
            window.event.cancelBubble = true;
          }
        }
      });

      $('.fixed-plugin .active-color span').click(function() {
        $full_page_background = $('.full-page-background');

        $(this).siblings().removeClass('active');
        $(this).addClass('active');

        var new_color = $(this).data('color');

        if ($sidebar.length != 0) {
          $sidebar.attr('data-active-color', new_color);
        }

        if ($full_page.length != 0) {
          $full_page.attr('data-active-color', new_color);
        }

        if ($sidebar_responsive.length != 0) {
          $sidebar_responsive.attr('data-active-color', new_color);
        }
      });

      $('.fixed-plugin .background-color span').click(function() {
        $(this).siblings().removeClass('active');
        $(this).addClass('active');

        var new_color = $(this).data('color');

        if ($sidebar.length != 0) {
          $sidebar.attr('data-color', new_color);
        }

        if ($full_page.length != 0) {
          $full_page.attr('filter-color', new_color);
        }

        if ($sidebar_responsive.length != 0) {
          $sidebar_responsive.attr('data-color', new_color);
        }
      });

      $('.fixed-plugin .img-holder').click(function() {
        $full_page_background = $('.full-page-background');

        $(this).parent('li').siblings().removeClass('active');
        $(this).parent('li').addClass('active');


        var new_image = $(this).find("img").attr('src');

        if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
          $sidebar_img_container.fadeOut('fast', function() {
            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $sidebar_img_container.fadeIn('fast');
          });
        }

        if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
          var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

          $full_page_background.fadeOut('fast', function() {
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
            $full_page_background.fadeIn('fast');
          });
        }

        if ($('.switch-sidebar-image input:checked').length == 0) {
          var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
          var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

          $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
          $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
        }

        if ($sidebar_responsive.length != 0) {
          $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
        }
      });

      $('.switch-sidebar-image input').on("switchChange.bootstrapSwitch", function() {
        $full_page_background = $('.full-page-background');

        $input = $(this);

        if ($input.is(':checked')) {
          if ($sidebar_img_container.length != 0) {
            $sidebar_img_container.fadeIn('fast');
            $sidebar.attr('data-image', '#');
          }

          if ($full_page_background.length != 0) {
            $full_page_background.fadeIn('fast');
            $full_page.attr('data-image', '#');
          }

          background_image = true;
        } else {
          if ($sidebar_img_container.length != 0) {
            $sidebar.removeAttr('data-image');
            $sidebar_img_container.fadeOut('fast');
          }

          if ($full_page_background.length != 0) {
            $full_page.removeAttr('data-image', '#');
            $full_page_background.fadeOut('fast');
          }

          background_image = false;
        }
      });


      $('.switch-mini input').on("switchChange.bootstrapSwitch", function() {
        $body = $('body');

        $input = $(this);

        if (paperDashboard.misc.sidebar_mini_active == true) {
          $('body').removeClass('sidebar-mini');
          paperDashboard.misc.sidebar_mini_active = false;

          $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

        } else {

          $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

          setTimeout(function() {
            $('body').addClass('sidebar-mini');

            paperDashboard.misc.sidebar_mini_active = true;
          }, 300);
        }

        // we simulate the window Resize so the charts will get updated in realtime.
        var simulateWindowResize = setInterval(function() {
          window.dispatchEvent(new Event('resize'));
        }, 180);

        // we stop the simulation of Window Resize after the animations are completed
        setTimeout(function() {
          clearInterval(simulateWindowResize);
        }, 1000);

      });

    });
  </script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initDashboardPageCharts();


      demo.initVectorMap();

    });
  </script>
</body>


<!-- Mirrored from demos.creative-tim.com/paper-dashboard-2-pro/examples/dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Jan 2020 13:05:19 GMT -->
</html>
