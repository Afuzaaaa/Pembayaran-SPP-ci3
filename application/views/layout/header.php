<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title><?= $title; ?></title>

    <!-- Bootstrap core CSS -->
    <link href="<?= base_url('/assets/css/bootstrap.min.css'); ?>" rel="stylesheet">
    <link href="<?= base_url('/assets/css/dashboard.css'); ?>" rel="stylesheet">
    <link href="<?= base_url('/assets/vendor/fontawesome-free/css/all.min.css'); ?>" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
    
    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/4.5/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/4.5/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/4.5/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/4.5/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/4.5/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
    <link rel="icon" href="/docs/4.5/assets/img/favicons/favicon.ico">
    <meta name="msapplication-config" content="/docs/4.5/assets/img/favicons/browserconfig.xml">
    <meta name="theme-color" content="#563d7c">
    
    <!-- SimpleLightbox plugin CSS-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
    
    <!-- Custom styles for this template -->
    <link href="<?= base_url('assets/css/styles.css')?>" rel="stylesheet">
  </head>
  <body>
  <!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container px-0 px-lg-0">
        <!-- <a class="navbar-brand" href="<?= base_url('admin/dashboard'); ?>">Pembayaran SPP Sekolah Dasar</a> -->
        <a href="<?= base_url('admin/dashboard'); ?>"><img src="<?= base_url('assets/img/logo_panjang.png')?>" width="20%" height="55%"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ms-auto my-2 my-lg-0">
              <li class="nav-item"><a class="nav-link" href="<?= base_url('admin/dashboard'); ?>#about">Tentang Kami</a></li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Data Master
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="<?= base_url('admin/users'); ?>">User</a>
                  <a class="dropdown-item" href="<?= base_url('admin/guru'); ?>">Guru</a>
                  <a class="dropdown-item" href="<?= base_url('admin/wali'); ?>">Wali</a>
                  <a class="dropdown-item" href="<?= base_url('admin/siswa'); ?>">Siswa</a>
                  <a class="dropdown-item" href="<?= base_url('admin/transaksi'); ?>">Transaksi</a>
                </div>
              </li>
              <li class="nav-item"><a class="nav-link" href="<?= base_url('admin/laporan'); ?>">Laporan</a></li>
              <li class="nav-item"><a class="nav-link" href="<?= base_url('auth/logout'); ?>">Log Out</a></li>
          </ul>
        </div>
    </div>
</nav>
