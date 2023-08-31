<?php
include('koneksi.php'); //agar index terhubung dengan database, maka koneksi sebagai penghubung harus di include

?>
<!DOCTYPE html>
<html>

<head>
  <title>Tambah Data Siswa</title>
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
        <h1>TAMBAH SISWA</h1>
        <div class="section-header-breadcrumb">
          <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
          <div class="breadcrumb-item text-primary"><a href="siswa.php">Data Siswa</a></div>
          <div class="breadcrumb-item text-primary">Tambah Siswa</div>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <div class="form-holder">
            <div class="form-content">
              <div class="form-items">
                <h4 class="text-center text-primary">Masukkan Data Siswa</h4>
                <form class="form-group" method="post" action="proses_tambahsiswa.php">
                  <div class="form-group row align-items-center">
                    <label class="col-md-4 text-md-right">NISN</label>
                    <div class="col-lg-4 col-md-6">
                      <input type="text" name="nisn" class="form-control" required>
                    </div>
                  </div>
                  <div class="form-group row align-items-center">
                    <label class="col-md-4 text-md-right">NIS</label>
                    <div class="col-lg-4 col-md-6">
                      <input type="text" name="nis" class="form-control" required>
                    </div>
                  </div>
                  <div class="form-group row align-items-center">
                    <label class="col-md-4 text-md-right">NAMA</label>
                    <div class="col-lg-4 col-md-6">
                      <input type="text" name="nama" class="form-control" required>
                    </div>
                  </div>
                  <div class="form-group row align-items-center">
                    <label class="col-md-4 text-md-right">KELAS</label>
                    <div class="col-lg-4 col-md-6">
                      <select class="form-control" name="id_kelas" required>
                        <option value="not_option"> silahkan pilih kelas</option>
                        <?php
                        // jalankan query untuk menampilkan semua data diurutkan berdasarkan
                        $query = "SELECT * FROM kelas ORDER BY nama_kelas ASC";
                        $result = mysqli_query($koneksi, $query);
                        //mengecek apakah ada error ketika menjalankan query
                        if (!$result) {
                          die("Query Error: " . mysqli_errno($koneksi) .
                            " - " . mysqli_error($koneksi));
                        }

                        //buat perulangan untuk element tabel dari data mahasiswa
                        $no = 1; //variabel untuk membuat nomor urut
                        // hasil query akan disimpan dalam variabel $data dalam bentuk array
                        // kemudian dicetak dengan perulangan while
                        while ($row = mysqli_fetch_assoc($result)) {
                          ?>
                          <option value="<?php echo $row['id_kelas']; ?>"><?php echo $row['nama_kelas']; ?></option>
                          <?php
                          $no++; //untuk nomor urut terus bertambah 1
                        }
                        ?>
                      </select>

                    </div>

                  </div>

                  <div class="form-group row align-items-center">
                    <label class="col-md-4 text-md-right">ALAMAT</label>
                    <div class="col-lg-4 col-md-6">
                      <input type="text" name="alamat" class="form-control" required>
                    </div>
                  </div>
                  <div class="form-group row align-items-center">
                    <label class="col-md-4 text-md-right">NO TELP</label>
                    <div class="col-lg-4 col-md-6">
                      <input type="text" name="no_telp" class="form-control" required>
                    </div>


                  </div>
                  <div class="form-group row align-items-center">
                    <label class="col-md-4 text-md-right">JATUH TEMPO PERTAMA</label>
                    <div class="col-lg-4 col-md-6">
                      <input type="text" name="jatuh_tempo" class="form-control" value="2022-07-10" readonly>
                    </div>
                  </div>
                  <div class="form-group row align-items-center">
                    <label class="col-md-4 text-md-right">BIAYA SPP</label>
                    <div class="col-lg-4 col-md-6">
                      <input type="text" name="jumlah_bayar" class="form-control" value="200000" readonly>
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-md-4"></div>
                    <div class="col-lg-4 col-md-6 text-center">
                      <button type="submit" class="btn btn-icon icon-right btn-success">TAMBAH SISWA<i
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
</body>