<?php 
  require("ambildatauser.php");
  require("otentikasi.php"); 
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


<!-- Mirrored from demos.creative-tim.com/paper-dashboard-2-pro/examples/dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Jan 2020 13:03:56 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="images/apple-icon.png">
  <link rel="icon" type="image/png" href="images/logo-small.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    MP Store | Daftar Penarikan
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
<?php
  $idMember = $_SESSION['user']['id_user'];
  $sql = "SELECT jmlh_tarik FROM tarik_saldo WHERE id_user = '$idMember'";
  $stmt = $db->prepare($sql);
  $stmt -> execute();

  //CARA LAMA
  // $query = "SELECT jmlh_tarik FROM tarik_saldo WHERE id_user = {$_SESSION['user']['id_user']}"; 
  // $result = $conn->query($query);

  $total_tarik_user = 0;

  while($tarik_user=$stmt->fetch(PDO::FETCH_ASSOC)) {
      $total_tarik_user += $tarik_user['jmlh_tarik'];
  }
?> 
        <div class="row d-flex justify-content-center">
          <div class="col-md-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-2 col-md-2">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-money-coins text-danger"></i>
                    </div>
                  </div>
                  <div class="col-10 col-md-10">
                    <div class="numbers">
                      <p class="card-category">Total Penarikan</p>
                      <p class="card-title">Rp. <?php echo number_format($total_tarik_user,0,',','.'); ?></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title"> Daftar Penarikan</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <div class="toolbar">
                    <form action="csvdaftarpenarikan" method="post">
                      <input name="id_member" type="hidden" class="form-control" value="<?php echo $idMember; ?>">
                      <input type="submit" class="btn btn-info" name="unduh" value="Unduh CSV">
                    </form>
                  </div>
                  <table class="table">
                    <thead class="text-primary">
                      <th class="text-center">
                        #
                      </th>
                      <th class="text-center">
                        ID
                      </th>
                      <th>
                        Tanggal
                      </th>
                      <th>
                        Jumlah
                      </th>
                      <th>
                        Status
                      </th>
                    </thead>
                    <tbody>

                      <?php
                        // Cek apakah terdapat data page pada URL          
                        $page = (isset($_GET['page']))? $_GET['page'] : 1;                    
                        $limit = 10; // Jumlah data per halamannya                    
                        
                        // Untuk menentukan dari data ke berapa yang akan ditampilkan pada tabel yang ada di database          
                        $limit_start = ($page - 1) * $limit;

                        $sql = "SELECT * FROM tarik_saldo WHERE id_user = '$idMember' LIMIT ".$limit_start.",".$limit;
                        $stmt = $db->prepare($sql);
                        $stmt -> execute();
                        //CARA LAMA
                        // $query = "SELECT id_tarik, tgl_tarik, jmlh_tarik FROM tarik_saldo WHERE id_user = {$_SESSION['user']['id_user']} "; 
                        // $result = $conn->query($query);

                        
                        // output data of each row
                        $no = $limit_start + 1; // Untuk penomoran tabel
                          while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                          echo '<tr>';
                          echo '<td class="text-center">' . $no . '</td>';
                          echo '<td class="text-center">' . $row['id_tarik'] . '</td>';
                          echo '<td>' . $row['tgl_tarik'] . '</td>';
                          echo '<td>Rp. ' . number_format($row['jmlh_tarik'], 0, ',', '.') . '</td>';
                          echo '<td>' . $row['status_tarik'] . '</td>';
                          echo '</tr>';
                          $no++;
                          }
                        
                      ?>
                      
                    </tbody>
                  </table>
                </div>
              </div>


              <ul class="pagination pagination-primary ml-3">        
                <!-- LINK FIRST AND PREV -->        
                <?php        
                if($page == 1){ // Jika page adalah page ke 1, maka disable link PREV        
                ?>          
                  <li class="page-item disabled"><a class="page-link" href="#">First</a></li>          
                  <li class="page-item disabled"><a class="page-link" href="#">&laquo;</a></li>        
                <?php        
                }else{ // Jika page bukan page ke 1          
                  $link_prev = ($page > 1)? $page - 1 : 1;        
                ?>          
                  <li class="page-item"><a class="page-link" href="daftarpenarikan?page=1">First</a></li>          
                  <li class="page-item"><a class="page-link" href="daftarpenarikan?page=<?php echo $link_prev; ?>">&laquo;</a></li>        
                <?php        
                }        
                ?>                

                <!-- LINK NUMBER -->       
                <?php        
                // Buat query untuk menghitung semua jumlah data       
                $sql2 = $db->prepare("SELECT COUNT(*) AS jumlah FROM tarik_saldo WHERE id_user = '$idMember'");        
                $sql2->execute(); // Eksekusi querynya        
                $get_jumlah = $sql2->fetch();                

                $jumlah_page = ceil($get_jumlah['jumlah'] / $limit); // Hitung jumlah halamannya        
                $jumlah_number = 3; // Tentukan jumlah link number sebelum dan sesudah page yang aktif        
                $start_number = ($page > $jumlah_number)? $page - $jumlah_number : 1; // Untuk awal link number        
                $end_number = ($page < ($jumlah_page - $jumlah_number))? $page + $jumlah_number : $jumlah_page; // Untuk akhir link number                

                for($i = $start_number; $i <= $end_number; $i++){          
                  $link_active = ($page == $i)? ' active' : '';        
                ?>          
                  <li <?php echo 'class="page-item' . $link_active . '"'; ?>><a class="page-link" href="daftarpenarikan?page=<?php echo $i; ?>"><?php echo $i; ?></a></li>        
                <?php        
                }        
                ?>                

                <!-- LINK NEXT AND LAST -->        
                <?php        
                // Jika page sama dengan jumlah page, maka disable link NEXT nya        
                // Artinya page tersebut adalah page terakhir         
                if($page == $jumlah_page){ // Jika page terakhir        
                ?>          
                  <li class="page-item disabled"><a class="page-link" href="#">&raquo;</a></li>          
                  <li class="page-item disabled"><a class="page-link" href="#">Last</a></li>        
                <?php        
                }else{ // Jika Bukan page terakhir          
                  $link_next = ($page < $jumlah_page)? $page + 1 : $jumlah_page;        
                ?>          
                  <li class="page-item"><a class="page-link" href="daftarpenarikan?page=<?php echo $link_next; ?>">&raquo;</a></li>          
                  <li class="page-item"><a class="page-link" href="daftarpenarikan?page=<?php echo $jumlah_page; ?>">Last</a></li>        
                <?php        
                }        
                ?>      
              </ul>

            </div>
          </div>
    </div>
  </div>
  <?php include "footer.php"; ?>
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
