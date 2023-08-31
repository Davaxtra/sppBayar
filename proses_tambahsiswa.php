<?php
// memanggil file koneksi.php untuk melakukan koneksi database
include 'koneksi.php';

// membuat variabel untuk menampung data dari form
$nisn = $_POST['nisn'];
$nis = $_POST['nis'];
$nama = $_POST['nama'];
$id_kelas = $_POST['id_kelas'];
$alamat = $_POST['alamat'];
$telp = $_POST['no_telp'];
$awal_tempo = $_POST['jatuh_tempo'];
$jml_bayar = $_POST['jumlah_bayar'];


$bulanTotal = array(
  '01' => 'Januari',
  '02' => 'Februari',
  '03' => 'Maret',
  '04' => 'April',
  '05' => 'Mei',
  '06' => 'Juni',
  '07' => 'Juli',
  '08' => 'Agustus',
  '09' => 'September',
  '10' => 'Oktober',
  '11' => 'November',
  '12' => 'Desember'
);

$query1 = "INSERT INTO siswa VALUES ('$nisn', '$nis','$nama', '$id_kelas', '$alamat', '$telp')";
$result1 = mysqli_query($koneksi, $query1);

$ds = mysqli_fetch_array(mysqli_query($koneksi, "SELECT nisn FROM siswa order by nisn desc LIMIT 1"));
$idpembayaran = $ds;
for ($i = 0; $i < 12; $i++) {
  // jatuh tempo
  $jatuh_tempo = date("Y-m-d", strtotime("+$i month", strtotime($awal_tempo)));

  $bulan = $bulanTotal[date('m', strtotime($jatuh_tempo))] . " " . date('Y', strtotime($jatuh_tempo));

  mysqli_query($koneksi, "INSERT INTO pembayaran(id_pembayaran, nisn, jatuh_tempo, bulan, jumlah_bayar) VALUES ('$idpembayaran', '$nisn', '$jatuh_tempo', '$bulan', '$jml_bayar');");
}
// periksa query apakah ada error
if (!$result1) {
  die("Query gagal dijalankan: " . mysqli_errno($koneksi) .
    " - " . mysqli_error($koneksi));
} else {
  //tampil alert dan akan redirect ke halaman index.php
  //silahkan ganti index.php sesuai halaman yang akan dituju
  echo "<script>alert('Data berhasil ditambah.');window.location='siswa.php';</script>";
}

?>