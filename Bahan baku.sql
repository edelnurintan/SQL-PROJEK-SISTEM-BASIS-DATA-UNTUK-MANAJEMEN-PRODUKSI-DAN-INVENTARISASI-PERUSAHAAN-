USE INFORMASI;

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
(23, 'Kulit Sintetis', 500, 25.00, 'Tekstil', 'Meter', '150x100x0.5', 0.7, 'Tersedia', '2023-10-15'),
(24, 'Seng Batangan', 350, 30.00, 'Logam', 'Batang', '100x10x10', 5.0, 'Tersedia', '2023-10-25'),
(25, 'Tali Nylon', 1000, 3.00, 'Plastik', 'Meter', '-', 0.01, 'Tersedia', '2023-11-01'),
(26, 'Serat Baja', 200, 120.00, 'Komposit', 'Kg', '20x20x1', 2.0, 'Tersedia', '2023-11-15'),
(27, 'Stainless Steel', 300, 75.00, 'Logam', 'Kg', '40x30x0.5', 3.0, 'Tersedia', '2023-11-20'),
(28, 'Kain Katun', 700, 10.00, 'Tekstil', 'Meter', '150x100x0.1', 0.2, 'Tersedia', '2023-12-01'),
(29, 'Paraffin', 250, 8.00, 'Kimia', 'Kg', '-', 0.8, 'Tersedia', '2023-12-10'),
(30, 'Grafit', 100, 110.00, 'Bahan Khusus', 'Kg', '10x10x5', 1.0, 'Tersedia', '2023-12-20'),
(31, 'Kawat Baja', 500, 9.00, 'Logam', 'Meter', '-', 0.04, 'Tersedia', '2024-01-05'),
(32, 'Karet Silikon', 200, 50.00, 'Karet', 'Kg', '-', 0.8, 'Tersedia', '2024-01-15'),
(33, 'Benang Katun', 600, 5.00, 'Tekstil', 'Meter', '-', 0.01, 'Tersedia', '2024-02-01'),
(34, 'Polyurethane', 450, 15.00, 'Plastik', 'Kg', '-', 1.0, 'Tersedia', '2024-02-10'),
(35, 'Pipa PVC', 1000, 2.00, 'Plastik', 'Meter', '-', 0.05, 'Tersedia', '2024-02-25'),
(36, 'Resin Poliester', 200, 25.00, 'Komposit', 'Kg', '-', 0.8, 'Tersedia', '2024-03-05'),
(37, 'Keramik', 300, 35.00, 'Bahan Keras', 'Kg', '20x20x1', 1.5, 'Tersedia', '2024-03-15'),
(38, 'Serbuk Aluminium', 100, 55.00, 'Logam', 'Kg', '-', 0.7, 'Tersedia', '2024-03-20'),
(39, 'Silica Gel', 400, 0.10, 'Kimia', 'Gram', '-', 0.001, 'Tersedia', '2024-04-01'),
(40, 'Kapas', 500, 3.00, 'Tekstil', 'Kg', '-', 0.2, 'Tersedia', '2024-04-10'),
(41, 'Emas Serbuk', 50, 500.00, 'Logam Mulia', 'Gram', '-', 0.001, 'Tersedia', '2024-04-15'),
(42, 'Titanium', 150, 250.00, 'Logam', 'Kg', '10x10x2', 1.5, 'Tersedia', '2024-04-20'),
(43, 'Akrilik Lembaran', 400, 20.00, 'Plastik', 'Lembar', '50x50x0.3', 1.2, 'Tersedia', '2024-05-01'),
(44, 'Plastik PE', 300, 5.00, 'Plastik', 'Kg', '30x30x0.2', 1.0, 'Tersedia', '2024-05-10'),
(45, 'Serat Optik', 200, 12.00, 'Elektronik', 'Meter', '-', 0.04, 'Tersedia', '2024-05-20'),
(46, 'Nikel', 100, 150.00, 'Logam', 'Kg', '-', 1.5, 'Tersedia', '2024-06-01'),
(47, 'Gipsum', 300, 3.00, 'Bahan Bangunan', 'Kg', '60x60x0.5', 1.5, 'Tersedia', '2024-06-15'),
(48, 'Timber Kayu', 500, 40.00, 'Bahan Alam', 'Meter', '-', 5.0, 'Tersedia', '2024-06-25'),
(49, 'Zinc', 400, 8.00, 'Logam', 'Kg', '-', 0.6, 'Tersedia', '2024-07-01'),
(50, 'Magnesium', 100, 60.00, 'Logam', 'Kg', '-', 1.2, 'Tersedia', '2024-07-10');

SELECT*FROM Bahan_baku

