      <div class="logo">
        <a href="https://www.mpstore.net/" class="simple-text logo-mini">
          <div class="logo-image-small">
            <img src="images/logo-small.png">
          </div>
        </a>
        <a href="https://www.mpstore.net/" class="simple-text logo-normal">
          <img src="../images/icons/MP STORE copy-min.png" style="max-width: 70%">
        </a>
      </div>
      <div class="sidebar-wrapper">
        <div class="user">
          <div class="photo">
            <?php echo "<img src=images/" . $data_user["foto_profil"] . "?nocache=" . time() . " alt='foto profil' />"; ?>
          </div>
          <div class="info" >
            <a href="profil">
              <span>
                <?php echo  $data_user["nama_user"] ?>
              </span>
            </a>
          </div>
        </div>

        <ul class="nav">
          <li class="<?php if($_SERVER['SCRIPT_NAME']=="/mpadmin/dashboard.php") { echo 'active'; } ?>" >
            <a href="dashboard">
              <i class="nc-icon nc-bank"></i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="<?php if($_SERVER['SCRIPT_NAME']=="/mpadmin/daftarproduk.php") { echo 'active'; } ?>" >
            <a href="daftarproduk">
              <i class="nc-icon nc-basket"></i>
              <p>Daftar Produk</p>
            </a>
          </li>
          <li class="<?php if(  ($_SERVER['SCRIPT_NAME']=="/mpadmin/saldo.php") OR 
                                ($_SERVER['SCRIPT_NAME']=="/mpadmin/daftartransaksi.php") OR
                                ($_SERVER['SCRIPT_NAME']=="/mpadmin/daftarreward.php") OR
                                ($_SERVER['SCRIPT_NAME']=="/mpadmin/daftarpenarikan.php") ) { echo 'active'; } ?>" >
            <a data-toggle="collapse" href="#keuangan">
              <i class="nc-icon nc-money-coins"></i>
              <p>
                Keuangan
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse " id="keuangan">
              <ul class="nav">
                <li class="<?php if($_SERVER['SCRIPT_NAME']=="/mpadmin/saldo.php") { echo 'active'; } ?>" >
                  <a href="saldo">
                    <span class="sidebar-mini-icon">S</span>
                    <span class="sidebar-normal"> Saldo </span>
                  </a>
                </li>
                <li class="<?php if($_SERVER['SCRIPT_NAME']=="/mpadmin/daftartransaksi.php") { echo 'active'; } ?>" >
                  <a href="daftartransaksi">
                    <span class="sidebar-mini-icon">DT</span>
                    <span class="sidebar-normal"> Daftar Transaksi </span>
                  </a>
                </li>
                <li class="<?php if($_SERVER['SCRIPT_NAME']=="/mpadmin/daftarreward.php") { echo 'active'; } ?>" >
                  <a href="daftarreward">
                    <span class="sidebar-mini-icon">DR</span>
                    <span class="sidebar-normal"> Daftar Reward </span>
                  </a>
                </li>
                <li class="<?php if($_SERVER['SCRIPT_NAME']=="/mpadmin/daftarpenarikan.php") { echo 'active'; } ?>" >
                  <a href="daftarpenarikan">
                    <span class="sidebar-mini-icon">DP</span>
                    <span class="sidebar-normal"> Daftar Penarikan </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>
          

<?php 
if ($data_user['lvl'] == '0') {
  
  echo '  <li class="'; if(     ($_SERVER['SCRIPT_NAME']=="/mpadmin/jumbotron.php") OR 
                                ($_SERVER['SCRIPT_NAME']=="/mpadmin/bannerkategori.php") OR
                                ($_SERVER['SCRIPT_NAME']=="/mpadmin/poster.php") OR
                                ($_SERVER['SCRIPT_NAME']=="/mpadmin/bestseller.php") ) 
                                { echo 'active'; } echo '" > 
            <a data-toggle="collapse" href="#halamanberanda">
              <i class="nc-icon nc-tv-2"></i>
              <p>
                Halaman Beranda
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse " id="halamanberanda">
              <ul class="nav">';
        echo '  <li class="'; if     ($_SERVER['SCRIPT_NAME']=="/mpadmin/jumbotron.php")  
                        { echo 'active'; } echo '" >
                  <a href="jumbotron">
                    <span class="sidebar-mini-icon">J</span>
                    <span class="sidebar-normal"> Jumbotron </span>
                  </a>
                </li>';
        echo '  <li class="'; if     ($_SERVER['SCRIPT_NAME']=="/mpadmin/bannerkategori.php")  
                { echo 'active'; } echo '" >
                  <a href="bannerkategori">
                    <span class="sidebar-mini-icon">BK</span>
                    <span class="sidebar-normal"> Banner Kategori </span>
                  </a>
                </li>';
        echo '  <li class="'; if     ($_SERVER['SCRIPT_NAME']=="/mpadmin/poster.php")  
                { echo 'active'; } echo '" >
                  <a href="poster">
                    <span class="sidebar-mini-icon">P</span>
                    <span class="sidebar-normal"> Poster </span>
                  </a>
                </li>';
        // echo '  <li class="'; if     ($_SERVER['SCRIPT_NAME']=="/mpadmin/bestseller.php")  
        //         { echo 'active'; } echo '" >
        //           <a href="bestseller">
        //             <span class="sidebar-mini-icon">BS</span>
        //             <span class="sidebar-normal"> Best Seller </span>
        //           </a>
        //         </li>
        echo  '</ul>
            </div>
          </li>';
  echo '  <li class="'; if(     ($_SERVER['SCRIPT_NAME']=="/mpadmin/kategoriawal.php") OR 
                                ($_SERVER['SCRIPT_NAME']=="/mpadmin/kategori.php") OR 
                                ($_SERVER['SCRIPT_NAME']=="/mpadmin/produk.php") OR
                                ($_SERVER['SCRIPT_NAME']=="/mpadmin/transaksi.php") OR
                                ($_SERVER['SCRIPT_NAME']=="/mpadmin/member.php") OR
                                ($_SERVER['SCRIPT_NAME']=="/mpadmin/saldomember.php") OR
                                ($_SERVER['SCRIPT_NAME']=="/mpadmin/penarikansaldo.php") )
                                { echo 'active'; } echo '" > 
            <a data-toggle="collapse" href="#toko">
              <i class="nc-icon nc-cart-simple"></i>
              <p>
                Toko
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse " id="toko">
              <ul class="nav">';
          echo '  <li class="'; if     ($_SERVER['SCRIPT_NAME']=="/mpadmin/kategoriawal.php")  
                        { echo 'active'; } echo '" >
                  <a href="kategoriawal">
                    <span class="sidebar-mini-icon">KA</span>
                    <span class="sidebar-normal"> Kategori Awal </span>
                  </a>
                </li>';              
          echo '  <li class="'; if     ($_SERVER['SCRIPT_NAME']=="/mpadmin/kategori.php")  
                        { echo 'active'; } echo '" >
                  <a href="kategori">
                    <span class="sidebar-mini-icon">K</span>
                    <span class="sidebar-normal"> Kategori </span>
                  </a>
                </li>';
          echo '  <li class="'; if     ($_SERVER['SCRIPT_NAME']=="/mpadmin/produk.php")  
                        { echo 'active'; } echo '" >
                  <a href="produk">
                    <span class="sidebar-mini-icon">P</span>
                    <span class="sidebar-normal"> Produk </span>
                  </a>
                </li>';
          echo '  <li class="'; if     ($_SERVER['SCRIPT_NAME']=="/mpadmin/transaksi.php")  
                        { echo 'active'; } echo '" >
                  <a href="transaksi">
                    <span class="sidebar-mini-icon">T</span>
                    <span class="sidebar-normal"> Transaksi </span>
                  </a>
                </li>';
          echo '  <li class="'; if     ($_SERVER['SCRIPT_NAME']=="/mpadmin/member.php")  
                        { echo 'active'; } echo '" >
                  <a href="member">
                    <span class="sidebar-mini-icon">M</span>
                    <span class="sidebar-normal"> Member </span>
                  </a>
                </li>';
          echo '  <li class="'; if     ($_SERVER['SCRIPT_NAME']=="/mpadmin/saldomember.php")  
                        { echo 'active'; } echo '" >
                  <a href="saldomember">
                    <span class="sidebar-mini-icon">SM</span>
                    <span class="sidebar-normal"> Saldo Member </span>
                  </a>
                </li>';
          echo '  <li class="'; if     ($_SERVER['SCRIPT_NAME']=="/mpadmin/penarikansaldo.php")  
                        { echo 'active'; } echo '" >
                  <a href="penarikansaldo">
                    <span class="sidebar-mini-icon">PS</span>
                    <span class="sidebar-normal"> Penarikan Saldo </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>
          ';
  }
?>
          <li>
            <a href="logout">
              <i class="nc-icon nc-share-66"></i>
              <p>Keluar</p>
            </a>
          </li>
        </ul>
      </div>
    </div>