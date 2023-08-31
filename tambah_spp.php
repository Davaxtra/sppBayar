<?php
include('koneksi.php'); //agar index terhubung dengan database, maka koneksi sebagai penghubung harus di include

?>
<!DOCTYPE html>
<html>

<head>
  <title>TAMBAH SPP</title>

</head>

<body>
  <?php
  include('tampilan/header.php');
  include('tampilan/sidebar.php');
  include('tampilan/footer.php');
  ?>

  <div class="main-content">
    <section class="section">
      <div class="section-header">
        <h1>TAMBAH SPP</h1>
        <div class="section-header-breadcrumb">
          <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
          <div class="breadcrumb-item"><a href="spp.php">Data SPP</a></div>
          <div class="breadcrumb-item text-primary">Tambah SPP</div>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <div class="form-content">
            <div class="form-items">
              <h4 class="text-center text-primary">Masukkan Data SPP</h4>
              <form class="form-group" method="post" action="proses_tambahspp.php">
                <div class="form-group row align-items-center">
                  <label class="col-md-4 text-md-right">TAHUN</label>
                  <div class="col-lg-4 col-md-6">
                    <input type="text" name="tahun" class="form-control">
                  </div>
                </div>
                <div class="form-group row align-items-center">
                  <label class="col-md-4 text-md-right">NOMINAL</label>
                  <div class="col-lg-4 col-md-6">
                    <input type="text" name="nominal" class="form-control">
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-md-4"></div>
                  <div class="col-lg-4 col-md-6 text-right">
                    <button type="submit" class="btn btn-icon icon-right btn-success">TAMBAH SPP<i
                        class="fas fa-arrow-right"></i></button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
  </div>
  </section>
  </div>