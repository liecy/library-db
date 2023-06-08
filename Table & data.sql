CREATE TABLE kategori 
(
    id_kategori CHAR(5) CONSTRAINT kategori_id_ktg_pk PRIMARY KEY,
    nama VARCHAR2(50) CONSTRAINT kategori_nama_nn NOT NULL
);

INSERT INTO kategori (id_kategori, nama) VALUES ('BI001', 'Biografi');
INSERT INTO kategori (id_kategori, nama) VALUES ('SO002', 'Sosial');
INSERT INTO kategori (id_kategori, nama) VALUES ('AI003', 'Keagamaan');
INSERT INTO kategori (id_kategori, nama) VALUES ('CO004', 'Pemograman');
INSERT INTO kategori (id_kategori, nama) VALUES ('FI005', 'Fiksi');
INSERT INTO kategori (id_kategori, nama) VALUES ('NF006', 'Nonfiksi');
INSERT INTO kategori (id_kategori, nama) VALUES ('SE007', 'Sejarah');
INSERT INTO kategori (id_kategori, nama) VALUES ('SK008', 'Sastra Klasik');
INSERT INTO kategori (id_kategori, nama) VALUES ('PU009', 'Puisi');
INSERT INTO kategori (id_kategori, nama) VALUES ('IP010', 'Ilmu Pengetahuan');
INSERT INTO kategori (id_kategori, nama) VALUES ('TE011', 'Teknologi');
INSERT INTO kategori (id_kategori, nama) VALUES ('SA012', 'Sains');
INSERT INTO kategori (id_kategori, nama) VALUES ('MA013', 'Matematika');
INSERT INTO kategori (id_kategori, nama) VALUES ('SM014', 'Seni dan Musik');
INSERT INTO kategori (id_kategori, nama) VALUES ('PD015', 'Pengembangan Diri');
INSERT INTO kategori (id_kategori, nama) VALUES ('MK016', 'Makanan');
INSERT INTO kategori (id_kategori, nama) VALUES ('OL017', 'Olahraga');
INSERT INTO kategori (id_kategori, nama) VALUES ('PE018', 'Pendidikan');
INSERT INTO kategori (id_kategori, nama) VALUES ('BM019', 'Bisnis dan Manajemen');
INSERT INTO kategori (id_kategori, nama) VALUES ('KS020', 'Kesehatan');

CREATE TABLE rak 
(
    id_rak CHAR(4) CONSTRAINT rak_id_rak_pk PRIMARY KEY
);

INSERT INTO rak (id_rak) VALUES ('A001');
INSERT INTO rak (id_rak) VALUES ('A002');
INSERT INTO rak (id_rak) VALUES ('A003');
INSERT INTO rak (id_rak) VALUES ('A004');
INSERT INTO rak (id_rak) VALUES ('A005');
INSERT INTO rak (id_rak) VALUES ('A006');
INSERT INTO rak (id_rak) VALUES ('B001');
INSERT INTO rak (id_rak) VALUES ('B002');
INSERT INTO rak (id_rak) VALUES ('B003');
INSERT INTO rak (id_rak) VALUES ('B004');
INSERT INTO rak (id_rak) VALUES ('B005');
INSERT INTO rak (id_rak) VALUES ('B006');
INSERT INTO rak (id_rak) VALUES ('C001');
INSERT INTO rak (id_rak) VALUES ('C002');
INSERT INTO rak (id_rak) VALUES ('C003');
INSERT INTO rak (id_rak) VALUES ('C004');
INSERT INTO rak (id_rak) VALUES ('C005');
INSERT INTO rak (id_rak) VALUES ('C006');
INSERT INTO rak (id_rak) VALUES ('C007');
INSERT INTO rak (id_rak) VALUES ('C008');

CREATE TABLE buku
(
    isbn CHAR(13) CONSTRAINT buku_isbn_pk PRIMARY KEY,
    judul VARCHAR2(100) CONSTRAINT buku_judul_nn NOT NULL,
    jumlah NUMBER,
    penulis VARCHAR2(100) CONSTRAINT buku_penulis_nn NOT NULL,
    penerbit VARCHAR2(100) CONSTRAINT buku_penerbit_nn NOT NULL,
    tahun CHAR(4) CONSTRAINT buku_tahun_nn NOT NULL,
    id_kategori CHAR(5) CONSTRAINT buku_id_ktg_fk REFERENCES kategori(id_kategori),
    id_rak CHAR(4) CONSTRAINT buku_id_rak_fk REFERENCES rak(id_rak)
);

INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9786230012501', 'Panduan Kilat Pemrograman PHP, Langsung Bisa', '2', 'Arista Prasety o Adi', 'Elex Media KomputinDO', '2020', 'CO004', 'A001');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9786024246952', 'Laut Bercerita', '1', 'Leila S. Chudori', 'Kepustakaan Populer Gramdeia', '2017', 'FI005', 'B006');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9786230024148', 'Pemrograman Sql Server 2019', '5', 'Ario Suryo Kusumo', 'Alex Media Komputindo', '2021', 'CO004', 'A001');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789794910863', 'Pengupahan Dalam Perspektif Hukum Ketenagakerjaan Indonesia', '1', 'Abdul Khakim ', 'Citra Aditya Bakti', '2016', 'IP010', 'C004');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9786020640945', 'Memilih Jernih dan Mengalir', '1', 'Rochmad Widodo', 'Gramedia Pustaka Utama', '2020', 'BI001', 'C002');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789790754103', 'Panduan Praktis Perancangan Jembatan', '2', 'Bambang Sugeng Subagio', 'Erlangga', '2017', 'TE011', 'B003');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789790751577', 'Teknik Dasar Listrik dan Elektronika', '3', 'Ir. Sutikno Slamet', 'Erlangga', '2016', 'TE011', 'B003');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789797693425', 'Teknologi Beton: Dari Bahan Hingga Struktur', '1', 'Djumaini', 'Rajagrafindo Persada', '2018', 'TE011', 'B003');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789790815002', 'Rekayasa Perangkat Lunak Terstruktur Menggunakan C++', '1', 'Kalamullah Ramli', 'Informatika', '2019', 'CO004', 'A001');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9786024422472', 'Teknik Pengolahan Air Limbah', '1', 'Yusuf Latief', 'Pustaka Pelajar', '2018', 'TE011', 'B004');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789790754905', 'Konstruksi Bangunan Gedung', '1', 'Nawi B. Huq', 'Erlangga', '2017', 'TE011', 'B004');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789792951834', 'Dasar-Dasar Teknik Sipil', '2', 'Ahmad Yani', 'Andi Publisher', '2014', 'TE011', 'B003');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789790755919', 'Teknik Jalan Raya', '1', 'Sitorus Tarigan', 'Erlangga', '2018', 'TE011', 'B004');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789790755827', 'Mekanika Fluida dan Hidrolika', '3', 'Subekti Bambang M.', 'Erlangga', '2016', 'TE011', 'B003');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789790814647', 'Pemrograman Web dengan PHP dan MySQL', '1', 'Abdul Kadir', 'Informatika', '2018', 'CO004', 'A001');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789790756114', 'Teknologi Konstruksi Bangunan Tinggi', '1', 'Risman Marah', 'Erlangga', '2019', 'TE011', 'B005');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789790815682', 'Teknik Pemodelan Sistem', '2', 'Indrajani', 'Informatika', '2019', 'TE011', 'B004');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789790751539', 'Teknik Bangunan Gedung Jilid 1', '2', 'Ir. Sigit Sudjatmiko, M.Sc.', 'Erlangga', '2018', 'TE011', 'B005');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789790756077', 'Teknik Pengelasan Logam', '1', 'Arifin Saleh', 'Erlangga', '2018', 'TE011', 'B004');
INSERT INTO buku (isbn, judul, jumlah, penulis, penerbit, tahun, id_kategori, id_rak) VALUES ('9789790756176', 'Teknik Sumber Daya Air', '1', 'Djoko Legono', 'Erlangga', '2018', 'TE011', 'B005');


CREATE TABLE departemen
(
    id_departemen CHAR(5) CONSTRAINT departemen_id_dpt_pk PRIMARY KEY,
    nama_departemen VARCHAR2(100) CONSTRAINT departemen_nama_nn NOT NULL
);

INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('001KA', 'Koleksi dan Akuisisi');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('002LR', 'Layanan Referensi');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('003PP', 'Pelayanan Perpustakaan');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('004KP', 'Katalogisasi dan Pengindeksan');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('005PR', 'Pemeliharaan dan Restorasi');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('006AK', 'Arsip dan Kearsipan');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('007PK', 'Pengembangan Koleksi');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('008LI', 'Literasi Informasi');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('009TI', 'Teknologi Informasi Perpustakaan');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('010LP', 'Layanan Peminjaman');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('011PS', 'Penelusuran Sumber Informasi');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('012PD', 'Pengelolaan Perpustakaan Digital');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('013AR', 'Pelayanan Anak dan Remaja');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('014PK', 'Layanan Perpustakaan Khusus');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('015JP', 'Pengelolaan Jurnal dan Publikasi Ilmiah');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('016PP', 'Pendidikan dan Pelatihan Pengguna');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('017PE', 'Penilaian dan Evaluasi Perpustakaan');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('018LO', 'Pengembangan Layanan Online');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('019HP', 'Hubungan Masyarakat Perpustakaan');
INSERT INTO departemen (id_departemen, nama_departemen) VALUES ('020AP', 'Pengelolaan Acara dan Kegiatan Perpustakaan');

CREATE TABLE pegawai
(
    id_pegawai CHAR(18) CONSTRAINT pegawai_id_pgw_pk PRIMARY KEY,
    nama_depan VARCHAR2(15) CONSTRAINT pegawai_nama_dpn_nn NOT NULL,
    nama_belakang VARCHAR2(15),
    alamat VARCHAR2(100) CONSTRAINT pegawai_alamat_nn NOT NULL,
    email VARCHAR2(50) CONSTRAINT pegawai_email_nn NOT NULL,
    id_departemen CHAR(5) CONSTRAINT pegawai_id_dpt_fk REFERENCES departemen(id_departemen),
    CONSTRAINT pegawai_email_uk UNIQUE (email)
);

INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('197005012021010101', 'Ferdy', 'Sambo', 'Jl. Sudirman No. 123, Jakarta Pusat', 'ferdy.sambo@gmail.com', '003PP');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('198010102021020202', 'Ronaldo', 'Wati', 'Jl. Ahmad Yani No. 456, Bandung', 'ronaldo.wati@gmail.com', '003PP');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('198506302021030303', 'Akbar', 'Tono', 'Jl. Pemuda No. 789, Surabaya', 'akbar.tono@gmail.com', '001KA');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('199112222021040404', 'Ansel', 'Putri', 'Jl. Kuta Raya No. 10, Denpasar, Bali', 'ansel.putri@gmail.com', '002LR');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('199212252021050505', 'Urip', 'Widodo', 'Jl. Gatot Subroto No. 111, Medan', 'urip.widodo@gmail.com', '009TI');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('200002292021060606', 'Sambo', 'Lubis', 'Jl. Diponegoro No. 222, Semarang', 'sambo.lubis@gmail.com', '001KA');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('200107152021070707', 'Bean', 'Santoso', 'Jl. Imam Bonjol No. 333, Yogyakarta', 'bean.santoso@gmail.com', '019HP');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('200212022021080808', 'Jono', 'Inglish', 'Jl. Thamrin No. 444, Jakarta Selatan', 'jono.inglish@gmail.com', '010LP');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('200307172021090909', 'Agus', 'Putra', 'Jl. Sudirman No. 555, Makassar', 'agus.putra@gmail.com', '004KP');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('200408012021101010', 'Putri', 'Watson', 'Jl. Malioboro No. 666, Yogyakarta', 'putri.watson@gmail.com', '008LI');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('200506242021111111', 'Selena', 'Gomez', 'Jl. Merdeka No. 777, Bandung', 'selena.gomez@gmail.com', '007PK');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('200610312021121212', 'Niki', 'Putri', 'Jl. Asia Afrika No. 888, Jakarta Pusat', 'niki.putri@gmail.com', '005PR');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('200712122021131313', 'Sri', 'Mulyani', 'Jl. Panglima Polim No. 999, Jakarta Selatan', 'sri.mulyani@gmail.com', '011PS');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('200810102021141414', 'Ani', 'Sartika', 'Jl. Ahmad Dahlan No. 1010, Surabaya', 'ani.sartika@gmail.com', '005PR');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('200905022021151515', 'Renaldi', 'Efendi', 'Jl. Veteran No. 1111, Medan', 'renaldi.efendi@gmail.com', '015JP');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('201006122021161616', 'Tom', 'Holland', 'Jl. Dago No. 1212, Bandung', 'tom.holland@gmail.com', '020AP');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('201112052021171717', 'Jeremy', 'Wibowo', 'Jl. M.H. Thamrin No. 1313, Jakarta Pusat', 'jeremy.wibowo@gmail.com', '016PP');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('201211202021181818', 'Gus', 'Wandi', 'Jl. Diponegoro No. 1414, Surabaya', 'gus.wandi@gmail.com', '018LO');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('201312312021191919', 'Muhammad', 'Messi', 'Jl. Malioboro No. 1515, Yogyakarta', 'muhammad.messi@gmail.com', '006AK');
INSERT INTO pegawai (id_pegawai, nama_depan, nama_belakang, alamat, email, id_departemen) VALUES ('201401012021202020', 'Danilla', 'Riyadi', 'Jl. Sudirman No. 1616, Jakarta Selatan', 'danilla.riyadi@gmail.com', '016PP');

CREATE TABLE pengunjung
(
    nomor_pengunjung NUMBER CONSTRAINT pengunjung_nomor_peg_pk PRIMARY KEY,
    nama_depan VARCHAR2(50) CONSTRAINT pengunjung_nama_depan_nn NOT NULL,
    nama_belakang VARCHAR2(50),
    alamat VARCHAR2(100) CONSTRAINT pengunjung_alamat_nn NOT NULL,
    pekerjaan VARCHAR2(100) CONSTRAINT pengunjung_pekerjaan_nn NOT NULL,
    tanggal DATE CONSTRAINT pengunjung_tanggal_nn NOT NULL
);

INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('1', 'Budi', 'Santoso', 'Jl. Merdeka No. 10, Jakarta Barat', 'Guru', TO_DATE('2023-03-07', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('2', 'Ika', NULL, 'Jl. Mawar Indah No. 5, Surabaya', 'Mahasiswa', TO_DATE('2023-03-12', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('3', 'Ferdy', 'Sambo', 'Jl. Anggrek Raya No. 15, Bandung', 'Polisi', TO_DATE('2023-03-20', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('4', 'Retno', 'Wulandari', 'Jl. Flamboyan Blok C2, Medan', 'Insinyur', TO_DATE('2023-03-25', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('5', 'Ahmad', 'Ibrahim', 'Jl. Bunga Sakura No. 8, Yogyakarta', 'Wiraswasta', TO_DATE('2023-04-02', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('6', 'Siti', 'Rahmawati', 'Jl. Melati Sari No. 20, Semarang', 'Pensiunan', TO_DATE('2023-04-08', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('7', 'Adi', 'Nugroho', 'Jl. Kenanga Indah No. 3, Makassar', 'Akuntan', TO_DATE('2023-04-15', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('8', 'Putri', 'Indahsari', 'Jl. Dahlia Utama No. 12, Palembang', 'Penulis', TO_DATE('2023-04-23', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('9', 'Dedi', NULL, 'Jl. Teratai Merah No. 7, Denpasar', 'Arsitek', TO_DATE('2023-05-01', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('10', 'Fitriani', 'Kusuma', 'Jl. Seroja Putih No. 18, Balikpapan', 'Polisi', TO_DATE('2023-05-06', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('11', 'Arif', 'Hidayat', 'Jl. Kamboja Selatan No. 6, Banjarmasin', 'Perawat', TO_DATE('2023-05-13', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('12', 'Siti', 'Hartati', 'Jl. Cempaka Hijau No. 9, Padang', 'Pengacara', TO_DATE('2023-05-18', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('13', 'Rudi', 'Setiawan', 'Jl. Mawar Ungu No. 14, Samarinda', 'Petani', TO_DATE('2023-03-09', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('14', 'Rina', NULL, 'Jl. Flamboyan Indah No. 4, Malang', 'Fotografer', TO_DATE('2023-03-14', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('15', 'Hendra', 'Pratama', 'Jl. Melati Putih No. 11, Surakarta', 'Karyawan swasta', TO_DATE('2023-03-22','YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('16', 'Ani', 'Permata', 'Jl. Anggrek Merah No. 16, Pekanbaru', 'Pedagang', TO_DATE('2023-03-27', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('17', 'Dwi', 'Nugraha', 'Jl. Bunga Matahari No. 13, Pontianak', 'Pekerja sosial', TO_DATE('2023-04-04', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('18', 'Siti', 'Rahayu', 'Jl. Kenanga Biru No. 2, Manado', 'Ilmuwan', TO_DATE('2023-04-10', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('19', 'Wahyu', 'Setiawan', 'Jl. Teratai Putih No. 17, Ambon', 'Seniman', TO_DATE('2023-04-17', 'YYYY-MM-DD'));
INSERT INTO pengunjung (nomor_pengunjung, nama_depan, nama_belakang, alamat, pekerjaan, tanggal) VALUES ('20', 'Maya', 'Puspitasari', 'Jl. Seroja Merah No. 1, Jayapura', 'Pilot', TO_DATE('2023-04-25', 'YYYY-MM-DD'));

CREATE TABLE anggota
(
    id_anggota CHAR(15) CONSTRAINT anggota_id_agt_pk PRIMARY KEY,
    tanggal_daftar DATE CONSTRAINT anggota_tanggal_daftar_nn NOT NULL,
    nama_depan VARCHAR2(50) CONSTRAINT anggota_nama_depan_nn NOT NULL,
    nama_belakang VARCHAR2(50),
    alamat VARCHAR(100)  CONSTRAINT anggota_alamat_nn NOT NULL,
    pekerjaan VARCHAR2(100) CONSTRAINT anggota_pekerjaan_nn NOT NULL
);

INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('A40852400000038', TO_DATE('2011-07-20', 'YYYY-MM-DD'), 'Andi', 'Prasetyo', 'Jl. Merdeka No. 10, Jakarta Barat', 'Guru');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('A70237300000169', TO_DATE('2015-02-03', 'YYYY-MM-DD'), 'Dian', 'Putri', 'Jl. Mawar Indah No. 5, Surabaya', 'Dokter');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('A40952100000387', TO_DATE('2017-11-11', 'YYYY-MM-DD'), 'Rizky', 'Maulana', 'Jl. Anggrek Raya No. 15, Bandung', 'Insinyur');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('A40852400000089', TO_DATE('2013-09-28', 'YYYY-MM-DD'), 'Fitria', 'Sari', 'Jl. Flamboyan Blok C2, Medan', 'Pengacara');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('B70682300000987', TO_DATE('2022-06-15', 'YYYY-MM-DD'), 'Fauzan', 'Nugraha', 'Jl. Bunga Sakura No. 8, Yogyakarta', 'Akuntan');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('C90379400000788', TO_DATE('2018-12-07', 'YYYY-MM-DD'), 'Siti', 'Indriani', 'Jl. Melati Sari No. 20, Semarang', 'Penulis');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('A40852400000090', TO_DATE('2012-04-30', 'YYYY-MM-DD'), 'Bayu', 'Kurniawan', 'Jl. Kenanga Indah No. 3, Makassar', 'Arsitek');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('A70237300000736', TO_DATE('2020-08-22', 'YYYY-MM-DD'), 'Nita', 'Puspitasari', 'Jl. Dahlia Utama No. 12, Palembang', 'Polisi');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('A40952100000803', TO_DATE('2019-03-14', 'YYYY-MM-DD'), 'Rizky', 'Ramadhan', 'Jl. Teratai Merah No. 7, Denpasar', 'Fotografer');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('A40852400000898', TO_DATE('2021-10-05', 'YYYY-MM-DD'), 'Dewi', 'Permata', 'Jl. Seroja Putih No. 18, Balikpapan', 'Pilot');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('B70682300000104', TO_DATE('2014-01-12', 'YYYY-MM-DD'), 'Rizaldi', 'Hartono', 'Jl. Kamboja Selatan No. 6, Banjarmasin', 'Seniman');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('C90379400001024', TO_DATE('2023-02-18', 'YYYY-MM-DD'), 'Anisa', 'Wulandari', 'Jl. Cempaka Hijau No. 9, Padang', 'Perawat');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('A40852400000195', TO_DATE('2016-05-08', 'YYYY-MM-DD'), 'Aldi', 'Rahman', 'Jl. Mawar Ungu No. 14, Samarinda', 'Petani');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('A70237300000010', TO_DATE('2010-11-23', 'YYYY-MM-DD'), 'Sari', 'Fitriani', 'Jl. Flamboyan Indah No. 4, Malang', 'Ilmuwan');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('A40952100000968', TO_DATE('2022-03-01', 'YYYY-MM-DD'), 'Irfan', 'Setiawan', 'Jl. Melati Putih No. 11, Surakarta', 'Karyawan swasta');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('A40852400000236', TO_DATE('2017-08-17', 'YYYY-MM-DD'), 'Maya', 'Pratiwi', 'Jl. Anggrek Merah No. 16, Pekanbaru', 'Pekerja sosial');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('B70682300001077', TO_DATE('2023-05-10', 'YYYY-MM-DD'), 'Yusuf', 'Hidayat', 'Jl. Bunga Matahari No. 13, Pontianak', 'Pedagang');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('C90379400000188', TO_DATE('2015-06-26', 'YYYY-MM-DD'), 'Ayu', 'Suryani', 'Jl. Kenanga Biru No. 2, Manado', 'Wiraswasta');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('A40852400000053', TO_DATE('2011-12-09', 'YYYY-MM-DD'), 'Rizal', 'Santoso', 'Jl. Teratai Putih No. 17, Ambon', 'Mahasiswa');
INSERT INTO anggota (id_anggota, tanggal_daftar, nama_depan, nama_belakang, alamat, pekerjaan) VALUES ('A70237300001008', TO_DATE('2023-01-26', 'YYYY-MM-DD'), 'Eka', 'Indahsari', 'Jl. Seroja Merah No. 1, Jayapura', 'Pensiunan');

CREATE TABLE peminjaman
(
    id_peminjaman CHAR(15) CONSTRAINT peminjaman_id_pjm_pk PRIMARY KEY,
    tanggal_pinjam DATE CONSTRAINT peminjaman_tgl_pjm_nn NOT NULL,
    tanggal_kembali DATE,
    denda CHAR(1),
    id_anggota CHAR(15) CONSTRAINT peminjaman_id_anggota_fk REFERENCES anggota(id_anggota),
    id_pegawai CHAR(18) CONSTRAINT peminjaman_id_pgw_fk REFERENCES pegawai(id_pegawai),
    isbn CHAR(13) CONSTRAINT peminjaman_isbn_fk REFERENCES buku(isbn)
);

INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000001', to_date('05/10/2022', 'DD/MM/YYYY'), to_date('12/10/2022', 'DD/MM/YYYY'), 'N', 'A40852400000038', '197005012021010101', '9789790755919');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000002', to_date('06/10/2022', 'DD/MM/YYYY'), to_date('14/10/2022', 'DD/MM/YYYY'), 'Y', 'A70237300000169', '198010102021020202', '9789790755827');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000003', to_date('07/10/2022', 'DD/MM/YYYY'), to_date('14/10/2022', 'DD/MM/YYYY'), 'N', 'A40952100000387', '198010102021020202', '9789790814647');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000004', to_date('08/10/2022', 'DD/MM/YYYY'), to_date('15/10/2022', 'DD/MM/YYYY'), 'N', 'A40852400000089', '198010102021020202', '9789790756114');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000005', to_date('09/10/2022', 'DD/MM/YYYY'), to_date('17/10/2022', 'DD/MM/YYYY'), 'Y', 'B70682300000987', '197005012021010101', '9789790815682');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000006', to_date('10/10/2022', 'DD/MM/YYYY'), to_date('17/10/2022', 'DD/MM/YYYY'), 'N', 'C90379400000788', '198010102021020202', '9789790751539');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000007', to_date('11/10/2022', 'DD/MM/YYYY'), to_date('20/10/2022', 'DD/MM/YYYY'), 'Y', 'A40852400000090', '197005012021010101', '9789790756077');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000008', to_date('12/10/2022', 'DD/MM/YYYY'), to_date('21/10/2022', 'DD/MM/YYYY'), 'Y', 'A70237300000736', '197005012021010101', '9789790756176');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000009', to_date('13/10/2022', 'DD/MM/YYYY'), to_date('19/10/2022', 'DD/MM/YYYY'), 'N', 'A40952100000803', '198010102021020202', '9786230012501');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000010', to_date('14/10/2022', 'DD/MM/YYYY'), to_date('21/10/2022', 'DD/MM/YYYY'), 'N', 'A40852400000898', '197005012021010101', '9786024246952');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000011', to_date('15/10/2022', 'DD/MM/YYYY'), to_date('22/10/2022', 'DD/MM/YYYY'), 'N', 'B70682300000104', '197005012021010101', '9786230024148');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000012', to_date('16/10/2022', 'DD/MM/YYYY'), to_date('28/10/2022', 'DD/MM/YYYY'), 'N', 'C90379400001024', '198010102021020202', '9789794910863');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000013', to_date('17/10/2022', 'DD/MM/YYYY'), to_date('26/10/2022', 'DD/MM/YYYY'), 'N', 'A40852400000195', '197005012021010101', '9786020640945');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000014', to_date('18/10/2022', 'DD/MM/YYYY'), to_date('25/10/2022', 'DD/MM/YYYY'), 'N', 'A70237300000010', '197005012021010101', '9789790754103');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000015', to_date('19/10/2022', 'DD/MM/YYYY'), to_date('26/10/2022', 'DD/MM/YYYY'), 'Y', 'A40952100000968', '198010102021020202', '9789790751577');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000016', to_date('20/10/2022', 'DD/MM/YYYY'), to_date('27/10/2022', 'DD/MM/YYYY'), 'N', 'A40852400000236', '198010102021020202', '9789797693425');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000017', to_date('21/10/2022', 'DD/MM/YYYY'), to_date('29/10/2022', 'DD/MM/YYYY'), 'Y', 'B70682300001077', '198010102021020202', '9789790815002');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000018', to_date('22/10/2022', 'DD/MM/YYYY'), to_date('29/10/2022', 'DD/MM/YYYY'), 'N', 'C90379400000188', '198010102021020202', '9786024422472');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000019', to_date('23/10/2022', 'DD/MM/YYYY'), to_date('31/10/2022', 'DD/MM/YYYY'), 'N', 'A40852400000053', '197005012021010101', '9789790754905');
INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn) VALUES ('BRM000000000020', to_date('24/10/2022', 'DD/MM/YYYY'), to_date('31/10/2022', 'DD/MM/YYYY'), 'N', 'A70237300001008', '198010102021020202', '9789792951834');
