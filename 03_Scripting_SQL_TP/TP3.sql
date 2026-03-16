SELECT 
LOWER(nama) AS lower_nama,
UPPER(nama) AS upper_nama,
INITCAP(nama) AS initcap_nama,
CONCAT(nama,email) AS concat_data,
LENGTH(nama) AS panjang_nama,
SUBSTR(nama,1,3) AS potong_nama,
LPAD(nama,10,'*') AS lpad_nama,
RPAD(nama,10,'*') AS rpad_nama,
INSTR(email,'@') AS posisi_at,
REPLACE(email,'gmail','yahoo') AS ganti_email
FROM mahasiswa;