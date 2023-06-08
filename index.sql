CREATE INDEX idx_peminjaman ON peminjaman(id_peminjaman);

CREATE INDEX idx_buku ON buku(isbn);

CREATE INDEX idx_pegawai ON pegawai(id_pegawai);

SELECT index_name, table_name, column_name
FROM all_ind_columns
WHERE TABLE_NAME LIKE 'PEMINJAMAN' OR TABLE_NAME LIKE 'BUKU' OR TABLE_NAME LIKE 'PEGAWAI';