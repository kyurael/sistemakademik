<?php
 //mengambil koneksi basisdata
 require_once "koneksi.php";
 //Mengambil nim yang akan dihapus
 $kode=$_GET['kd_dosen'];
 //Membuat SQL Hapus
 $hapusdsn="DELETE FROM tbl_dsn WHERE kd_dosen='$kode'";
 //Proses SQL ke basisdata
 if(mysqli_query($koneksi,$hapusdsn)){
 //tampilkan alert dan redirect ke halaman TampilDataDosen
 echo "<script> alert('Data sudah dihapus');
window.location.assign('TampilDataDosen.php'); </script>";
 }else{
 //tampilkan alert dan redirect ke halaman TampilDataDosen
 echo "<script> alert('Data gagal dihapus');
 window.location.assign('TampilDataDosen.php'); </script>";
 }
 //sampai disini kode hapus sudah selesai, bisa