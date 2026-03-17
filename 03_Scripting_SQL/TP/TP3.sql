CREATE TABLE mahasiswa (
    id NUMBER PRIMARY KEY,
    nama VARCHAR2(100),
    tempat_lahir VARCHAR2(50),
    tanggal_lahir DATE,
    nomor_hp VARCHAR2(15),
    email VARCHAR2(100),
    tinggi_badan NUMBER,
    berat_badan NUMBER
);

INSERT INTO mahasiswa VALUES (1, 'Budi Santoso', 'Jakarta', TO_DATE('15-05-2002', 'DD-MM-YYYY'), '081234567890', 'budi@mail.com', 170.5, 65);
INSERT INTO mahasiswa VALUES (2, 'Ani Wijaya', 'Bandung', TO_DATE('22-08-2003', 'DD-MM-YYYY'), '081234567891', 'ani@mail.com', 160.0, 50);
INSERT INTO mahasiswa VALUES (3, 'Citra Lestari', 'Surabaya', TO_DATE('10-12-2001', 'DD-MM-YYYY'), '081234567892', 'citra@mail.com', 158.2, 48);
INSERT INTO mahasiswa VALUES (4, 'Dedi Kurniawan', 'Medan', TO_DATE('30-01-2002', 'DD-MM-YYYY'), '081234567893', 'dedi@mail.com', 175.0, 70);
INSERT INTO mahasiswa VALUES (5, 'Eka Putri', 'Semarang', TO_DATE('14-03-2003', 'DD-MM-YYYY'), '081234567894', 'eka@mail.com', 162.5, 55);
INSERT INTO mahasiswa VALUES (6, 'Fajar Ramadhan', 'Yogyakarta', TO_DATE('05-11-2002', 'DD-MM-YYYY'), '081234567895', 'fajar@mail.com', 168.0, 60);
INSERT INTO mahasiswa VALUES (7, 'Gita Permata', 'Makassar', TO_DATE('19-07-2004', 'DD-MM-YYYY'), '081234567896', 'gita@mail.com', 155.0, 45);
INSERT INTO mahasiswa VALUES (8, 'Hadi Saputra', 'Palembang', TO_DATE('25-09-2001', 'DD-MM-YYYY'), '081234567897', 'hadi@mail.com', 180.2, 80);
INSERT INTO mahasiswa VALUES (9, 'Indah Sari', 'Malang', TO_DATE('02-06-2002', 'DD-MM-YYYY'), '081234567898', 'indah@mail.com', 165.0, 52);
INSERT INTO mahasiswa VALUES (10, 'Joko Susilo', 'Solo', TO_DATE('12-10-2003', 'DD-MM-YYYY'), '081234567899', 'joko@mail.com', 172.0, 68);
INSERT INTO mahasiswa VALUES (11, 'Kiki Amelia', 'Bogor', TO_DATE('28-04-2002', 'DD-MM-YYYY'), '085612345670', 'kiki@mail.com', 159.5, 49);
INSERT INTO mahasiswa VALUES (12, 'Lutfi Hakim', 'Denpasar', TO_DATE('15-02-2001', 'DD-MM-YYYY'), '085612345671', 'lutfi@mail.com', 178.0, 75);
INSERT INTO mahasiswa VALUES (13, 'Maya Sofia', 'Lombok', TO_DATE('30-12-2003', 'DD-MM-YYYY'), '085612345672', 'maya@mail.com', 161.0, 54);
INSERT INTO mahasiswa VALUES (14, 'Nanda Pratama', 'Padang', TO_DATE('08-08-2002', 'DD-MM-YYYY'), '085612345673', 'nanda@mail.com', 173.5, 66);
INSERT INTO mahasiswa VALUES (15, 'Olivia Rani', 'Pontianak', TO_DATE('20-01-2004', 'DD-MM-YYYY'), '085612345674', 'olivia@mail.com', 164.0, 53);

SELECT 
    LOWER(nama) AS kecil, UPPER(nama) AS BESAR, INITCAP(tempat_lahir) AS Kota,
    CONCAT(nama, ' - Mhs') AS Gabung, LENGTH(nama) AS Pjg, SUBSTR(nama,1,3) AS Sub,
    LPAD(tinggi_badan, 5, '*') AS Lpad, RPAD(berat_badan, 5, '#') AS Rpad,
    INSTR(email, '@') AS Posisi_At, REPLACE(email, 'mail.com', 'id') AS Ganti
FROM mahasiswa;

SELECT 
    nama,
    TO_CHAR(tanggal_lahir, 'DD-MON-YYYY HH24:MI:SS') AS Full_Date,
    ADD_MONTHS(tanggal_lahir, 6) AS Plus_6_Bln,
    SYSDATE AS Skrg,
    LAST_DAY(tanggal_lahir) AS Akhir_Bln,
    NEXT_DAY(tanggal_lahir, 'MONDAY') AS Next_Mon,
    MONTHS_BETWEEN(SYSDATE, tanggal_lahir) AS Selisih,
    ROUND(tanggal_lahir, 'YEAR') AS Bulat_Thn
FROM mahasiswa;

SELECT 
    TO_CHAR(tinggi_badan, '999.99') AS Tinggi_Char,
    TO_CHAR(tanggal_lahir, 'Day, DD Month YYYY') AS Tgl_Char,
    TO_NUMBER('100') + berat_badan AS Tambah_Angka,
    TO_DATE('2023-12-31', 'YYYY-MM-DD') AS Ke_Tgl
FROM mahasiswa;

SELECT 
    nama, berat_badan,
    ABS(berat_badan - 100) AS Abs_Val,
    MOD(id, 2) AS Sisa_Bagi,
    FLOOR(tinggi_badan) AS Bawah,
    CEIL(tinggi_badan) AS Atas,
    POWER(id, 2) AS Kuadrat,
    ROUND(tinggi_badan, 0) AS Bulat
FROM mahasiswa;