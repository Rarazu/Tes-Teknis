-- Test A

-- Algoritma menghitung ipk :
-- 1. jumlahkan sks
-- 2. sks * bobot nilai (nilai huruf)
-- 3. jumlahkan semua poin 2 
-- 4. poin 3 / poin 1

SELECT mahasiswa.nim, mahasiswa.nama, 
max(nilai_angka) AS n_tertinggi,
min(nilai_angka) AS n_terendah,
round(avg(nilai_angka), 1) AS rata_rata,
count(kode_mk) AS jumlah_mk,
count(IF(nilai_huruf < 'D', 1, NULL)) AS jumlah_mk_lulus,
round(sum(CASE
WHEN nilai_huruf = 'A' THEN 4*sks
WHEN nilai_huruf = 'B' THEN 3*sks
WHEN nilai_huruf = 'C' THEN 2*sks
WHEN nilai_huruf = 'D' THEN 1*sks
ELSE 0*sks
END) / sum(sks), 2)
AS IPK
FROM nilai INNER JOIN mahasiswa
ON nilai.nim = mahasiswa.nim
GROUP BY nilai.nim;

-- Test B
SELECT kode_mk, nama_mk,
count(IF(nilai_huruf < 'C', 1, NULL)) 
AS jml_mahasiswa_yg_mendapat_A_atau_B,
CASE WHEN mahasiswa.umur IN (20,22) THEN round(avg(nilai.nilai_angka), 1)
ELSE 0 END AS rataRata_mahasiswa_berumur_lebih20_kurang22 
FROM nilai INNER JOIN mahasiswa
ON nilai.nim = mahasiswa.nim
WHERE kode_mk IN ('MKA', 'MKC')
GROUP BY nilai.kode_mk;