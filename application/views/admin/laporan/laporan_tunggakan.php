<style>
	@media print {
		.no-print{display: none;}
	}
</style>
<div class="container py-4">
	<div class="row">
		<div class="col-md">
			<div class="card">
				<h4 class="text-center">Sekolah Dasar Negeri</h4>
				<small class="text-center">Laporan Pembayaran</small>
				<table class="table table-bordered text-center">
					<tr>
						<th>No</th>
						<th>NIS</th>
						<th>Siswa</th>
						<th>Kelas</th>
						<th>Tagihan Bulan</th>
						<th>Jumlah Tagihan</th>
						<th>Keterangan</th>
					</tr>
					<?php $total = 0; $no = 1; foreach($tunggakan as $b) : ?>
						<tr>
							<td><?= $no++; ?></td>
							<td><?= $b['nis']; ?></td>
							<td><?= $b['nama_siswa']; ?></td>
							<td><?= $b['kelas']; ?></td>
							<td><?= $b['bulan']; ?></td>
							<td><?= $b['jml']; ?></td>
							<td>Belum Bayar</td>
						</tr>
						<?php $total += $b['jml']; ?>
					<?php endforeach; ?>
					<tr>
						<td colspan="5"><strong>Total</strong></td>
						<td colspan="2">Rp.<?= number_format($total, 0, ',', '.'); ?></td>
					</tr>
				</table>
				<div class="container">
					<div class="col-md-2">
						<a href="" onclick="window.print()" class="btn btn-primary btn-sm no-print"><i class="fas fa-print"></i>&nbsp;Cetak PDF</a>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 offset-md-9">
						<table>
							<tr>
								<td></td>
								<td>
									<p>Jawa Barat, Cimahi <?= date('d-m-Y'); ?><br>
									Operator</p>
									<br><br>
									<p>_______________________</p>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	window.print();
</script>