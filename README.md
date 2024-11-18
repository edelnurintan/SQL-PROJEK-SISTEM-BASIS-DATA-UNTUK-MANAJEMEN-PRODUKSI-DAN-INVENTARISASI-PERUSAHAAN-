# SQL-PROJEK-SISTEM-BASIS-DATA-UNTUK-MANAJEMEN-PRODUKSI-DAN-INVENTARISASI-PERUSAHAAN-
Proyek ini adalah sebuah sistem basis data yang dirancang secara mandiri untuk mengelola data operasional perusahaan. Semua dataset, struktur tabel, serta hubungan antar tabel dirancang dan dibuat secara independen dengan tujuan memberikan solusi terintegrasi untuk mengelola informasi terkait produksi, bahan baku, pelanggan, dan pesanan.

# Schema
## Membuat Tabel Produksi (Informasi mengenai apa saja yang diproduksi perusahaan)
``` sql
CREATE TABLE PRODUKSI (
	Id_produk INT PRIMARY KEY,
	Nama_Produk VARCHAR(100),
	Harga_jual DECIMAL(10,2),
	Biaya_produksi DECIMAL(10,2),
	Stok INT,
	Kategori VARCHAR(100),
	Dimensi VARCHAR(100),
	Berat DECIMAL(10,2),
	Varian_produk VARCHAR(100),
	Status_produksi VARCHAR(100),
	Tangal_rilis DATE
);
```
## Mambuat Tabel Bahan Baku (Informasi bahan baku yang dibutuhkan perusahaan)
``` sql
CREATE TABLE Bahan_baku (
	Id_bahan_baku INT PRIMARY KEY,
	Nama_bahan_baku VARCHAR(100),
	Stok INT,
	Harga_beli DECIMAL(10,2),
	Kategori VARCHAR(100),
	Satuan VARCHAR(50),
	Dimensi_cm VARCHAR(50),
	Berat_kg DECIMAL(5,1),
	Status_stok VARCHAR(50),
	Tanggal_masuk DATE
);
```
##  Membuat Tabel Pemasok(Informasi pemasok bahan baku perusahaan)
``` sql
CREATE TABLE Pemasok(
	Id_Pemasok INT PRIMARY KEY,
	Nama_Pemasok VARCHAR(100),
	Alamat VARCHAR(100),
	Kontak VARCHAR(100)
);
```
## Membuat Tabel Penggunaan Bahan Baku 
``` sql
CREATE TABLE Penggunaan_bahan_baku(
	Id_penggunaan INT PRIMARY KEY,
	Id_bahan_baku INT,
	Jumlah_penggunaan INT,
	Tanggal_penggunaan DATE,
	CONSTRAINT fk_Id_bahan_baku FOREIGN KEY(Id_bahan_baku) REFERENCES Bahan_baku(Id_bahan_baku)
);
```
## Mmebuat Tabel Pelanggan 
``` sql
CREATE TABLE Pelanggan(
	Id_pelanggan INT PRIMARY KEY,
	Nama_pelanggan VARCHAR(100),
	Alamat_pelanggan VARCHAR(100),
	Telepon_pelanggan VARCHAR(15),
	Email_pelanggan VARCHAR(100),
	Tanggal_bergabung DATE
);
```
## Memmbuat Tabel Pesanan oleh Pelanggan 
``` sql
CREATE TABLE Pesanan(
	Id_pesanan INT PRIMARY KEY,
	Id_pelanggan INT,
	Id_produk INT,
	Jumlah INT,
	Harga_Total DECIMAL(10,2),
	Tanggal_Pesanan DATE
	CONSTRAINT fk_Id_Pelanggan FOREIGN KEY(Id_pelanggan) REFERENCES Pelanggan(Id_Pelanggan),
	CONSTRAINT fk_Id_produksi FOREIGN KEY(Id_produk) REFERENCES Produksi(Id_produk)
);
```
## Insert Data
