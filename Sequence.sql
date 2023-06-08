CREATE SEQUENCE seq_id_peminjaman
    INCREMENT BY 1
    START WITH 21
    MAXVALUE 9999999999
    NOCACHE
    NOCYCLE;

INSERT INTO peminjaman (id_peminjaman, tanggal_pinjam, tanggal_kembali, denda, id_anggota, id_pegawai, isbn)
VALUES ('BRM' || LPAD(seq_id_peminjaman.NEXTVAL, 12, '0'), TO_DATE('2023-05-17', 'YYYY-MM-DD'), TO_DATE('2023-05-24', 'YYYY-MM-DD'), 'N', 'A40852400000038', '197005012021010101', '9789790755827');

SELECT * FROM peminjaman;