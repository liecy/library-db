CREATE OR REPLACE VIEW view_buku_info AS
SELECT b.isbn, b.judul, b.jumlah, b.penulis, b.penerbit, b.tahun, k.nama AS kategori, r.id_rak
FROM buku b
JOIN kategori k ON b.id_kategori = k.id_kategori
JOIN rak r ON b.id_rak = r.id_rak;

CREATE OR REPLACE VIEW view_pegawai_info AS
SELECT p.id_pegawai, p.nama_depan, p.nama_belakang, p.alamat, p.email, d.nama_departemen
FROM pegawai p
JOIN departemen d ON p.id_departemen = d.id_departemen;

CREATE OR REPLACE VIEW view_pengunjung_info AS
SELECT nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal
FROM pengunjung;

CREATE OR REPLACE VIEW view_anggota_info AS
SELECT id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan
FROM anggota;

SELECT * FROM view_buku_info;
SELECT * FROM view_pegawai_info;
SELECT * FROM view_pengunjung_info;
SELECT * FROM view_anggota_info;