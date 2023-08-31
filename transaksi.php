<?php
include('koneksi.php'); //agar index terhubung dengan database, maka koneksi sebagai penghubung harus di include

?>
<!DOCTYPE html>
<html>

<head>
  <title>TRANSAKSI</title>

</head>

<body>

  <?php

  include('tampilan/header.php');
  include('tampilan/footer.php');
  include('tampilan/sidebar.php');

  ?>

  <!-- main content -->
  <div class="main-content">
    <section class="section">
      <div class="section-header">
        <h1>PEMBAYARAN</h1>
        <div class="section-header-breadcrumb">
          <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
          <div class="breadcrumb-item text-primary">Pembayaran</div>
        </div>
      </div>
      <div class="row">
        <div class="col-12 p-15">
          <div class="card">
            <div class="card-header">
              <h4>DATA BAYAR SISWA SESUAI NISN</h4>
              <div class="card-header-form">
              </div>
            </div>
            <div style="padding:20px;">
              <form action="" method="get">
                <table class="table">
                  <tr>
                    <td>NISN</td>
                    <td>:</td>
                    <td>
                      <input class="form-control" type="text" name="nisn" placeholder="Masukan NISN Siswa">
                    </td>
                    <td>
                      <button class="btn btn-success" type="submit" name="cari">Cari</button>
                    </td>
                  </tr>

                </table>
              </form>
              <?php

              if (isset($_GET['nisn']) && $_GET['nisn'] != '') {
                $query = mysqli_query($koneksi, "SELECT * FROM siswa INNER JOIN kelas ON siswa.id_kelas = kelas.id_kelas WHERE nisn='$_GET[nisn]'");
                $data = mysqli_fetch_array($query);
                // $nisn = $data['nisn'];
                ?>


                <h5>DATA SISWA</h5>
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th scope="col">NISN</th>
                      <th scope="col">NAMA SISWA</th>
                      <th scope="col">KELAS</th>

                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    if ($data != "") { ?>
                      <td>
                        <?php echo $data['nisn']; ?>
                      </td>
                      <td>
                        <?php echo $data['nama']; ?>
                      </td>
                      <td>
                        <?php echo $data['nama_kelas']; ?>
                      </td>
                    </tbody>
                  </table>
                <?php } else {
                      echo "<div class='alert alert-danger role='alert'>
                              <strong>Perhatian!</strong>
                              <br/>
                              NISN tidak ditemukan, mohon cek kembali nomor NISN anda.
                              
                               

                            </div>
                            
                            <script></script>";
                    }
                    ?>
                <h5>DATA SPP SISWA</h5>
                <form method="post" action="proses_transaksi.php">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">No</th>
                        <th scope="col">Jatuh Tempo</th>
                        <th scope="col">Bulan</th>
                        <th scope="col">Tanggal Bayar</th>
                        <th scope="col">Jumlah</th>
                        <th scope="col">Keterangan</th>
                        <th scope="col">Bayar</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php
                      if ($data != "") {
                        $query = mysqli_query($koneksi, "SELECT * FROM pembayaran WHERE nisn='$data[nisn]' ORDER BY jatuh_tempo ASC");
                        $no = 1;
                        while ($data = mysqli_fetch_array($query)) { ?>
                          <tr>
                            <td>
                              <?php echo $no++; ?>
                            </td>
                            <td>
                              <?php echo $data['jatuh_tempo']; ?>
                            </td>
                            <td>
                              <?php echo $data['bulan']; ?>
                            </td>
                            <td>
                              <?php echo $data['tgl_bayar']; ?>
                            </td>
                            <td>
                              <?php echo 'Rp. ' . $data['jumlah_bayar']; ?>
                            </td>
                            <td>
                              <?php
                              if ($data['ket'] == '') {
                                echo "<div class='text-danger'>Belum Lunas</div>";
                              } else {
                                echo "<div class='text-success'>Lunas</div>";
                              }
                              echo "</td>";
                              ?>
                            </td>
                            <td>

                              <?php
                              if ($data['ket'] == '') {
                                echo "<a class='btn btn-success has-icon' href='proses_transaksi.php?id=$data[id_pembayaran];'><i class='fas fa-money-bill'></i> Bayar</a>";
                              } else {
                                echo "-";
                              }
                              echo "</td>";
                              ?>
                          </tr>
                          <?php
                        }
                      } else {
                        echo " 
                    <tr>
                          
                      <td>No data</td>
                      <td>No data</td>
                      <td>No data</td>
                      <td>No data</td>
                      <td>No data</td>
                      <td>No data</td>
                      <td>No data</td>
                      

                    </tr>";
                      }
                      ?>
                    </tbody>
                  </table>
                </form>
                <?php

              } else {
                "jembut";
              }
              ?>
            </div>
          </div>
</body>

</html>