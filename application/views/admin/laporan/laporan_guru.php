<style>
	@media print {
		.no-print{display: none;}
	}
</style>
<div class="container py-4">
	<div class="row">
		<div class="col-md">
			<div class="card">
				<h4 class="text-center">Sekolah Dasar Negeri </h4>
				<small class="text-center">Laporan Guru</small>
				<table class="table table-bordered">
					<tr>
						<th>No</th>
						<th>Nama Guru</th>
					</tr>
					<?php $no = 1; foreach($guru as $g) : ?>
						<tr>
							<td><?= $no++; ?></td>
							<td><?= $g['nama_guru']; ?></td>
						</tr>
					<?php endforeach; ?>
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