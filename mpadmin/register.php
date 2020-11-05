<?php

  require_once("koneksidb.php");

  if(isset($_POST['daftar'])){

      // filter data yang diinputkan
      $username = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_STRING);
      // enkripsi password
      $password = password_hash($_POST["password"], PASSWORD_DEFAULT);
      $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
      date_default_timezone_set('Asia/Jakarta');
      $tgl_gabung = date('Y-m-d H:i:s');
      $level = 10;
      $id_user = 'MB' . date('d') . date ('m') . date('y') . 

      $sql = "SELECT * FROM user ORDER BY id_user DESC";
      $cariKodeMember = $db->prepare($sql);
      $cariKodeMember->execute();
      $cariKMem = $cariKodeMember->fetch(PDO::FETCH_ASSOC);
      $dataKMem = $cariKMem['id_user'];
      $nilaiKMem      = substr($dataKMem, 8, 3);
      
      $tgl            = date("d");
      $bln            = date("m");
      $thn            = date("y");

      if ($nilaiKMem == '999'){
        $IDMember = "MB".$tgl.$bln.$thn."001";
      } else {
        $KodeMem        = (int)$nilaiKMem + 1;
        if (strlen($KodeMem) == 1) {
            $IDMember = "MB".$tgl.$bln.$thn."00".$KodeMem;
        }
        elseif (strlen($KodeMem) == 2) {
            $IDMember = "MB".$tgl.$bln.$thn."0".$KodeMem;
        }
        else {
            $IDMember = "MB".$tgl.$bln.$thn.$KodeMem;
        }
      }
      //print_r($IDMember);

      // bind parameter ke query
      $params = array(
          ":id_user" => $IDMember,
          ":username" => $username,
          ":email" => $email,
          ":password" => $password,
          ":tgl_gabung" => $tgl_gabung,
          ":level" => $level
      );

      // menyiapkan query
      $sql = "INSERT INTO user (id_user, username, email_user, password, tgl_gabung, level) 
              VALUES (:id_user, :username, :email, :password, :tgl_gabung, :level)";
      $stmt = $db->prepare($sql);



      // eksekusi query untuk menyimpan ke database
      $saved = $stmt->execute($params);// or die(print_r($stmt->errorInfo(), true));

      // jika query simpan berhasil, maka user sudah terdaftar
      // maka alihkan ke halaman login
      if($saved) {
        header("Location: login");
      } else { 
        echo '<script type="text/javascript"> alert("Email/username sudah terdaftar."); //not showing an alert box.</script>';
      }
  }

?>

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


<!-- Mirrored from demos.creative-tim.com/paper-dashboard-2-pro/examples/pages/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Jan 2020 13:05:21 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="images/apple-icon.png">
  <link rel="icon" type="image/png" href="images/logo-small.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    MP Store | Daftar
  </title>
  <?php  require 'head.php'; ?>

</head>

<body class="register-page">

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
    <div class="container">
      <div class="navbar-wrapper">
        <a class="navbar-brand" href="#pablo">MP Store</a>
      </div>
    </div>
  </nav>
  <!-- End Navbar -->
  <div class="wrapper wrapper-full-page ">
    <div class="full-page register-page section-image" filter-color="black" data-image="assets/img/bg/jan-sendereks.jpg">
      <div class="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-5 col-md-5 ml-auto">
              <div class="info-area info-horizontal mt-5">
                <div class="icon icon-primary">
                  <i class="nc-icon nc-tv-2"></i>
                </div>
                <div class="description">
                  <h5 class="info-title">Marketing</h5>
                  <p class="description">
                    We've created the marketing campaign of the website. It was a very interesting collaboration.
                  </p>
                </div>
              </div>
              <div class="info-area info-horizontal">
                <div class="icon icon-primary">
                  <i class="nc-icon nc-html5"></i>
                </div>
                <div class="description">
                  <h5 class="info-title">Fully Coded in HTML5</h5>
                  <p class="description">
                    We've developed the website with HTML5 and CSS3. The client has access to the code using GitHub.
                  </p>
                </div>
              </div>
              <div class="info-area info-horizontal">
                <div class="icon icon-info">
                  <i class="nc-icon nc-atom"></i>
                </div>
                <div class="description">
                  <h5 class="info-title">Built Audience</h5>
                  <p class="description">
                    There is also a Fully Customizable CMS Admin Dashboard for this product.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 mr-auto">
              <div class="card card-signup text-center">
                <div class="card-header ">
                  <h4 class="card-title">Register</h4>
                  <div class="social">
                    <button class="btn btn-icon btn-round btn-twitter">
                      <i class="fa fa-twitter"></i>
                    </button>
                    <button class="btn btn-icon btn-round btn-dribbble">
                      <i class="fa fa-dribbble"></i>
                    </button>
                    <button class="btn btn-icon btn-round btn-facebook">
                      <i class="fa fa-facebook-f"></i>
                    </button>
                    <p class="card-description"> or be classical </p>
                  </div>
                </div>
                <div class="card-body ">
                  <form class="form" method="POST" action="#">
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                          <i class="nc-icon nc-email-85"></i>
                        </span>
                      </div>
                      <input type="email" class="form-control" placeholder="Email" name="email">
                    </div>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                          <i class="nc-icon nc-single-02"></i>
                        </span>
                      </div>
                      <input type="text" placeholder="Username" class="form-control" name="username">
                    </div>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                          <i class="nc-icon nc-key-25"></i>
                        </span>
                      </div>
                      <input type="password" class="form-control" placeholder="Kata Sandi" name="password">
                    </div>
                    <div class="form-check text-left">
                      <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" required>
                        <span class="form-check-sign"></span>
                        Saya setuju dengan
                        <a href="#something">syarat dan ketentuan</a>.
                      </label>
                    </div>
                    <div class="card-footer ">
                      <input type="submit" class="btn btn-info btn-round" value="Daftar" name="daftar">
                    </div>
                  </form>

                </div>
                
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
      demo.checkFullPageBackgroundImage();
    });
  </script>
</body>


<!-- Mirrored from demos.creative-tim.com/paper-dashboard-2-pro/examples/pages/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Jan 2020 13:05:21 GMT -->
</html>
