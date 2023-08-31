<?php
session_start();

// cek apakah yang mengakses halaman ini sudah login
if ($_SESSION['level'] == "") {
  header("location:index.php?pesan=belummasuk");
}

?>
<?php
// buat edit data profile
$query = "SELECT * FROM petugas";
$result = mysqli_query($koneksi, $query);
$row = mysqli_fetch_array($result);
?>
<?php
if ($_SESSION['level'] == "admin") {
  ?>

  <body>
    <div id="app">
      <div class="main-wrapper">
        <div class="navbar-bg"></div>
        <nav class="navbar navbar-expand-lg main-navbar">
          <form class="form-inline mr-auto">
            <ul class="navbar-nav mr-3">
              <!-- <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li> -->
              <li><a href="dashboard.php" class="nav-link has-icon"><i class="fas fa-money-bill-wave"></i> sppBayar</a>
              </li>
              <li><a href="transaksi.php" class="nav-link">PEMBAYARAN</a></li>
              <li><a href="laporan.php" class="nav-link">LAPORAN</a></li>
              <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle">DATA MASTER</a>
                <div class="dropdown-menu dropdown-menu-sm">
                  <a href="spp.php" class="dropdown-item has-icon">
                    <i class="fas fa-clipboard-list"></i>DATA SPP
                  </a>
                  <a href="kelas.php" class="dropdown-item has-icon">
                    <i class="fas fa-graduation-cap"></i>DATA KELAS
                  </a>
                  <div class="dropdown-divider"></div>
                  <a href="petugas.php" class="dropdown-item has-icon">
                    <i class="fas fa-id-card-alt"></i>DATA PETUGAS
                  </a>
                  <a href="siswa.php" class="dropdown-item has-icon">
                    <i class="fas fa-user-alt"></i>DATA SISWA
                  </a>
                </div>
              </li>
            </ul>
          </form>
          <ul class="navbar-nav navbar-right">
            <li class="dropdown"><a href="#" data-toggle="dropdown"
                class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                <img alt="image" src="img/avatar/avatar-1.png" class="rounded-circle mr-1">
                <b>
                  <?php echo $_SESSION['username']; ?>


                </b></a>
              <div class="dropdown-menu dropdown-menu-right">
                <a href="edit_petugas.php?id=<?php echo $row['id_petugas']; ?>"
                  class="dropdown-item has-icon text-primary">
                  <i class="fas fa-user-edit"></i>EDIT PROFILE
                </a>
                <div class="dropdown-divider"></div>
                <a href="logout.php" class="dropdown-item has-icon text-danger">
                  <i class="fas fa-sign-out-alt"></i> LOGOUT
                </a>
              </div>
            </li>
          </ul>
        </nav>
      </div>

      <?php
} else if ($_SESSION['level'] == "petugas") {

  ?>


        <body>
          <div id="app">
            <div class="main-wrapper">
              <div class="navbar-bg"></div>
              <nav class="navbar navbar-expand-lg main-navbar">
                <form class="form-inline mr-auto">
                  <ul class="navbar-nav mr-3">
                    <!-- <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li> -->
                    <li><a href="dashboard.php" class="nav-link has-icon"><i class="fas fa-money-bill-wave"></i>
                        sppBayar</a>
                    </li>
                    <li><a href="transaksi.php" class="nav-link">PEMBAYARAN</a></li>
                    <li><a href="laporan.php" class="nav-link">LAPORAN</a></li>

                  </ul>
                </form>
                <ul class="navbar-nav navbar-right">
                  <li class="dropdown"><a href="#" data-toggle="dropdown"
                      class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                      <img alt="image" src="img/avatar/avatar-1.png" class="rounded-circle mr-1">
                    <?php echo $_SESSION['username']; ?>
                      </b>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                      <div class="dropdown-divider"></div>
                      <a href="logout.php" class="dropdown-item has-icon text-danger">
                        <i class="fas fa-sign-out-alt"></i> Logout
                      </a>
                    </div>
                  </li>
                </ul>
              </nav>


            <?php
} else if ($_SESSION['level'] == "siswa") {
  ?>

                <body>
                  <div id="app">
                    <div class="main-wrapper">
                      <div class="navbar-bg"></div>
                      <nav class="navbar navbar-expand-lg main-navbar">
                        <form class="form-inline mr-auto">
                          <ul class="navbar-nav mr-3">
                            <!-- <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li> -->
                            <li><a href="history.php" class="nav-link has-icon"><i class="fas fa-money-bill-wave"></i>
                                sppBayar</a>
                            <li><a href="laporan.php" class="nav-link">LAPORAN</a></li>
                          </ul>
                        </form>
                        <ul class="navbar-nav navbar-right">
                          <li class="dropdown"><a href="#" data-toggle="dropdown"
                              class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                              <img alt="image" src="img/avatar/avatar-1.png" class="rounded-circle mr-1">

                          <?php echo $_SESSION['username']; ?>

                              </b>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                              <div class="dropdown-divider"></div>
                              <a href="logout.php" class="dropdown-item has-icon text-danger">
                                <i class="fas fa-sign-out-alt"></i> Logout
                              </a>
                            </div>
                          </li>
                        </ul>
                      </nav>

                  <?php
} else {
  header("location:index.php?pesan=gagal");
}