<!-- Masthead-->
<header class="masthead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold">Selamat Datang <?= $user['username']; ?></h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 mb-5">Aplikasi Pembayaran SPP Sekolah Dasar Sederhana Dengan Codeigniter 3 dan API</p>
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="page-section bg-primary" id="about">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="text-white mt-0">Tentang Kami</h2>
                        <hr class="divider divider-light" />
                        <p class="text-white-75 mb-4">Aplikasi ini merupakan aplikasi untuk pembayaran SPP Sekolah Dasar dengan menggunakan CodeIgniter 3 dan RestAPI. Aplikasi ini juga dibangun oleh 1 kelompok</p>
                        <a class="btn btn-light btn-xl" href="#anggota">Lihat Anggota</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Services-->
        <section class="page-section" id="anggota">
            <div class="container px-4 px-lg-5">
                <h2 class="text-center mt-0">Anggota</h2>
                <hr class="divider" />
                <div class="row gx-4 gx-lg-5">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><img src="<?= base_url('assets/img/joy.jpg')?>" width="200" height="200"></div>
                            <h3 class="h4 mb-2">Afuza Dwi Purnama</h3>
                            <p class="text-muted mb-0">3411201050</p>
                            <p class="text-muted mb-0"><i class="bi-instagram"></i>&nbsp;@zoexyzzz</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><img src="<?= base_url('assets/img/bili.jpeg')?>" width="200" height="200"></div>
                            <h3 class="h4 mb-2">Naufal Levi Sabili</h3>
                            <p class="text-muted mb-0">3411201057</p>
                            <p class="text-muted mb-0"><i class="bi-instagram"></i>&nbsp;@naufalleviii</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><img src="<?= base_url('assets/img/abel.jpeg')?>" width="200" height="200"></div>
                            <h3 class="h4 mb-2">Fabian Nabiel Syahreza</h3>
                            <p class="text-muted mb-0">3411201077</p>
                            <p class="text-muted mb-0"><i class="bi-instagram"></i>&nbsp;@fabianns_</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><img src="<?= base_url('assets/img/zalfa.jpg')?>" width="200" height="200"></div>
                            <h3 class="h4 mb-2">Zalfa Salsabila Muliawati</h3>
                            <p class="text-muted mb-0">3411201071</p>
                            <p class="text-muted mb-0"><i class="bi-instagram"></i>&nbsp;@zalfasl</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>