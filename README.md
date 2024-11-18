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
## Membuat Tabel Bahan Baku (Informasi bahan baku yang dibutuhkan perusahaan)
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
##  Membuat Tabel Pemasok (Informasi pemasok bahan baku perusahaan)
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
## Membuat Tabel Pelanggan 
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
## Membuat Tabel Pesanan oleh Pelanggan 
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
# Insert Data
## Insert Data Kedalam Tabel Produksi
``` sql
INSERT INTO PRODUKSI (Id_produk, Nama_Produk, Harga_jual, Biaya_produksi, Stok, Kategori, Dimensi, Berat, Varian_produk, Status_produksi, Tangal_rilis)
VALUES
(1, 'Widget A', 100.00, 60.00, 150, 'Elektronik', '10x5x3', 0.5, 'Standard', 'Sedang Diproduksi', '2024-01-01'),
(2, 'Widget B', 200.00, 120.00, 100, 'Elektronik', '12x6x4', 0.8, 'Premium', 'Sudah Dirilis', '2023-05-15'),
(3, 'Gadget X', 150.00, 80.00, 200, 'Peralatan', '15x10x5', 1.0, 'Basic', 'Sudah Dirilis', '2023-07-10'),
(4, 'Widget C', 250.00, 140.00, 50, 'Elektronik', '10x5x3', 0.7, 'Advanced', 'Pra-Produksi', '2024-03-01'),
(5, 'Gizmo Y', 300.00, 180.00, 75, 'Peralatan', '20x15x7', 2.0, 'Deluxe', 'Sedang Diproduksi', '2024-04-20'),
(6, 'Sensor Z', 120.00, 70.00, 300, 'Sensor', '8x4x2', 0.4, 'Standard', 'Sudah Dirilis', '2023-12-15'),
(7, 'Widget D', 180.00, 100.00, 90, 'Elektronik', '12x6x4', 0.75, 'Eco-Friendly', 'Pra-Produksi', '2024-05-01'),
(8, 'Gadget Pro', 350.00, 220.00, 60, 'Peralatan', '25x12x8', 1.5, 'Pro Edition', 'Sedang Diproduksi', '2024-02-10'),
(9, 'Widget Eco', 170.00, 95.00, 120, 'Elektronik', '10x5x3', 0.6, 'Recycled', 'Sudah Dirilis', '2023-09-05'),
(10, 'Gizmo Xtreme', 400.00, 250.00, 40, 'Peralatan', '30x18x10', 2.5, 'Xtreme Edition', 'Pra-Produksi', '2024-06-15'),
(11, 'Komponen A1', 50.00, 30.00, 1000, 'Komponen', '5x3x1', 0.2, 'Standard', 'Sudah Dirilis', '2023-11-01'),
(12, 'Komponen B1', 75.00, 45.00, 800, 'Komponen', '7x4x2', 0.3, 'Premium', 'Sudah Dirilis', '2024-01-10'),
(13, 'Komponen C1', 60.00, 35.00, 900, 'Komponen', '6x3x1.5', 0.25, 'Advanced', 'Sedang Diproduksi', '2024-02-25'),
(14, 'Sensor Pro', 200.00, 110.00, 150, 'Sensor', '10x5x3', 0.5, 'Pro Edition', 'Pra-Produksi', '2024-07-20'),
(15, 'Sensor Lite', 80.00, 50.00, 250, 'Sensor', '8x4x2', 0.35, 'Lite Edition', 'Sudah Dirilis', '2023-08-25');
```
Data selebihnya dapat diakses pada link ini 
