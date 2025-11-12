CREATE DATABASE db_penjualan_alat_elektronik
CREATE TABLE pelanggan
(
	id_pelanggan INT (50),
	nama_pelanggan VARCHAR (50),
	alamat VARCHAR (50),
	no_tlp VARCHAR (15),
	PRIMARY KEY (id_pelanggan)
);

CREATE TABLE produk
(
	id_produk INT (50),
	nama_produk VARCHAR (50),
	kategori VARCHAR (50),
	harga INT (50) ,
	stok INT (100),
	PRIMARY KEY (id_produk)
);

CREATE TABLE pegawai
(
	id_pegawai INT (50),
	nama_pegawai VARCHAR (50),
	jabatan VARCHAR (50),
	PRIMARY KEY (id_pegawai)
);
DROP TABLE produk
CREATE TABLE transaksi
(
	id_transaksi INT (50),
	tanggal DATETIME,
	id_pelanggan INT (50),
	id_pegawai INT (50),
	PRIMARY KEY (id_transaksi),
	FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan),
	FOREIGN KEY (id_pegawai) REFERENCES pegawai(id_pegawai)
);

CREATE TABLE detail_transaksi
(
	id_detail INT (50),
	id_pelanggan INT (50),
	id_produk INT (50),
	jumlah INT (50),
	PRIMARY KEY (id_detail),
	FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan),
	FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);

ALTER TABLE 
INSERT INTO pegawai VALUES
(1, 'iqbal', 'CEO'),
(2, 'Nila', 'CTO'),
(3, 'nashati', 'Maneger'),
(4, 'japar', 'Kasir'),
(5, 'siti', 'Kasir'),
(6, 'jeno', 'Kasir'),
(7, 'Sifa', 'Kasir'),
(8, 'jehyun', 'Claning Servis'),
(9, 'nisa', 'Satpam'),
(10, 'alpa', 'Satpam');

INSERT INTO pelanggan VALUES
(1, 'asep', 'kalisumur', '088574151515'),
(2, 'firli', 'kalwadas', '08579262946'),
(3, 'pipi', 'mijen', '0885154815'),
(4, 'napi', 'purwokerto', '08841254154'),
(5, 'rohman', 'laren', '08845115484'),
(6, 'ahmad', 'semampir', '0885412541'),
(7, 'danu', 'sumampir utara', '08852154110'),
(8, 'pahar', 'baturaden', '085251852'),
(9, 'jupleng', 'sokaraja', '0852585513'),
(10, 'danang', 'sokaraja utara', '085285251513');

INSERT INTO produk VALUES
(1, 'Asus Tuf Gaming', 'Laptop', 13000000, 153),
(2, 'Asus Tuf Gaming A15', 'Laptop', 11000000, 100),
(3, 'Asus Tuf Gaming 15', 'Laptop', 10000000, 95),
(4, 'Temper Glass', 'Aksesoris', 100000, 102),
(5, 'Casing', 'Aksesoris', 20000, 52),
(6, 'Asus Tuf Gaming', 'Laptop', 13000000, 158),
(7, 'Asus Vivobook', 'Laptop', 11500000, 85),
(8, 'Iphon 17 pro max', 'Handphone', 13000000, 200),
(9, 'Samsung', 'Handphone', 5000000, 152),
(10, 'Asus Rog', 'Laptop', 22000000, 150);

INSERT INTO transaksi VALUES
(1, NOW(), 1, 1),
(2, NOW(), 2, 2),
(3, NOW(), 3, 3),
(4, NOW(), 4, 4),
(5, NOW(), 5, 5),
(6, NOW(), 6, 6),
(7, NOW(), 7, 7),
(8, NOW(), 8, 8),
(9, NOW(), 9, 9),
(10, NOW(), 10, 10);

INSERT INTO detail_transaksi VALUES
(1, 1, 1, 90),
(2, 2, 2, 65),
(3, 3, 3, 95),
(4, 4, 4, 99),
(5, 5, 5, 68),
(6, 6, 6, 80),
(7, 7, 7, 75),
(8, 8, 8, 80),
(9, 9, 9, 70),
(10, 10, 10, 100);

SELECT COUNT(*) AS harga
FROM produk;
SELECT AVG(harga) AS rata_rata_harga
FROM produk;

SELECT MIN(harga) AS harga_terendah
FROM produk;

SELECT MAX(harga) AS harga_tertinggi
FROM produk;
'a%' = menampilkan DATA cust yang diawali huruf a
'%a' = menampilkan DATA cust yang dibelakang huruf a
'%i%' = menampilkan semua DATA yang ada huruf i nya
'__a%' = menampilkan DATA dengan  huruf ke 3 dengan abjad a
'_a%' = menampilkan DATA dengan  huruf ke 2 dengan abjad a


SELECT * FROM pelanggan AS nama WHERE nama_pelanggan LIKE 'a%'
SELECT * FROM pelanggan AS nama WHERE nama_pelanggan LIKE '%a'
SELECT * FROM pelanggan AS nama WHERE nama_pelanggan LIKE '%i%'
SELECT * FROM pelanggan AS nama WHERE nama_pelanggan LIKE '__h%'
SELECT * FROM pelanggan WHERE nama_pelanggan LIKE 'a%'

