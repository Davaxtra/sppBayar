<?php
include 'koneksi.php';

header("Content-type: application/vnd.ms-word");
header("Content-Disposition: attachment;Filename=data-transaksi.doc");
?>
<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<title>Kwitansi Pembayaran SPP SMK Mahardhika</title>
</head>

<body>
	<?php
	if (isset($_POST['daritanggal'])) {
		$daritanggal = ($_POST['daritanggal']);
		$sampaitanggal = ($_POST['sampaitanggal']);

		?>
		<p align="center">DATA TRANSAKSI PEMBAYARAN SPP </p>
		<p align="center">SMK BAKTI NUSANTARA 666</p>
		<p align="center">DARI TANGGAL
			<?php echo $daritanggal; ?> SAMPAI TANGGAL
			<?php echo $sampaitanggal; ?>
		</p>
		<p>&nbsp;</p>


		<table>
			<thead>
				<tr>
					<th>No</th>
					<th>NISN</th>
					<th>Nama</th>
					<th>Kelas</th>
					<th>Tanggal Bayar</th>
					<th>Bulan Dibayar</th>
					<th>Tahun Dibayar</th>
					<th>Petugas</th>

			</thead>
			<tbody>
				<?php
				$query = "SELECT * FROM pembayaran,siswa,spp,petugas,kelas WHERE pembayaran.nisn=siswa.nisn AND siswa.id_kelas=kelas.id_kelas AND (pembayaran.tgl_bayar between '$daritanggal' AND '$sampaitanggal')";
				$result = mysqli_query($koneksi, $query);
				if (!$result) {
					die("Query Error: " . mysqli_errno($koneksi) .
						" - " . mysqli_error($koneksi));
				}
				$no = 1;
				while ($data = mysqli_fetch_array($result)) {
					?>

					<tr>
						<td>
							<?php echo $no++; ?>
						</td>
						<td>
							<?php echo $data['nisn']; ?>
						</td>
						<td>
							<?php echo $data['nama']; ?>
						</td>
						<td>
							<?= $data['nama_kelas']; ?>
						</td>
						<td>
							<?php echo $data['tgl_bayar']; ?>
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
							<!--  -->
						</td>
						<td>
							<?php echo $data['nama_petugas']; ?>
						</td>


					</tr>

					<?php

				}
	}
	?>
		</tbody>
	</table>
</body>

</html>