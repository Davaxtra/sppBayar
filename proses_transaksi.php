<?php
// memanggil file koneksi.php untuk melakukan koneksi database
include 'koneksi.php';

// membuat variabel untuk menampung data dari form
$id = $_GET["id"];
$tgl_bayar = date('Y-m-d');
// $id_petugas = $_SESSION['id_petugas'];

$query = "UPDATE pembayaran SET tgl_bayar='$tgl_bayar', ket='Lunas' WHERE id_pembayaran='$id'";
$result = mysqli_query($koneksi, $query);
// periska query apakah ada error
if (!$result) {
  die("Query gagal dijalankan: " . mysqli_errno($koneksi) .
    " - " . mysqli_error($koneksi));
} else {
  //tampil alert dan akan redirect ke halaman index.php
  //silahkan ganti index.php sesuai halaman yang akan dituju
  echo "<script>alert('Data berhasil ditambah.');window.location='transaksi.php?nis=';</script>";
}

?>