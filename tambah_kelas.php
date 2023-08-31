<?php
include('koneksi.php'); //agar index terhubung dengan database, maka koneksi sebagai penghubung harus di include

?>
<!DOCTYPE html>
<html>

<head>
  <title>Tambah Data Kelas</title>

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
        <h1>TAMBAH KELAS</h1>
        <div class="section-header-breadcrumb">
          <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
          <div class="breadcrumb-item"><a href="kelas.php">Data Kelas</a></div>
          <div class="breadcrumb-item text-primary">Tambah Kelas</div>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <div class="form-holder">
            <div class="form-content">
              <div class="form-items">
                <h4 class="text-center text-primary">Masukkan Data Kelas</h4>
                <form class="form-group" method="post" action="proses_tambahkelas.php">
                  <div class="form-group row align-items-center">
                    <label class="col-md-4 text-md-right">NAMA KELAS</label>
                    <div class="col-lg-4 col-md-6">
                      <input type="text" name="nama_kelas" class="form-control" required>
                    </div>
                  </div>
                  <div class="form-group row align-items-center">
                    <label class="col-md-4 text-md-right">KOMPETENSI KEAHLIAN</label>
                    <div class="col-lg-4 col-md-6">
                      <input type="text" name="kompetensi_keahlian" class="form-control" required>
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-md-4"></div>
                    <div class="col-lg-4 col-md-6 text-center">
                      <button type="submit" class="btn btn-icon icon-right btn-success">TAMBAH KELAS<i
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