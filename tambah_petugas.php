<?php
include('koneksi.php'); //agar index terhubung dengan database, maka koneksi sebagai penghubung harus di include

?>
<!DOCTYPE html>
<html>

<head>
  <title>Tambah Data User</title>

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
        <h1>TAMBAH PENGGUNA</h1>
        <div class="section-header-breadcrumb">
          <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
          <div class="breadcrumb-item"><a href="petugas.php">Data Pengguna</a></div>
          <div class="breadcrumb-item text-primary">Tambah Pengguna</div>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <div class="form-holder">
            <div class="form-content">
              <div class="form-items">
                <h4 class="text-center text-primary">Masukkan Data Petugas</h4>
                <form class="form-group" method="post" action="proses_tambahpetugas.php">
                  <div class="form-group row align-items-center">
                    <label class="col-md-4 text-md-right">USERNAME</label>
                    <div class="col-lg-4 col-md-6">
                      <input type="text" name="username" class="form-control" required>
                    </div>
                  </div>
                  <div class="form-group row align-items-center">
                    <label class="col-md-4 text-md-right">PASSWORD</label>
                    <div class="col-lg-4 col-md-6">
                      <input type="text" name="password" class="form-control" required>
                    </div>
                  </div>
                  <div class="form-group row align-items-center">
                    <label class="col-md-4 text-md-right">NAMA PENGGUNA</label>
                    <div class="col-lg-4 col-md-6">
                      <input type="text" name="nama_petugas" class="form-control" required>
                    </div>
                  </div>
                  <div class="form-group row align-items-center">
                    <label class="col-md-4 text-md-right">LEVEL</label>
                    <div class="col-lg-4 col-md-6">
                      <select name="level" class="form-control" required>
                        <option value="" selected disabled>Silahkan pilih level</option>
                        <option value="admin">Admin</option>
                        <option value="petugas">Petugas</option>
                        <option value="siswa">Siswa</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-md-4"></div>
                    <div class="col-lg-4 col-md-6 text-right">
                      <button type="submit" class="btn btn-icon icon-right btn-success">TAMBAH PENGGUNA<i
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