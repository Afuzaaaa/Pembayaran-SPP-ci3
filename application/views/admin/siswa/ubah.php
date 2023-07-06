<section class="page-section bg-primary" id="about">
  <div class="container px-4 px-lg-5">
    <div class="row gx-4 gx-lg-5 justify-content-center">
      <div class="col-lg-8 text-center">
          <h2 class="text-white mt-0">Data <?= $title; ?></h2>
          <hr class="divider divider-light" />
      </div>
    </div>
  </div>
</section>

<main role="main" class="col-md-12 ml-sm-auto">
  <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  </div>
  <div class="card">
    <div class="card-body">
      <div class="row">
        <div class="col-md">
          <?= form_open(''); ?>
          <input type="text" name="id_siswa" value="<?= $siswa['id_siswa']; ?>" disabled="disabled">
          <div class="form-group">
            <label for="nis">NIS</label>
            <input type="text" name="nis" id="nis" class="form-control" value="<?= $siswa['nis']; ?>" disabled>
            <small class="muted text-danger"><?= form_error('nis'); ?></small>
          </div>
          <div class="form-group">
            <label for="nama">Nama Siswa</label>
            <input type="text" name="nama" id="nama" class="form-control"value="<?= $siswa['nama_siswa']; ?>">
            <small class="muted text-danger"><?= form_error('nama'); ?></small>
          </div>
          <div class="form-group">
            <label for="kelas">kelas</label>
            <select name="kelas" id="kelas" class="form-control">
              <option value="">-- Pilih Kelas --</option>
              <?php foreach($kelas as $k) : ?>
                <?php if($k['kelas'] == $siswa['kelas']) : ?>
                <option value="<?= $k['kelas']; ?>" selected><?= $k['kelas']; ?></option>
                <?php else : ?>
                  <option value="<?= $k['kelas']; ?>"><?= $k['kelas']; ?></option>
                <?php endif; ?>
              <?php endforeach; ?>
            </select>
            <small class="muted text-danger"><?= form_error('kelas'); ?></small>
          </div>
          <div class="form-group">
            <label for="tahun_ajaran">Tahun Ajaran</label>
            <input type="text" name="tahun_ajaran" id="tahun_ajaran" value="<?= $siswa['tahun_ajaran']; ?>" class="form-control">
            <small class="muted text-danger"><?= form_error('tahun_ajaran'); ?></small>
          </div>
          <div class="form-group">
            <label for="biaya">biaya</label>
            <input type="number" name="biaya" id="biaya" value="<?= $siswa['biaya']; ?>" class="form-control">
            <small class="muted text-danger"><?= form_error('biaya'); ?></small>
          </div>
          <div class="form-group">
            <label for="jatuh_tempo">Jatuh Tempo Pertama</label>
            <input type="text" name="jatuh_tempo" id="jatuh_tempo" value="2023-07-10" readonly class="form-control">
            <small class="muted text-danger"><?= form_error('jatuh_tempo'); ?></small>
          </div>
          <div class="form-group">
            <a href="<?= base_url('admin/siswa'); ?>" class="btn btn-secondary" data-dismiss="modal">Kembali</a>
            <button type="submit" class="btn btn-primary">Ubah</button>
          </div>
          <?= form_close(); ?>
        </div>
      </div>
    </div>
  </div>
</main>

