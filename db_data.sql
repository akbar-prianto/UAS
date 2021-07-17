-- phpMyAdmin SQL Dump
-- versi 5.0.4
-- https://www.phpmyadmin.net/
--
-- Tuan rumah: 127.0.0.1
-- Waktu Pembuatan: 16 Jul 2021 jam 02:16
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE =  " NO_AUTO_VALUE_ON_ZERO " ;
MULAI TRANSAKSI ;
SET zona_waktu =  " +00:00 " ;


/* !40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */ ;
/* !40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */ ;
/* !40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */ ;
/* !40101 SET NAMA utf8mb4 */ ;

--
-- Basis data: `db_data`
--

- ------------------------------------------------ --------

--
-- Struktur tabel untuk tabel `data`
--

MENCIPTAKAN  TABLE ` Data ` (
  ` Id `  int ( 11 ) NOT NULL ,
  ` Nama_wilayah `  varchar ( 200 ) NOT NULL ,
  ` jumlah_positif `  int ( 11 ) NOT NULL ,
  ` Jumlah_dirawat `  int ( 11 ) NOT NULL ,
  ` jumlah_sembuh `  int ( 11 ) NOT NULL ,
  ` jumlah_meninggal `  int ( 11 ) NOT NULL ,
  ` Nama_operator `  varchar ( 200 ) NOT NULL ,
  ` Nim_mahasiswa `  bigint ( 20 ) NOT NULL
) ENGINE = CHARSET DEFAULT InnoDB = utf8mb4;

--
-- Membuang data untuk tabel `data`
--

INSERT INTO  ` Data ` ( ` id ` , ` nama_wilayah ` , ` jumlah_positif ` , ` jumlah_dirawat ` , ` jumlah_sembuh ` , ` jumlah_meninggal ` , ` nama_operator ` , ` nim_mahasiswa ` ) VALUES
( 17 , ' Jawa Tengah ' , 5326 , 7376 , 5267 , 242 , ' Andi Lisdiarto ' , 181011402263 );

- ------------------------------------------------ --------

--
-- Struktur tabel untuk tabel `pengguna`
--

BUAT  TABEL ` pengguna` (
  ` Id `  int ( 11 ) NOT NULL ,
  ` Nama `  varchar ( 200 ) NOT NULL ,
  ` Nama `  varchar ( 200 ) NOT NULL ,
  ` Email `  varchar ( 200 ) NOT NULL ,
  ` Sandi `  varchar ( 200 ) NOT NULL
) ENGINE = CHARSET DEFAULT InnoDB = utf8mb4;

--
-- Membuang data untuk tabel `pengguna`
--

INSERT INTO  ` pengguna ` ( ` id ` , ` nama ` , ` nama ` , ` email ` , ` kata sandi ` ) VALUES
( 2 , ' andi ' , ' andi ' , ' andilisdiarto@gmail.com ' , ' $2y$10$7aE2rX1Sg9zvb2tBIui2mOaswLfKdDP090Bqg6d7O1mMQDlFAy9bi ' );

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `data`
--
ALTER  TABLE  ` Data `
  TAMBAHKAN KUNCI UTAMA ( ` id ` );

--
-- Indeks untuk tabel `pengguna`
--
ALTER  TABLE  ` pengguna `
  TAMBAHKAN KUNCI UTAMA ( ` id ` );

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER  TABLE  ` Data `
  MODIFY ` id `  int ( 11 ) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 18 ;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER  TABLE  ` pengguna `
  MODIFY ` id `  int ( 11 ) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 3 ;
BERKOMITMEN ;

/* !40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */ ;
/* !40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */ ;
/* !40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */ ;