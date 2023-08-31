<?php
include('koneksi.php'); //agar index terhubung dengan database, maka koneksi sebagai penghubung harus di include
include('tampilan/header.php');
include('tampilan/sidebar.php');
include('tampilan/footer.php');

$query = mysqli_query($koneksi, "SELECT * FROM siswa");
$jumlah_siswa = mysqli_num_rows($query);

$query = mysqli_query($koneksi, "SELECT * FROM kelas");
$jumlah_kelas = mysqli_num_rows($query);

$query = mysqli_query($koneksi, "SELECT ket FROM pembayaran WHERE ket IS NOT NULL");
$jumlah_lunas = mysqli_num_rows($query);

$query = mysqli_query($koneksi, "SELECT ket FROM pembayaran WHERE ket IS NULL");
$jumlah_blmlunas = mysqli_num_rows($query);
?>
<!DOCTYPE html>
<html>

<head>
  <title>sppBayar</title>
</head>

<body>
  <!-- Main Content -->
  <div class="main-content">
    <section class="section">
      <div class="section-header">
        <h1>DASHBOARD</h1>
      </div>
      <div class="row">
        <div class="col-12 mb-4">
          <div class="hero bg-primary text-white">
            <div class="hero-inner">
              <h2>Selamat Datang,
                <?php echo $_SESSION['username']; ?>
              </h2>
              <p class="lead">Website ini adalah tempat untuk mengelola data spp dari siswa.</p>
            </div>
          </div>
        </div>
        <!-- <div class="row"> -->
        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
          <div class="card card-statistic-1">
            <div class="card-icon bg-primary">
              <i class="fas fa-user-alt"></i>
            </div>
            <div class="card-wrap">
              <div class="card-header">
                <h4>Total Siswa</h4>
              </div>
              <div class="card-body">
                <?php echo $jumlah_siswa; ?>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
          <div class="card card-statistic-1">
            <div class="card-icon bg-primary">
              <i class="fas fa-school"></i>
            </div>
            <div class="card-wrap">
              <div class="card-header">
                <h4>Total Kelas</h4>
              </div>
              <div class="card-body">
                <?php echo $jumlah_kelas; ?>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
          <div class="card card-statistic-1">
            <div class="card-icon bg-success">
              <i class="fas fa-file"></i>
            </div>
            <div class="card-wrap">
              <div class="card-header">
                <h4>SPP Lunas</h4>
              </div>
              <div class="card-body">
                <?php echo $jumlah_lunas; ?>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
          <div class="card card-statistic-1">
            <div class="card-icon bg-danger">
              <i class="fas fa-file-excel"></i>
            </div>
            <div class="card-wrap">
              <div class="card-header">
                <h4>SPP Belum Lunas</h4>
              </div>
              <div class="card-body">
                <?php echo $jumlah_blmlunas; ?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</body>

</html>