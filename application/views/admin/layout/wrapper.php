<?php
// proteksi halaman admin dengan fungsi cek_login yanag ada di simple_login
$this->simple_login->cek_login();
// GABUNGKAN SEMUA BAGIAN LAYOUT MENJADI SATU
require_once('head.php');
require_once('header.php');
require_once('nav.php');
require_once('content.php');
require_once('footer.php');
