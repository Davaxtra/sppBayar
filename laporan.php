<?php
include('koneksi.php'); //agar index terhubung dengan database, maka koneksi sebagai penghubung harus di include

?>
<!DOCTYPE html>
<html>

<head>
  <title>LAPORAN</title>

</head>

<body>

  <?php

  include('tampilan/header.php');
  include('tampilan/footer.php');
  include('tampilan/sidebar.php');
  ?>

  <!-- Main Content -->
  <div class="main-content  ">
    <section class="section">
      <div class="section-header">
        <h1>LAPORAN</h1>
        <div class="section-header-breadcrumb">
          <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
          <div class="breadcrumb-item text-primary">Laporan</div>
        </div>
      </div>

      <div class="col-15 p-15">
        <div class="card">
          <div class="card-header">
            <h4>LAPORAN TRANSAKSI</h4>
            <div class="card-header-form">
            </div>
          </div>
          <form method="POST" action="ekspor.php" enctype="multipart/form-data">
            <div style="padding:20px;">
              <div class="form-group">
                <label>Dari Tanggal</label>
                <input class="form-control" type="date" name="daritanggal" autofocus="" required="" />
              </div>
              <div class="form-group">
                <label>Sampai Tanggal</label>
                <input class="form-control" type="date" name="sampaitanggal" required="" />
              </div>

              <div class="form-group">
                <button class="btn btn-success" type="submit">Ekspor ke Word</button>
              </div>
            </div>
    </section>
    </form>
</body>

</html>