-- create table mahasiswa
create table mahasiswa(
    nim varchar (20),
    nama varchar (20),
    alamat varchar (20),
    jenis_kelamin ENUM('L','P'),
    umur varchar (20),
    no_telp varchar (20),
    primary key(nim)
);

insert into mahasiswa values
("10001", "John", "Medokan", "L", "20", "0987654321"),
("10002", "Agnes", "Tandes", "P", "21", "0987654322"),
("10003", "Monica", "Rungkut", "P", "20", "0987654323"),
("10004", "Sherlock", "Lontar", "L", "22", "0987654324"),
("10005", "Homles", "Ngagel", "L", "23", "0987654325"),
("10006", "Watson", "Nginden", "L", "21", "0987654326"),
("10007", "Irena", "Benowo", "P", "23", "0987654327");

create table nilai(
    nim varchar(20),
    kode_mk varchar(20),
    nama_mk varchar(20),
    sks smallint,
    nilai_angka smallint,
    nilai_huruf ENUM('A', 'B', 'C', 'D', 'E')
);

insert into nilai values
("10001", "MKA", "Matematika", 2, 89, "A"),
("10001", "MKB", "Biologi", 3, 75, "B"),
("10001", "MKC", "Fisika", 4, 20, "E"),
("10002", "MKB", "Biologi", 3, 43, "D"),
("10002", "MKA", "Matematika", 2, 66, "C");