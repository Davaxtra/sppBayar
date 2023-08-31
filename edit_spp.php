<?php
// memanggil file koneksi.php untuk membuat koneksi
include 'koneksi.php';

// mengecek apakah di url ada nilai GET id
if (isset($_GET['id'])) {
  // ambil nilai id dari url dan disimpan dalam variabel $id
  $id = ($_GET["id"]);

  // menampilkan data dari database yang mempunyai id=$id
  $query = "SELECT * FROM spp WHERE id_spp='$id'";
  $result = mysqli_query($koneksi, $query);
  // jika data gagal diambil maka akan tampil error berikut
  if (!$result) {
    die("Query Error: " . mysqli_errno($koneksi) .
      " - " . mysqli_error($koneksi));
  }
  // mengambil data dari database
  $data = mysqli_fetch_assoc($result);
  // apabila data tidak ada pada database maka akan dijalankan perintah ini
  if (!count($data)) {
    echo "<script>alert('Data tidak ditemukan pada database');window.location='spp.php';</script>";
  }
} else {
  // apabila tidak ada data GET id pada akan di redirect ke index.php
  echo "<script>alert('Masukkan data id.');window.location='spp.php';</script>";
}
?>
<!DOCTYPE html>
<html>

<head>
  <title>EDIT SPP</title>

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
        <h1>EDIT SPP</h1>
        <div class="section-header-breadcrumb">
          <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
          <div class="breadcrumb-item"><a href="spp.php">Data SPP</a></div>
          <div class="breadcrumb-item text-primary">Edit SPP</div>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <div class="form-holder">
            <div class="form-content">
              <div class="form-items">
                <h4 class="text-center text-primary">Edit Data SPP</h4>
                <form class="wizard-content mt-2" method="post" action="proses_editspp.php">
                  <div class="wizard-pane">
                    <input name="id" value="<?php echo $data['id_spp']; ?>" hidden />
                    <div class="form-group row align-items-center">
                      <label class="col-md-4 text-md-right">TAHUN</label>
                      <div class="col-lg-4 col-md-6">
                        <input class="form-control" type="text" name="tahun" value="<?php echo $data['tahun']; ?>"
                          disabled="disabled" />
                      </div>
                    </div>
                    <div class="form-group row align-items-center">
                      <label class="col-md-4 text-md-right">NOMINAL</label>
                      <div class="col-lg-4 col-md-6">
                        <input class="form-control" type="text" name="nominal" value="<?php echo $data['nominal']; ?>"
                          required="" />
                      </div>
                    </div>
                    <div class="form-group row">
                      <div class="col-md-4"></div>
                      <div class="col-lg-4 col-md-6 text-right">
                        <button type="submit" class="btn btn-icon icon-right btn-success">UBAH DATA<i
                            class="fas fa-arrow-right"></i></button>
                      </div>
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
  </div>
  </div>