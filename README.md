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
Data selebihnya dapat diakses pada link ini (sql server) https://github.com/edelnurintan/SQL-PROJEK-SISTEM-BASIS-DATA-UNTUK-MANAJEMEN-PRODUKSI-DAN-INVENTARISASI-PERUSAHAAN-/blob/main/Produksi.sql

## Insert Data Kedalam Tabel Bahan Baku
``` sql
INSERT INTO Bahan_baku (Id_bahan_baku, Nama_bahan_baku, Stok, Harga_beli, Kategori, Satuan, Dimensi_cm, Berat_kg, Status_stok, Tanggal_masuk)
VALUES
(1, 'Plastik ABS', 500, 20.00, 'Plastik', 'Kg', '10x10x2', 1.2, 'Tersedia', '2023-01-01'),
(2, 'Besi Lembaran', 300, 50.00, 'Logam', 'Kg', '50x30x0.2', 5.0, 'Tersedia', '2023-01-15'),
(3, 'Kabel Listrik', 1000, 5.00, 'Elektronik', 'Meter', '100x1x1', 0.05, 'Tersedia', '2023-02-10'),
(4, 'Tembaga Murni', 200, 80.00, 'Logam', 'Kg', '20x10x0.5', 2.0, 'Tersedia', '2023-02-25'),
(5, 'Kain Wol', 600, 15.00, 'Tekstil', 'Meter', '200x100x0.1', 0.3, 'Tersedia', '2023-03-01'),
(6, 'Serat Karbon', 250, 100.00, 'Komposit', 'Lembar', '40x30x0.1', 0.6, 'Tersedsia', '2023-03-15'),
(7, 'Silikon', 700, 12.00, 'Bahan Kimia', 'Kg', '30x30x1', 0.8, 'Tersedia', '2023-04-10'),
(8, 'Karet Alam', 500, 25.00, 'Bahan Karet', 'Kg', '20x20x1', 1.0, 'Tersedia', '2023-04-20'),
(9, 'Aluminium Lembaran', 300, 40.00, 'Logam', 'Kg', '50x50x0.1', 3.5, 'Tersedia', '2023-05-01'),
(10, 'Minyak Pelumas', 400, 30.00, 'Cairan', 'Liter', '-', 1.0, 'Tersedia', '2023-05-15'),
(11, 'Fiber Optik', 1000, 2.00, 'Elektronik', 'Meter', '-', 0.02, 'Tersedia', '2023-06-01'),
(12, 'Timah', 150, 90.00, 'Logam', 'Kg', '15x15x1', 1.5, 'Tersedia', '2023-06-20'),
(13, 'Resin Epoxy', 300, 60.00, 'Komposit', 'Liter', '-', 0.5, 'Tersedia', '2023-07-05'),
(14, 'Plat Baja', 500, 75.00, 'Logam', 'Kg', '30x20x0.5', 4.0, 'Tersedia', '2023-07-15'),
(15, 'Kertas', 800, 0.10, 'Kertas', 'Lembar', '30x21x0.1', 0.01, 'Tersedia', '2023-08-01'),
(16, 'Cat Akrilik', 200, 40.00, 'Kimia', 'Liter', '-', 0.9, 'Tersedia', '2023-08-10'),
(17, 'Kaca Lembaran', 300, 55.00, 'Kaca', 'Lembar', '40x40x0.2', 2.0, 'Tersedia', '2023-08-20'),
(18, 'Polycarbonate', 450, 35.00, 'Plastik', 'Kg', '50x50x0.3', 1.8, 'Tersedia', '2023-09-01'),
(19, 'Aluminium Batangan', 250, 45.00, 'Logam', 'Batang', '200x5x5', 6.0, 'Tersedia', '2023-09-15'),
(20, 'Seng', 400, 20.00, 'Logam', 'Kg', '60x60x0.1', 2.5, 'Tersedia', '2023-09-25'),
(21, 'Karton Tebal', 600, 2.00, 'Kertas', 'Lembar', '30x21x0.3', 0.05, 'Tersedia', '2023-10-01'),
(22, 'Perekat Industri', 150, 22.00, 'Kimia', 'Liter', '-', 0.6, 'Tersedia', '2023-10-05'),
```
Data selebihnya dapat diakses pada link ini (sql server) https://github.com/edelnurintan/SQL-PROJEK-SISTEM-BASIS-DATA-UNTUK-MANAJEMEN-PRODUKSI-DAN-INVENTARISASI-PERUSAHAAN-/blob/main/Bahan%20baku.sql

## Insert Data Kedalam Tabel Pemasok
``` sql
INSERT INTO Pemasok (Id_Pemasok, Nama_Pemasok, Alamat, Kontak)
VALUES
(1, 'PT. Logam Makmur', 'Jl. Industri No.1, Jakarta', '021-12345678'),
(2, 'CV. Kencana Plastik', 'Jl. Raya Kencana No.5, Bandung', '022-87654321'),
(3, 'UD. Baja Pratama', 'Jl. Baja Utama No.10, Surabaya', '031-5551234'),
(4, 'PT. Tekstil Nusantara', 'Jl. Sutra No.11, Solo', '0271-2345678'),
(5, 'PT. Elektronik Global', 'Jl. Elektrik No.21, Bekasi', '021-99887766'),
(6, 'CV. Fiber Optik Jaya', 'Jl. Telekomunikasi No.45, Tangerang', '021-44556677'),
(7, 'PT. Kimia Persada', 'Jl. Kimia No.18, Medan', '061-33445566'),
(8, 'UD. Serat Alam', 'Jl. Serat No.22, Yogyakarta', '0274-99887766'),
(9, 'PT. Komposit Mandiri', 'Jl. Resin No.9, Semarang', '024-55667788'),
(10, 'CV. Kaca Mulia', 'Jl. Cermin No.7, Malang', '0341-22334455'),
(11, 'PT. Baja Ringan', 'Jl. Baja No.13, Palembang', '0711-66778899'),
(12, 'CV. Tembaga Prima', 'Jl. Logam Mulia No.4, Pekanbaru', '0761-22334455'),
(13, 'PT. Plastik Utama', 'Jl. Plastik No.14, Cirebon', '0231-44556677'),
(14, 'UD. Kayu Jati', 'Jl. Kayu No.15, Balikpapan', '0542-55667788'),
(15, 'CV. Serat Karbon', 'Jl. Komposit No.19, Pontianak', '0561-77889900'),
(16, 'PT. Logistik Mineral', 'Jl. Mineral No.20, Makassar', '0411-88990011'),
(17, 'UD. Kain Batik', 'Jl. Sutra No.25, Denpasar', '0361-33445566'),
(18, 'PT. Polimer Terbaik', 'Jl. Polimer No.30, Manado', '0431-22334455'),
(19, 'CV. Cat Warna Jaya', 'Jl. Cat No.32, Mataram', '0370-44556677'),
(20, 'UD. Keramik Nusantara', 'Jl. Keramik No.33, Palu', '0451-55667788'),
```
Data selebihnya dapat diakses pada link ini (sql server) https://github.com/edelnurintan/SQL-PROJEK-SISTEM-BASIS-DATA-UNTUK-MANAJEMEN-PRODUKSI-DAN-INVENTARISASI-PERUSAHAAN-/blob/main/Pemasok.sql

## Insert Data Kedalam Tabel Penggunaaan Bahan Baku
``` sql
INSERT INTO Penggunaan_bahan_baku (Id_penggunaan, Id_bahan_baku, Jumlah_penggunaan, Tanggal_penggunaan)
VALUES
(1, 1, 50.0, '2024-01-10'),
(2, 2, 20.0, '2024-01-15'),
(3, 3, 15.0, '2024-01-18'),
(4, 4, 10.0, '2024-01-20'),
(5, 5, 30.0, '2024-01-22'),
(6, 6, 25.0, '2024-01-25'),
(7, 7, 12.0, '2024-01-28'),
(8, 8, 40.0, '2024-02-01'),
(9, 9, 22.0, '2024-02-05'),
(10, 10, 18.0, '2024-02-08'),
(11, 11, 35.0, '2024-02-10'),
(12, 12, 28.0, '2024-02-12'),
(13, 13, 40.0, '2024-02-15'),
(14, 14, 15.0, '2024-02-18'),
(15, 15, 10.0, '2024-02-20'),
(16, 16, 8.0, '2024-02-22'),
(17, 17, 20.0, '2024-02-25'),
(18, 18, 30.0, '2024-03-01'),
(19, 19, 22.0, '2024-03-03'),
(20, 20, 14.0, '2024-03-05'),
```
Data selebihnya dapat diakses pada link ini (sql server)  https://github.com/edelnurintan/SQL-PROJEK-SISTEM-BASIS-DATA-UNTUK-MANAJEMEN-PRODUKSI-DAN-INVENTARISASI-PERUSAHAAN-/blob/main/penggunaan%20bahan%20baku.sql

## Insert Data Kedalam Tabel Pelanggan
``` sql
INSERT INTO Pelanggan (Id_pelanggan, Nama_pelanggan, Alamat_pelanggan, Telepon_pelanggan, Email_pelanggan, Tanggal_bergabung)
VALUES
(1, 'Andi Wijaya', 'Jl. Mawar No.1, Jakarta', '081234567890', 'andi.wijaya@email.com', '2023-01-10'),
(2, 'Budi Santoso', 'Jl. Melati No.2, Bandung', '081234567891', 'budi.santoso@email.com', '2023-01-15'),
(3, 'Citra Lestari', 'Jl. Kenanga No.3, Surabaya', '081234567892', 'citra.lestari@email.com', '2023-02-05'),
(4, 'Dewi Agustina', 'Jl. Anggrek No.4, Medan', '081234567893', 'dewi.agustina@email.com', '2023-02-10'),
(5, 'Eko Prasetyo', 'Jl. Bougenville No.5, Makassar', '081234567894', 'eko.prasetyo@email.com', '2023-02-18'),
(6, 'Fitri Handayani', 'Jl. Flamboyan No.6, Semarang', '081234567895', 'fitri.handayani@email.com', '2023-03-01'),
(7, 'Gilang Saputra', 'Jl. Cempaka No.7, Yogyakarta', '081234567896', 'gilang.saputra@email.com', '2023-03-12'),
(8, 'Hendra Kurniawan', 'Jl. Tulip No.8, Bali', '081234567897', 'hendra.kurniawan@email.com', '2023-03-15'),
(9, 'Indah Puspitasari', 'Jl. Dahlia No.9, Balikpapan', '081234567898', 'indah.puspitasari@email.com', '2023-03-22'),
(10, 'Joko Susanto', 'Jl. Mawar No.10, Palembang', '081234567899', 'joko.susanto@email.com', '2023-04-01'),
(11, 'Kartika Wulandari', 'Jl. Melati No.11, Batam', '081234567800', 'kartika.wulandari@email.com', '2023-04-05'),
(12, 'Lutfi Ramadhan', 'Jl. Kenanga No.12, Pontianak', '081234567801', 'lutfi.ramadhan@email.com', '2023-04-10'),
(13, 'Maya Setiawan', 'Jl. Anggrek No.13, Manado', '081234567802', 'maya.setiawan@email.com', '2023-04-15'),
(14, 'Nur Hidayat', 'Jl. Bougenville No.14, Ambon', '081234567803', 'nur.hidayat@email.com', '2023-05-01'),
(15, 'Oki Supriyadi', 'Jl. Flamboyan No.15, Padang', '081234567804', 'oki.supriyadi@email.com', '2023-05-10'),
```
Data selebihnya dapat diakses pada link ini (sql server) https://github.com/edelnurintan/SQL-PROJEK-SISTEM-BASIS-DATA-UNTUK-MANAJEMEN-PRODUKSI-DAN-INVENTARISASI-PERUSAHAAN-/blob/main/pelanggan.sql

## Insert Data Kedalam Tabel Pesanan
``` sql
INSERT INTO Pesanan (Id_pesanan, Id_pelanggan, Id_produk, Jumlah, Harga_Total, Tanggal_Pesanan)
VALUES
(1, 1, 1, 3, 300.00, '2024-01-15'),
(2, 2, 2, 5, 1000.00, '2024-01-18'),
(3, 3, 3, 2, 300.00, '2024-01-20'),
(4, 4, 4, 1, 250.00, '2024-01-25'),
(5, 5, 5, 4, 1200.00, '2024-01-28'),
(6, 6, 6, 3, 630.00, '2024-02-01'),
(7, 7, 7, 1, 180.00, '2024-02-05'),
(8, 8, 8, 2, 700.00, '2024-02-08'),
(9, 9, 9, 3, 1020.00, '2024-02-10'),
(10, 10, 10, 1, 400.00, '2024-02-12'),
(11, 11, 11, 5, 625.00, '2024-02-15'),
(12, 12, 12, 10, 1000.00, '2024-02-18'),
(13, 13, 13, 2, 120.00, '2024-02-20'),
(14, 14, 14, 4, 480.00, '2024-02-22'),
(15, 15, 15, 8, 1280.00, '2024-02-25');
```
Data selebihnya dapat diakses pada link ini (sql server) https://github.com/edelnurintan/SQL-PROJEK-SISTEM-BASIS-DATA-UNTUK-MANAJEMEN-PRODUKSI-DAN-INVENTARISASI-PERUSAHAAN-/blob/main/pesanan.sql

# Data Query Language (DQL)
## Menampilkan bahan baku berdasarkan stok <=100
``` sql
SELECT Nama_bahan_baku, Kategori,Stok, Status_stok
FROM Bahan_baku
WHERE Stok<=100;
```
| Nama_bahan_baku    | Kategori       | Stok | Status_stok |
|---------------------|----------------|------|-------------|
| Grafit             | Bahan Khusus   | 100  | Tersedia    |
| Serbuk Aluminium   | Logam          | 100  | Tersedia    |
| Emas Serbuk        | Logam Mulia    | 50   | Tersedia    |
| Nikel              | Logam          | 100  | Tersedia    |
| Magnesium          | Logam          | 100  | Tersedia    |

## Menampilkan informasi pelanggan dan pesanan produk
``` sql
SELECT 
    P.Nama_pelanggan,         -- Menampilkan nama pelanggan
    Pes.Jumlah,               -- Menampilkan jumlah produk yang dipesan
    Pr.Nama_Produk,           -- Menampilkan nama produk yang dipesan
    Pr.Harga_jual             -- Menampilkan harga jual produk tersebut
FROM 
    Pelanggan P               -- Mengambil data dari tabel Pelanggan, disingkat 'P'
INNER JOIN 
    Pesanan Pes               -- Menggabungkan dengan tabel Pesanan
    ON P.Id_pelanggan = Pes.Id_pelanggan  -- Kunci gabungan: Id_pelanggan
INNER JOIN 
    PRODUKSI Pr               -- Menggabungkan dengan tabel PRODUKSI
    ON Pes.Id_produk = Pr.Id_produk;      -- Kunci gabungan: Id_produk
```
| Nama_pelanggan    | Jumlah | Nama_Produk | Harga_jual |
|--------------------|--------|-------------|------------|
| Andi Wijaya       | 3      | Widget A    | 100.00     |
| Budi Santoso      | 5      | Widget B    | 200.00     |
| Citra Lestari     | 2      | Gadget X    | 150.00     |
| Dewi Agustina     | 1      | Widget C    | 250.00     |
| Eko Prasetyo      | 4      | Gizmo Y     | 300.00     |
| Fitri Handayani   | 3      | Sensor Z    | 120.00     |
| Gilang Saputra    | 1      | Widget D    | 180.00     |
| ...               | ...    | ...         | ...        |

## Menampilkan Produk dengan pendapatan paling tinggi
``` sql
SELECT
	Pr.Id_produk,
	Pr.Nama_produk,
	Sum(Pes.Jumlah * Pr.Harga_jual) AS Total_pendapatan
FROM Produksi Pr
INNER JOIN 
	Pesanan Pes 
	ON Pr.Id_produk = Pes.Id_produk
GROUP BY 
	Pr.Id_produk, Pr.Nama_produk
ORDER BY 
	Total_pendapatan DESC;
```
| Id_produk | Nama_produk       | Total_pendapatan |
|-----------|-------------------|------------------|
| 49        | Gadget Ultimate   | 4550.00          |
| 68        | Gizmo Pro         | 4340.00          |
| 41        | Gadget Max        | 3600.00          |
| 100       | Gadget Nova+      | 3600.00          |
| 76        | Gizmo Storm       | 3540.00          |
| 33        | Gadget Prime      | 2750.00          |
| 92        | Gadget Orbit      | 2520.00          |
| ...       | ...               | ...              |

## Menampilkan produk paling laris
``` sql
SELECT 
	Pr.Id_Produk,
	Pr.Nama_produk,
	Pes.Jumlah
FROM Produksi Pr
INNER JOIN
	Pesanan Pes
	ON Pr.Id_produk = Pes.Id_Produk
ORDER BY
	Pes.Jumlah DESC;
```
| Id_Produk | Nama_produk   | Jumlah |
|-----------|---------------|--------|
| 12        | Komponen B1   | 10     |
| 30        | Widget X      | 10     |
| 27        | Komponen F4   | 8      |
| 15        | Sensor Lite   | 8      |
| 37        | Gizmo Eco     | 8      |
| 54        | Komponen X1   | 8      |
| ...       | ...           | ...    |

## Melihat bahan baku yang paling sering digunakan berdsarkan kategori tertentu (Tekstil)
``` sql

SELECT 
	Bahan_baku.Nama_bahan_baku,
	Bahan_baku.Kategori,
	Bahan_baku.Status_stok,
	Jumlah_penggunaan
FROM
	Bahan_baku
LEFT JOIN
	Penggunaan_bahan_baku
	ON Bahan_baku.Id_bahan_baku = Penggunaan_bahan_baku.Id_bahan_baku
WHERE 
	Bahan_baku.Kategori = 'Tekstil'
ORDER BY
	Jumlah_penggunaan DESC;
```
| Nama_bahan_baku   | Kategori | Status_stok | Jumlah_penggunaan |
|--------------------|----------|-------------|--------------------|
| Kulit Sintetis    | Tekstil  | Tersedia    | 38                 |
| Benang Katun      | Tekstil  | Tersedia    | 36                 |
| Kain Wol          | Tekstil  | Tersedia    | 30                 |
| Kain Katun        | Tekstil  | Tersedia    | 19                 |
| Kapas             | Tekstil  | Tersedia    | 15                 |

# Data Manipulation Language (DML) 
## Mengupdate jumlah penggunaan bahan baku "Kulit Sintetis" bertambah 5
``` sql
UPDATE Penggunaan_bahan_baku
SET Penggunaan_bahan_baku.Jumlah_penggunaan = Penggunaan_bahan_baku.Jumlah_penggunaan +5
FROM Penggunaan_bahan_baku
INNER JOIN
	Bahan_baku
	ON	Penggunaan_bahan_baku.Id_bahan_baku = Bahan_baku.Id_bahan_baku
WHERE 
	Nama_bahan_baku = 'Kulit Sintetis';

--- Menampilkan hasil update
SELECT 
	Bahan_baku.Nama_bahan_baku,
	Penggunaan_bahan_baku.Jumlah_penggunaan
FROM Bahan_baku
INNER JOIN
	Penggunaan_bahan_baku
	ON Bahan_baku.Id_bahan_baku =Penggunaan_bahan_baku.Id_bahan_baku
WHERE 
	Nama_bahan_baku = 'Kulit Sintetis';
```
| Nama_bahan_baku   | Jumlah_penggunaan |
|--------------------|-------------------|
| Kulit Sintetis    | 43                |




