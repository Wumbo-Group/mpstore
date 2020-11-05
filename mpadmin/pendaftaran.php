<?php
  namespace Midtrans;
  include 'koneksi.php';
  include 'check_member.php';
  

  require_once dirname(__FILE__) . '/midtrans-php-master/Midtrans.php';
  //Set Your server key
  //Config::$serverKey = "SB-Mid-server-B9rCGBLI6hncW1hEljR1_CE1";
  Config::$serverKey = "Mid-server-gb6-ae8mcAiCZrk26LdeL-Fb";

  // Uncomment for production environment
   Config::$isProduction = true;

  // Enable sanitization
  Config::$isSanitized = true;

  // Enable 3D-Secure
  Config::$is3ds = true;

  use \PDO;

  require_once("koneksidb.php");

  session_start();
  date_default_timezone_set('Asia/Jakarta');

  if (!isset($_GET['so'])) {
      header("Location: ../product");
    }
    else {
      $id_produk = $_GET['so'];
    }

if($id_produk=='1'){
    $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_STRING);
    $stmt = $db->prepare("SELECT * FROM user WHERE email_user='$email'");
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    
    if($row)
    {
        // die('Found');
        echo "<script type='text/javascript'>alert('Pendaftaran gagal! Data yang dimasukkan sudah ada. Silahkan masukan data yang lain!');</script>";
    } else {
  if(isset($_POST['daftar'])){

    // filter data yang diinputkan
    
    // $username = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_STRING);
    $nama = filter_input(INPUT_POST, 'nama', FILTER_SANITIZE_STRING);
    $jenis_kelamin = filter_input(INPUT_POST, 'jenis_kelamin', FILTER_SANITIZE_STRING);
    $tgl_lahir = filter_input(INPUT_POST, 'tgl_lahir', FILTER_SANITIZE_STRING);
    $alamat = $_POST['alamat'];
    $no_ktp = filter_input(INPUT_POST, 'no_ktp', FILTER_SANITIZE_STRING);
    $no_hp = filter_input(INPUT_POST, 'no_hp', FILTER_SANITIZE_STRING);
    $level = '10';
    
    $tgl_gabung = date('Y-m-d H:i:s');

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
      $IDMember = "MB".$thn.$bln.$tgl."001";
    } else {
      $KodeMem        = (int)$nilaiKMem + 1;
      if (strlen($KodeMem) == 1) {
          $IDMember = "MB".$thn.$bln.$tgl."00".$KodeMem;
      }
      elseif (strlen($KodeMem) == 2) {
          $IDMember = "MB".$thn.$bln.$tgl."0".$KodeMem;
      }
      else {
          $IDMember = "MB".$thn.$bln.$tgl.$KodeMem;
      }
    }
    

    

    $cariKodeOngkir = "SELECT * FROM lempar ORDER BY id_lempar DESC";
    $stmt = $db->prepare($cariKodeOngkir);
    $stmt->execute();
    $cariKode = $stmt->fetch(PDO::FETCH_ASSOC);
    $dataKode = $cariKode["id_lempar"];
    
    $bln = date("m");
    $thn = date("y");
    $tgl = date("d");
    if (empty($dataKode)) {
      $IDorder = $thn.$bln.$tgl."001";
      $sql = "INSERT INTO lempar (id_lempar) VALUES ('$IDorder')";
      $stmt = $db->prepare($sql);
      $stmt->execute();
    }
    else {
      $nilaiKode = substr($dataKode, 6, 3);
      if ($nilaiKode == "999") {
        $IDorder = $thn.$bln.$tgl."001";
      }
      else {
        $kode = (int)$nilaiKode + 1;
        if (strlen($kode) == 1) {
          $IDorder = $thn.$bln.$tgl."00".$kode;
        } elseif (strlen($kode) == 2) {
          $IDorder = $thn.$bln.$tgl."0".$kode;
        }
        else {
          $IDorder = $thn.$bln.$tgl.$kode;
        }
        $sql = "UPDATE lempar SET id_lempar = '$IDorder'";
        $stmt = $db->prepare($sql);
        $stmt->execute();
      }
    }

    $sql = "SELECT * FROM produk WHERE id_produk='$id_produk' ";
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    $arrayDataUser = array($IDMember, $nama, $email, $level, $tgl_lahir, $tgl_gabung, $alamat, $jenis_kelamin, $no_ktp, $no_hp, $id_produk, $IDorder);
    $_SESSION['data_user'] = $arrayDataUser;

    $transaction_details = array(
      'order_id' => $IDorder,
      'gross_amount' => $row['harga'] // no decimal allowed for creditcard
    );
    $item_details = array(
      array(
        'id' => $id_produk,
        'price' => $row['harga'],
        'quantity' => 1,
        'name' => $row['nama_produk']
      ),
    );
    $shipping_address = array(
      'address'       => $alamat,
      'postal_code'   => "0",
      'phone'         => $no_hp,
      'country_code'  => 'IDN'
    );
    $customer_details = array(
      'first_name'    => $nama,
      'email'         => $email,
      'phone'         => $no_hp,
      'shipping_address' => $shipping_address
    );
    // $enable_payments = array();
    $transaction = array(
    //   'enabled_payments' => $enable_payments,
      'transaction_details' => $transaction_details,
      'customer_details' => $customer_details,
      'item_details' => $item_details
    );

    $snapToken = Snap::getSnapToken($transaction);
      echo "<script src='https://app.midtrans.com/snap/snap.js' data-client-key='Mid-client-suwwVbkA4Rjbzy1X'></script>";
      echo "<script>
      snap.pay('".$snapToken."', {
        onSuccess: function(result){
          location='pendaftaranX'  
        },
        onPending: function(result){
          location='pendaftaranX';
        },
        onError: function(result){
          alert('Terjadi kesalahan, silahkan daftar ulang!');
          location.reload(true);
        }
      });
      </script>";

  }
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
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
 <link rel="icon" type="image/png" href="images/logo-small.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    MP Store | Pendaftaran
  </title>
  <?php  require 'head.php'; ?>

</head>

<body class="register-page">

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
    <div class="container">
      <div class="navbar-wrapper">
        <a href="https://mpstore.net" class="logo">
    		<!-- MPSTORE -->
    		<img src="../images/icons/logo_mp_land.png" alt="IMG-LOGO" width="15%">
    	</a>
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
                  <h5 class="info-title">Pendaftaran</h5>
                  <p class="description">
                    Harap isi form berikut untuk mendaftarkan diri anda.<br><br>
                    Selesaikan sekarang untuk mendapatkan berbagai keuntungan menarik lainnya!
                  </p>
                </div>
              </div>
            </div>
            <div class="col-lg-7 col-md-7 mr-auto">
              <div class="card card-signup text-center">
                <div class="card-header ">
                  <h4 class="card-title">Form Pendaftaran</h4>
                </div>
                <div class="card-body ">
                  <form class="form" method="POST" action="">
                    <input type="hidden" placeholder="" class="form-control" name="id_sekolah" value="<?php echo $id_produk; ?>">
                    <div class="input-group">
                      <input type="email" placeholder="Email" class="form-control" name="email" required>
                    </div>
                    <!-- <div class="input-group">
                      <input type="text" placeholder="Username" class="form-control" name="username" required>
                    </div> -->
                    <!-- <div class="input-group">
                      <input type="password" class="form-control" placeholder="Kata Sandi" name="password" required>
                    </div> -->
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Nama Lengkap" name="nama" required>
                    </div>
                    <div class="input-group">
                      <select class="form-control" placeholder="Jenis Kelamin" value="Jenis Kelamin" name="jenis_kelamin" required>
                        <option selected disabled hidden>Jenis Kelamin</option>
                        <option value="Laki-laki">Laki-laki</option>
                        <option value="Perempuan">Perempuan</option>
                      </select>
                    </div>
                    <div class="input-group">
                      <input type="text" class="form-control" value="Tanggal Lahir (MM/DD/YYYY)" name="tgl_lahir" placeholder="Tanggal Lahir (MM/DD/YYYY)" onfocus="(this.type='date')" onblur="(this.type='text')" required>
                    </div>
                    <div class="input-group">
                      <textarea rows="4" cols="80" class="form-control textarea" name="alamat" placeholder="Alamat" required></textarea>
                    </div>
                    <div class="input-group">
                      <input type="text" placeholder="No. KTP" class="form-control" name="no_ktp" required>
                    </div>
                    <div class="input-group">
                      <input type="text" placeholder="No. WhatsApp" class="form-control" name="no_hp" required>
                    </div>
                    <div class="form-check text-left">
                      <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" required>
                        <span class="form-check-sign"></span>
                        Data yang saya masukan sudah benar.
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
      <br><br>
      <footer class="footer footer-black  footer-white ">
        <div class="container-fluid">
          <div class="row">
            <nav class="footer-nav">
            </nav>
            <div class="credits ml-auto">
              <span class="copyright">
                ©
                <script>
                  document.write(new Date().getFullYear())
                </script> MP Store. | Dibuat oleh
                <a href="mailto:contact@imwumbo.com?subject=Pemesanan-Projek&body=Isi-Pesan-Anda...">Wumbo Group</a>
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
  <script>
    $(document).ready(function() {
      // initialise Datetimepicker and Sliders
      demo.initDateTimePicker();
      if ($('.slider').length != 0) {
        demo.initSliders();
      }
    });
  </script>
</body>


<!-- Mirrored from demos.creative-tim.com/paper-dashboard-2-pro/examples/pages/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Jan 2020 13:05:21 GMT -->
</html>
