<?php 
  require("ambildatauserlengkap.php");
  require("otentikasi.php"); 
?>

<script>
function myFunction() {
  /* Get the text field */
  var copyText = document.getElementById("myInput");

  /* Select the text field */
  copyText.select();
  copyText.setSelectionRange(0, 99999); /*For mobile devices*/

  /* Copy the text inside the text field */
  document.execCommand("copy");

  /* Alert the copied text */
  alert("Link toko anda berhasil dicopy.");
} 
</script>

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
  <link rel="apple-touch-icon" sizes="76x76" href="images/apple-icon.png">
  <link rel="icon" type="image/png" href="images/logo-small.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    MP Store | Profil
  </title>
  <?php  require 'head.php'; ?>
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="brown" data-active-color="danger">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
    <?php require 'menu.php'; ?>

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
            <a class="navbar-brand" href="https://www.mpstore.net/">MP Store</a>
          </div>
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
                
              </div>
              <div class="card-body">
                <div class="author">
                  <div class="picture-container">
                    <div class="picture">
                      <?php echo "<img class='avatar border-gray picture-src'  id='wizardPicturePreview' src=images/" . $data_user["foto_profil"] . " alt='foto profil' />"; ?>
                      <form action="unggahgambar.php" method="post" enctype="multipart/form-data">
                        <span class="btn btn-rose btn-round btn-file">
                          Pilih foto<input type="file" name="berkas" />
                        </span>
                        <span class="btn btn-rose btn-round btn-file">
                          Unggah<input  class="fileinput-new" type="submit" name="upload" value="upload" />
                        </span>
                      </form> 
                    </div>
                  </div>
                  <h5 class="title"><?php echo $data_user["nama_user"]; ?></h5>
                  <p class="description">
                    <?php echo $data_user["username"]; ?>
                  </p>
                </div>
                <p class="description text-center">
                  <?php echo "<a class='text-info' href='https://mpstore.net/?mem=" . $data_user["username"] . "'>https://mpstore.net/?mem=" . $data_user["username"] . "</a>";?>
                  
                    <button class="btn btn-icon" onclick="myFunction()">
                        <i class="fa fa-copy"></i>
                    </button>
                    
                </p>
                <input type="text" value="<?php echo 'https://mpstore.net/?mem=' . $data_user["username"];?>" id="myInput" style="opacity: 0;">
              </div>
            </div>
          </div>
          <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                <h5 class="title">Profil</h5>
              </div>
              <div class="card-body">
                <form id="TypeValidation" action="updateprofil.php" method="post">
                  <?php echo '<input id="id" name="id" type="hidden" value="' . $data_user["id_user"] . '">'; ?>
                  <div class="row">
                    <div class="col-md-5">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <?php echo '<input id="email" name="email" email="true" type="email" class="form-control noedit" disabled="" placeholder="Email" value="' . $data_user["email_user"] . '">'; ?>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <label>Username</label>
                        <?php echo '<input id="username" name="username" type="text" class="form-control noedit" disabled="" placeholder="Username" value="' . $data_user["username"] . '">'; ?>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label>Kata Sandi</label>
                        <?php echo '<input id="password" name="password" type="password" class="form-control" disabled="" placeholder="Kata Sandi" value="password"' . $data_user["password"] . '">'; ?>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>Nama Lengkap</label>
                        <?php echo '<input id="nama" name="nama" type="text" class="form-control noedit" disabled="" placeholder="Nama Lengkap" value="' . $data_user["nama_user"] . '">'; ?>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label>Jenis Kelamin</label>
                        <select id="jenis_kelamin" name="jenis_kelamin" class="form-control" disabled="" placeholder="Jenis Kelamin" value="Jenis Kelamin">
                          <?php 
                            if ($data_user["jenis_kelamin"] == "Laki-laki"){
                              echo '<option disabled hidden>Jenis Kelamin</option>
                                    <option selected value="Laki-laki">Laki-laki</option>
                                    <option value="Perempuan">Perempuan</option>';
                            } elseif ($data_user["jenis_kelamin"] == "Perempuan"){
                              echo '<option disabled hidden>Jenis Kelamin</option>
                                    <option value="Laki-laki">Laki-laki</option>
                                    <option selected value="Perempuan">Perempuan</option>';
                            } else {
                              echo '<option selected disabled hidden>Jenis Kelamin</option>
                                    <option value="Laki-laki">Laki-laki</option>
                                    <option value="Perempuan">Perempuan</option>';
                            }
                          ?>
                        </select> 
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label>Tanggal Lahir</label>
                        <?php echo '<input type="text" class="form-control" value="' . $data_user["tgl_lahir"] . '" name="tgl_lahir" placeholder="Tanggal Lahir" onfocus={(this.type="date")} onblur={(this.type="text")} required>'; ?>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>Alamat</label>
                        <?php echo '<textarea id="alamat" name="alamat" disabled="" rows="4" cols="80" class="form-control textarea">' . $data_user["alamat"] . '</textarea>'; ?>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>No. KTP</label>
                        <?php echo '<input id="no_ktp" name="no_ktp" type="text" class="form-control noedit" disabled="" placeholder="No. KTP" value="' . $data_user["no_ktp"] . '">'; ?>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>No. WhatsApp</label>
                        <?php echo '<input id="no_hp" name="no_hp" type="text" class="form-control" disabled="" placeholder="No. WhatsApp" value="' . $data_user["no_hp"] . '">'; ?>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>Bank Rekening</label>
                        <?php echo '<input id="bank_rek" name="bank_rek" type="text" class="form-control noedit" disabled="" placeholder="Bank Rekening" value="' . $data_user["bank_rek"] . '">'; ?>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>No. Rekening</label>
                        <?php echo '<input id="no_rek" name="no_rek" type="text" class="form-control noedit" disabled="" placeholder="No. Rekening" value="' . $data_user["no_rek"] . '">'; ?>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>Nama Pemilik Rekening</label>
                        <?php echo '<input id="nama_pemilik_rek" name="nama_pemilik_rek" type="text" class="form-control noedit" disabled="" placeholder="Nama Pemilik Rekening" value="' . $data_user["nama_pemilik_rek"] . '">'; ?>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-3 col-sm-3 col-xs-3 mr-3">
                      <div class="form-group">
                        <input id="buttonEnableSunting" type="button" class="btn btn-warning" value="Sunting Profil">
                      </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-3">
                      <div class="form-group">
                        <input type="submit" class="btn btn-primary" disabled="" value="Sunting">
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <?php include "footer.php"; ?>
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

  <script>
    $(document).ready(function(){
      $(".form-control").prop('disabled', true);
      $(".btn-primary").prop('disabled', true);

      $("#buttonEnableSunting").click(function(){
        $(".form-control").prop('disabled', false);
        $(".btn-primary").prop('disabled', false);
        $(".noedit").prop('disabled', true);
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

  <script>
    function setFormValidation(id) {
      $(id).validate({
        highlight: function(element) {
          $(element).closest('.form-group').removeClass('has-success').addClass('has-danger');
          $(element).closest('.form-check').removeClass('has-success').addClass('has-danger');
        },
        success: function(element) {
          $(element).closest('.form-group').removeClass('has-danger').addClass('has-success');
          $(element).closest('.form-check').removeClass('has-danger').addClass('has-success');
        },
        errorPlacement: function(error, element) {
          $(element).closest('.form-group').append(error);
        },
      });
    }

    $(document).ready(function() {
      setFormValidation('#RegisterValidation');
      setFormValidation('#TypeValidation');
      setFormValidation('#LoginValidation');
      setFormValidation('#RangeValidation');
    });
  </script>

</body>


<!-- Mirrored from demos.creative-tim.com/paper-dashboard-2-pro/examples/dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Jan 2020 13:05:19 GMT -->
</html>
