use NHOM_10_Final;

CREATE TABLE NhanVien(
	-- thuoc tinh
	ID_nhan_vien VARCHAR(12) not null,
	Ten_nhan_vien VARCHAR(35) not null,
	Ngay_sinh DATE not null,
	Email VARCHAR(35) not null,
	Dia_chi VARCHAR(50) not null,
	CCCD VARCHAR(15) not null unique,
	ID_quan_ly VARCHAR(12) not null,


	-- khoa
	PRIMARY KEY (ID_nhan_vien),
	FOREIGN KEY (ID_quan_ly) REFERENCES NhanVien(ID_nhan_vien),

	-- kiem tra dieu kien
	CHECK(ID_nhan_vien LIKE 'NV[0-9][0-9][0-9]'),
	CHECK(CCCD LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CHECK(Email LIKE '%@gmail.com'),
	CHECK(ID_quan_ly LIKE 'NV[0-9][0-9][0-9]')
);

INSERT INTO NhanVien
VALUES
    ('NV001', 'Nguyen Van An', '1990-01-01', 'AnNV@gmail.com', 'Ha Noi', '001090175593', 'NV016'),
    ('NV002', 'Tran Thi Lan', '1991-02-02', 'LanLT@gmail.com', 'Da Nang', '048091239119', 'NV017'),
    ('NV003', 'Le Van Duy', '1992-03-03', 'DuyLV@gmail.com', 'Hai Phong', '031192711728', 'NV016'),
    ('NV004', 'Pham Thi Dung', '1993-04-04', 'DungPT@gmail.com', 'Ha Noi', '001093232272', 'NV017'),
    ('NV005', 'Hoang Van Thang', '1994-05-05', 'ThangHV@gmail.com', 'Ha Noi', '001094167134', 'NV018'),
    ('NV006', 'Vo Thi Sau', '1995-06-06', 'SauVT@gmail.com', 'Ha Noi', '001195030631', 'NV020'),
    ('NV007', 'Truong Van Ngoc', '1996-07-07', 'NgocTV@gmail.com', 'Hai Phong', '031196653653', 'NV019'),
    ('NV008', 'Do Van Hoang', '1997-08-08', 'HoangDV@gmail.com', 'Da Nang', '048197234447', 'NV016'),
    ('NV009', 'Nguyen Van Phu', '1998-09-09', 'PhuNV@gmail.com', 'Ha Noi', '001198635226', 'NV017'),
    ('NV010', 'Tran Van Khanh', '1999-10-10', 'KhanhTV@gmail.com', 'Ha Noi', '001099381067', 'NV018'),
    ('NV011', 'Le Van Ngoc', '2000-11-11', 'NgocLV@gmail.com', 'Ha Noi', '001000775406', 'NV015'),
    ('NV012', 'Pham Thi Mai', '2001-12-12', 'MaiPT@gmail.com', 'Ha Noi', '001001056364', 'NV016'),
    ('NV013', 'Hoang Van Phu', '2002-01-01', 'PhuHV@gmail.com', 'Ha Noi', '001002509555', 'NV016'),
    ('NV014', 'Nguyen Van Duc', '2003-02-02', 'DucNV@gmail.com', 'Ha Noi', '001103687573', 'NV019'),
    ('NV015', 'Hoang Dieu Quynh', '2004-03-03', 'QuynhDH@gmail.com', 'Ha Noi', '001104298597', 'NV020'),
    ('NV016', 'Le Van Nam', '1999-11-11', 'NgocLV@gmail.com', 'Ha Noi', '001000767406', 'NV015'),
    ('NV017', 'Nguyen Thi Mai', '2005-08-12', 'MaiPT@gmail.com', 'Ha Noi', '001000956364', 'NV016'),
    ('NV018', 'Ta Van Duc', '2002-12-12', 'PhuHV@gmail.com', 'Ha Noi', '001002508555', 'NV016'),
    ('NV019', 'Nguyen Hoang Duc', '2000-02-03', 'DucNV@gmail.com', 'Ha Noi', '001198647573', 'NV019'),
    ('NV020', 'Dao Thi Quynh', '2000-05-03', 'QuynhDH@gmail.com', 'Ha Noi', '001105698597', 'NV020');


CREATE TABLE KhachHang(
	-- thuoc tinh
	ID_khach_hang VARCHAR(12) NOT NULL,
	Ten_KH NVARCHAR(35) NOT NULL,
	So_huu_the bit

	-- khoa
	PRIMARY KEY (ID_khach_hang),

	-- kiem tra dieu kien
	CHECK(ID_khach_hang LIKE 'KH[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CHECK(So_huu_the = 0 OR So_huu_the = 1)
);


insert into KhachHang values
	('KH000000001',	N'Nguyễn Khánh Ly',	0),
	('KH000000002',	N'Quách Thu Phương', 0),
	('KH000000003', N'Nguyễn Thu Hoài', 0),
	('KH000000004',	N'Nguyễn Tuấn Anh',	0),
	('KH000000005',	N'Phạm Thái Hoàng',	0),
	('KH000000006',	N'Đỗ Nam Khánh', 0),
	('KH000000007',	N'Nguyễn Hoàng Hiệp', 0),
	('KH000000008',	N'Bùi Ngọc Đứcc', 0),
	('KH000000009',	N'Phan Thùy Linh', 0),
	('KH000000010',	N'Nguyễn Thanh Hằng', 0),
	('KH000000011',	N'Trần Thị Mai', 1),
	('KH000000012',	N'Nguyễn Thị Thanh Mai', 1),
	('KH000000013',	N'Nông Thị Kim Chi', 1),
	('KH000000014',	N'Vương Thị Lan Anh', 1),
	('KH000000015',	N'Lê Thanh Ngân', 1),
	('KH000000016',	N'Nguyễn Tùng Lâm', 1),
	('KH000000017',	N'Đào Bích Ngọc', 1),
	('KH000000018',	N'Mai Thị Thu Trang', 1),
	('KH000000019',	N'Vũ Quỳnh Phương',	1),
	('KH000000020',	N'Đào Thế Hoàng', 1);


CREATE TABLE KhachHangSDT(
	-- thuoc tinh
	ID_khach_hang VARCHAR(12) not null,
	SDT VARCHAR(15),

	-- khoa
	PRIMARY KEY (SDT),
	FOREIGN KEY (ID_khach_hang) REFERENCES KhachHang(ID_khach_hang)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	-- kiem tra dieu kien
	CHECK(SDT LIKE '0[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CHECK(ID_khach_hang LIKE 'KH[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);

INSERT INTO KhachHangSDT
VALUES
    ('KH000000001', '0390134043'),
    ('KH000000001', '0412493092'),
    ('KH000000002', '0456412093'),
    ('KH000000002', '0334920304'),
    ('KH000000002', '0678901234'),
    ('KH000000003', '0391204834'),
    ('KH000000003', '0342109340'),
    ('KH000000004', '0949328404'),
    ('KH000000005', '0301928340'),
    ('KH000000006', '0304182034'),
    ('KH000000006', '0124390430'),
    ('KH000000007', '0401293404'),
    ('KH000000007', '0120934093'),
    ('KH000000008', '0394210404'),
    ('KH000000008', '0340913494'),
    ('KH000000008', '0901240934'),
    ('KH000000009', '0338421034'),
    ('KH000000010', '0341029340'),
    ('KH000000010', '0910293488'),
    ('KH000000011', '0330491820'),
    ('KH000000011', '0901048239'),
    ('KH000000012', '0349024143'),
    ('KH000000012', '0574230944'),
    ('KH000000012', '0993842194'),
    ('KH000000013', '0340290430'),
    ('KH000000014', '0903401894'),
    ('KH000000015', '0348234904'),
    ('KH000000016', '0390192340'),
    ('KH000000017', '0942103494'),
    ('KH000000017', '0901249309'),
    ('KH000000018', '0309124830'),
    ('KH000000018', '0991273484'),
    ('KH000000019', '0921493887'),
    ('KH000000019', '0334821349'),
    ('KH000000019', '0928342349'),
    ('KH000000020', '0394824394');


CREATE TABLE KhachHangCoThe(
	-- thuoc tinh
	C_ID_khach_hang VARCHAR(12) NOT NULL,
	Ngay_sinh DATE NOT NULL,
	Dia_chi VARCHAR(50) NOT NULL,
	CCCD VARCHAR(15) NOT NULL,
	ID_khach_hang VARCHAR(12) NOT NULL,
	-- khoa
	PRIMARY KEY (C_ID_khach_hang),
	FOREIGN KEY (ID_khach_hang) REFERENCES KhachHang(ID_khach_hang) ON DELETE CASCADE ON UPDATE CASCADE,

	-- kiem tra dieu kien
	CHECK(C_ID_khach_hang LIKE 'CKH[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CHECK(CCCD LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CHECK(ID_khach_hang LIKE 'KH[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
);

--DELETE FROM KhachHangCoThe

INSERT INTO KhachHangCoThe VALUES
	('CKH000000001', '2003-11-27', 'Ha Dong, Ha Noi', '001103755215', 'KH000000011'),
	('CKH000000002', '2000-10-22', 'Hoang Mai, Ha Noi', '001000184181', 'KH000000012'),
	('CKH000000003', '1995-01-22', 'Long Bien, Ha Noi', '001095910288', 'KH000000013'),
	('CKH000000004', '1993-02-11', 'Thanh Xuan, Ha Noi', '001093305940', 'KH000000014'),
	('CKH000000005', '1997-09-24', 'Thanh Xuan, Ha Noi', '001097415082', 'KH000000015'),
	('CKH000000006', '2003-05-29', 'Ha Dong, Ha Noi', '001003554871', 'KH000000016'),
	('CKH000000007', '1999-03-13', 'Dong Anh, Ha Noi', '001099926955', 'KH000000017'),
	('CKH000000008', '2001-03-23', 'Hoai Duc, Ha Noi', '001001593615', 'KH000000018'),
	('CKH000000009', '2002-12-28', 'Dong Anh, Ha Noi', '001102750296', 'KH000000019'),
	('CKH000000010', '1997-05-05', 'Ba Dinh, Ha Noi', '001197914696', 'KH000000020')


CREATE TABLE KhachHangKhongCoThe(
	-- thuoc tinh
	ID_khach_hang varchar(12) NOT NULL,
	K_ID_khach_hang varchar(12) NOT NULL,
	Tan_suat INT NOT NULL

	-- khoa
	FOREIGN KEY (ID_khach_hang) REFERENCES KhachHang(ID_khach_hang) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (K_ID_khach_hang),

	-- kiem tra dieu kien
	CHECK(Tan_suat >= 0),
	CHECK(ID_khach_hang LIKE 'KH[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CHECK(K_ID_khach_hang LIKE 'KKH[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);
insert into KhachHangKhongCoThe values
	('KH000000001',	'KKH000000001', 1),
	('KH000000002', 'KKH000000002', 2),
	('KH000000003', 'KKH000000003', 3),
	('KH000000004',	'KKH000000004', 4),
	('KH000000005', 'KKH000000005',	5),
	('KH000000006', 'KKH000000006',	6),
	('KH000000007', 'KKH000000007',	7),
	('KH000000008', 'KKH000000008',	8),
	('KH000000009', 'KKH000000009',	9),
	('KH000000010', 'KKH000000010',	10);



CREATE TABLE Phong(
    ID_Phong VARCHAR(10) NOT NULL,
    Tang INT NOT NULL,
    Loai NVARCHAR(20) NOT NULL,

    PRIMARY KEY (ID_Phong),

    CHECK (ID_Phong LIKE 'R[0-9][0-9][0-9]')
);

--them data vao bang Phong
INSERT INTO Phong VALUES
('R001', 1, N'Phòng Starium'),
('R002', 1, N'Phòng Starium'),
('R003', 2, N'Phòng Classic'),
('R004', 2, N'Phòng Classic'),
('R005', 2, N'Phòng Sweetbox')


CREATE TABLE Ghe(
    ID_Ghe VARCHAR(10) NOT NULL,
    ViTri VARCHAR(20) NOT NULL,
    Loai VARCHAR(20) NOT NULL,
    ID_Phong VARCHAR(10) NOT NULL,

    PRIMARY KEY (ID_Ghe),
    FOREIGN KEY (ID_Phong) REFERENCES Phong(ID_Phong) ON DELETE CASCADE ON UPDATE CASCADE,

    CHECK (ID_Ghe LIKE 'GH[0-9][0-9][0-9]'),
    CHECK (ViTri LIKE '[A-D][0-9][0-9]'),
    CHECK (Loai IN ('Ghe Don', 'Ghe Doi'))
);

INSERT INTO Ghe VALUES
    ('GH001', 'A01', 'Ghe Don', 'R001'),
    ('GH002', 'A02', 'Ghe Don', 'R001'),
    ('GH003', 'A03', 'Ghe Don', 'R001'),
    ('GH004', 'B01', 'Ghe Don', 'R001'),
    ('GH005', 'B02', 'Ghe Don', 'R001'),
    ('GH006', 'B03', 'Ghe Don', 'R001'),
    ('GH007', 'C01', 'Ghe Don', 'R001'),
    ('GH008', 'C02', 'Ghe Don', 'R001'),
    ('GH009', 'C03', 'Ghe Don', 'R001'),
    ('GH010', 'C04', 'Ghe Don', 'R001'),
    ('GH011', 'A01', 'Ghe Don', 'R002'),
    ('GH012', 'A02', 'Ghe Don', 'R002'),
    ('GH013', 'A03', 'Ghe Don', 'R002'),
    ('GH014', 'B01', 'Ghe Don', 'R002'),
    ('GH015', 'B02', 'Ghe Don', 'R002'),
    ('GH016', 'B03', 'Ghe Don', 'R002'),
    ('GH017', 'C01', 'Ghe Don', 'R002'),
    ('GH018', 'C02', 'Ghe Don', 'R002'),
    ('GH019', 'C03', 'Ghe Don', 'R002'),
    ('GH020', 'C04', 'Ghe Don', 'R002'),
    ('GH021', 'A01', 'Ghe Don', 'R003'),
    ('GH022', 'A02', 'Ghe Don', 'R003'),
    ('GH023', 'A03', 'Ghe Don', 'R003'),
    ('GH024', 'B01', 'Ghe Don', 'R003'),
    ('GH025', 'B02', 'Ghe Don', 'R003'),
    ('GH026', 'B03', 'Ghe Don', 'R003'),
    ('GH027', 'C01', 'Ghe Doi', 'R003'),
    ('GH028', 'C02', 'Ghe Doi', 'R003'),
    ('GH029', 'D01', 'Ghe Doi', 'R003'),
    ('GH030', 'D02', 'Ghe Doi', 'R003'),
    ('GH031', 'A01', 'Ghe Don', 'R004'),
    ('GH032', 'A02', 'Ghe Don', 'R004'),
    ('GH033', 'A03', 'Ghe Don', 'R004'),
    ('GH034', 'B01', 'Ghe Don', 'R004'),
    ('GH035', 'B02', 'Ghe Don', 'R004'),
    ('GH036', 'B03', 'Ghe Don', 'R004'),
    ('GH037', 'C01', 'Ghe Doi', 'R004'),
    ('GH038', 'C02', 'Ghe Doi', 'R004'),
    ('GH039', 'D01', 'Ghe Doi', 'R004'),
    ('GH040', 'D02', 'Ghe Doi', 'R004'),
    ('GH041', 'A01', 'Ghe Doi', 'R005'),
    ('GH042', 'A02', 'Ghe Doi', 'R005'),
    ('GH043', 'B01', 'Ghe Doi', 'R005'),
    ('GH044', 'B02', 'Ghe Doi', 'R005'),
    ('GH045', 'C01', 'Ghe Doi', 'R005'),
    ('GH046', 'C02', 'Ghe Doi', 'R005'),
    ('GH047', 'C03', 'Ghe Doi', 'R005'),
    ('GH048', 'D01', 'Ghe Doi', 'R005'),
    ('GH049', 'D02', 'Ghe Doi', 'R005'),
    ('GH050', 'D03', 'Ghe Doi', 'R005')

CREATE TABLE ChiNhanh(
    -- thuoc tinh
    ID_chi_nhanh VARCHAR(10) NOT NULL,
    Dia_chi VARCHAR(50) NOT NULL,

    -- khoa
    PRIMARY KEY (ID_chi_nhanh),

    -- kiem tra dieu kien
    CHECK(ID_chi_nhanh LIKE 'CN[0-9][0-9][0-9]'),
);

INSERT INTO ChiNhanh VALUES
    ('CN001', 'Ha Dong, Ha Noi'),
    ('CN002', 'Cau Giay, Ha Noi'),
    ('CN003', 'Hoan Kiem, Ha Noi'),
    ('CN004', 'Hai Ba Trung, Ha Noi'),
    ('CN005', 'Vinh Tuong, Vinh Phuc'),
    ('CN006', 'Phuc Yen, Vinh Phuc'),
    ('CN007', 'Tam Dao, Vinh Phuc'),
    ('CN008', 'Bac Ninh, Bac Ninh'),
    ('CN009', 'Tu Son, Bac Ninh'),
    ('CN010', 'Gia Lam, Ha Noi');


CREATE TABLE Phim(
    -- thuoc tinh
    ID_phim VARCHAR(10) NOT NULL,
    Ten_phim NVARCHAR(50) NOT NULL,
    Nhan_phim VARCHAR(5) NOT NULL,
    Thoi_luong int NOT NULL,

    -- khoa
    PRIMARY KEY (ID_phim),

    -- kiem tra dieu kien
    CHECK(ID_phim LIKE 'P[0-9][0-9][0-9][0-9][0-9][0-9]')
);

INSERT INTO Phim VALUES
('P000001', N'Avengers: Endgame', '16+', 181),
('P000002', N'Captain Marvel', '16+', 124),
('P000003', N'Us', '16+', 116),
('P000004', N'How to Train Your Dragon: The Hidden World', 'P', 104),
('P000005', N'X-men: Dark Phoenix', '16+', 114),
('P000006', N'Alita: Battle Angel', '16+', 122),
('P000007', N'Glass', '16+', 129),
('P000008', N'Escape Room', '16+', 99),
('P000009', N'Happy Death Day 2U', '16+', 100),
('P000010', N'Cold Pursuit', '16+', 119),
('P000011', N'Green Book', '16+', 130),
('P000012', N'Ana and the Apocalypse', '16+', 93),
('P000013', N'Fantastic Beasts: The Crimes of Grindelwald', 'P', 134),
('P000014', N'Bohemian Rhapsody', '16+', 134),
('P000015', N'Robin Hood', '16+', 116),
('P000016', N'Creed II', '18+', 130),
('P000017', N'Fantastic Beasts and Where to Find Them', 'P', 133),
('P000018', N'Diệp Vấn 3', '16+', 105),
('P000019', N'Kungfu Panda 3', 'P', 95),
('P000020', N'Kungfu Panda 2', 'P', 91),
('P000021', N'Kungfu Panda', 'P', 92),
('P000022', N'How to Train Your Dragon 2', 'P', 102),
('P000023', N'How to Train Your Dragon', 'P', 98),
('P000024', N'Big Hero 6', 'P', 102),
('P000025', N'Frozen', 'P', 102);


CREATE TABLE SuatChieu(
    -- thuoc tinh
    ID_suat_chieu VARCHAR(11) NOT NULL,
    Thoi_gian_chieu DATEtime NOT NULL,
    Dinh_dang VARCHAR(10) NOT NULL,
    Loai VARCHAR(10) NOT NULL,
    ID_phong VARCHAR(10) NOT NULL,
    ID_phim VARCHAR(10) NOT NULL,
    ID_chi_nhanh VARCHAR(10) NOT NULL,

    -- khoa
    PRIMARY KEY (ID_suat_chieu),
    FOREIGN KEY (ID_phong) REFERENCES Phong(ID_phong) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_phim) REFERENCES Phim(ID_phim) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_chi_nhanh) REFERENCES ChiNhanh(ID_chi_nhanh) ON DELETE CASCADE ON UPDATE CASCADE,

    -- kiem tra dieu kien
    CHECK(ID_suat_chieu LIKE 'SC[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    CHECK(Dinh_dang IN ('2D', '3D')),
    CHECK(Loai IN ('Thuong', 'Dac biet')),
    CHECK(ID_phong LIKE 'R[0-9][0-9][0-9]'),
    CHECK(ID_phim LIKE 'P[0-9][0-9][0-9][0-9][0-9][0-9]'),
    CHECK(ID_chi_nhanh LIKE 'CN[0-9][0-9][0-9]'),
);


INSERT INTO SuatChieu VALUES
('SC000000001', '2023-10-30 16:45:00', '2D', 'Dac biet', 'R003', 'P000010', 'CN001'),
('SC000000002', '2023-11-01 11:45:00', '3D', 'Thuong', 'R004', 'P000005', 'CN002'),
('SC000000003', '2023-10-31 11:45:00', '3D', 'Dac biet', 'R004', 'P000001', 'CN002'),
('SC000000004', '2023-10-30 22:30:00', '3D', 'Thuong', 'R002', 'P000007', 'CN003'),
('SC000000005', '2023-10-31 13:15:00', '2D', 'Dac biet', 'R002', 'P000007', 'CN003'),
('SC000000006', '2023-10-31 21:15:00', '2D', 'Dac biet', 'R002', 'P000007', 'CN001'),
('SC000000007', '2023-10-30 12:15:00', '2D', 'Thuong', 'R002', 'P000014', 'CN001'),
('SC000000008', '2023-10-31 10:00:00', '2D', 'Thuong', 'R002', 'P000002', 'CN001'),
('SC000000009', '2023-11-01 16:45:00', '3D', 'Dac biet', 'R005', 'P000002', 'CN003'),
('SC000000010', '2023-10-30 18:45:00', '2D', 'Thuong', 'R004', 'P000008', 'CN002'),
('SC000000011', '2023-11-01 14:00:00', '2D', 'Thuong', 'R004', 'P000012', 'CN003'),
('SC000000012', '2023-11-01 23:30:00', '2D', 'Thuong', 'R002', 'P000015', 'CN003'),
('SC000000013', '2023-10-31 19:15:00', '3D', 'Dac biet', 'R005', 'P000017', 'CN003'),
('SC000000014', '2023-10-30 16:30:00', '3D', 'Thuong', 'R003', 'P000010', 'CN002'),
('SC000000015', '2023-10-30 17:30:00', '3D', 'Dac biet', 'R005', 'P000019', 'CN002'),
('SC000000016', '2023-11-01 18:00:00', '2D', 'Thuong', 'R004', 'P000004', 'CN003'),
('SC000000017', '2023-11-01 11:15:00', '2D', 'Thuong', 'R005', 'P000022', 'CN002'),
('SC000000018', '2023-11-01 21:45:00', '3D', 'Thuong', 'R001', 'P000009', 'CN001'),
('SC000000019', '2023-10-30 09:45:00', '3D', 'Thuong', 'R004', 'P000012', 'CN001'),
('SC000000020', '2023-11-01 17:00:00', '3D', 'Thuong', 'R005', 'P000021', 'CN003'),
('SC000000021', '2023-11-01 23:30:00', '3D', 'Thuong', 'R003', 'P000014', 'CN001'),
('SC000000022', '2023-11-01 15:30:00', '2D', 'Dac biet', 'R001', 'P000006', 'CN003'),
('SC000000023', '2023-11-01 14:15:00', '3D', 'Thuong', 'R002', 'P000012', 'CN002'),
('SC000000024', '2023-10-31 13:30:00', '2D', 'Thuong', 'R001', 'P000017', 'CN002'),
('SC000000025', '2023-10-31 20:45:00', '3D', 'Thuong', 'R002', 'P000017', 'CN002'),
('SC000000026', '2023-10-30 19:30:00', '2D', 'Dac biet', 'R002', 'P000019', 'CN001'),
('SC000000027', '2023-10-31 10:30:00', '3D', 'Dac biet', 'R001', 'P000006', 'CN002'),
('SC000000028', '2023-10-31 16:30:00', '3D', 'Dac biet', 'R005', 'P000005', 'CN002'),
('SC000000029', '2023-10-30 11:00:00', '3D', 'Thuong', 'R003', 'P000015', 'CN003'),
('SC000000030', '2023-11-01 12:00:00', '3D', 'Dac biet', 'R004', 'P000019', 'CN001'),
('SC000000031', '2023-10-31 22:30:00', '3D', 'Dac biet', 'R003', 'P000007', 'CN002'),
('SC000000032', '2023-11-01 12:00:00', '3D', 'Thuong', 'R002', 'P000013', 'CN003'),
('SC000000033', '2023-11-01 22:45:00', '3D', 'Thuong', 'R001', 'P000001', 'CN002'),
('SC000000034', '2023-10-30 12:45:00', '3D', 'Thuong', 'R004', 'P000024', 'CN001'),
('SC000000035', '2023-10-30 14:30:00', '2D', 'Thuong', 'R004', 'P000011', 'CN002'),
('SC000000036', '2023-11-01 20:45:00', '2D', 'Dac biet', 'R003', 'P000014', 'CN003'),
('SC000000037', '2023-10-31 17:30:00', '3D', 'Dac biet', 'R002', 'P000016', 'CN002'),
('SC000000038', '2023-10-31 21:30:00', '3D', 'Dac biet', 'R005', 'P000021', 'CN001'),
('SC000000039', '2023-11-01 19:45:00', '3D', 'Thuong', 'R003', 'P000003', 'CN003'),
('SC000000040', '2023-11-01 13:00:00', '2D', 'Thuong', 'R003', 'P000012', 'CN002'),
('SC000000041', '2023-10-31 10:45:00', '2D', 'Dac biet', 'R003', 'P000019', 'CN003'),
('SC000000042', '2023-10-31 09:15:00', '2D', 'Thuong', 'R003', 'P000012', 'CN002'),
('SC000000043', '2023-10-31 14:15:00', '3D', 'Thuong', 'R003', 'P000012', 'CN001'),
('SC000000044', '2023-11-01 23:45:00', '2D', 'Dac biet', 'R005', 'P000020', 'CN003'),
('SC000000045', '2023-10-31 14:30:00', '2D', 'Thuong', 'R005', 'P000011', 'CN001'),
('SC000000046', '2023-10-31 17:00:00', '2D', 'Thuong', 'R005', 'P000014', 'CN002'),
('SC000000047', '2023-10-31 19:15:00', '2D', 'Thuong', 'R004', 'P000002', 'CN002'),
('SC000000048', '2023-11-01 09:00:00', '3D', 'Thuong', 'R002', 'P000008', 'CN003'),
('SC000000049', '2023-10-30 21:45:00', '2D', 'Thuong', 'R002', 'P000022', 'CN003'),
('SC000000050', '2023-10-31 12:30:00', '2D', 'Thuong', 'R002', 'P000018', 'CN002');




CREATE TABLE ThongTinDatVe(
	-- thuoc tinh
	ID_dat VARCHAR(12) NOT NULL,
	Hinh_thuc_dat VARCHAR(20) NOT NULL,
	Thoi_gian_dat date NOT NULL,
	Thanh_tien INT NOT NULL,
	ID_nhan_vien VARCHAR(12) NOT NULL,
	ID_khach_hang VARCHAR(12) NOT NULL,
	-- khoa
	PRIMARY KEY(ID_dat),
	FOREIGN KEY(ID_nhan_vien) REFERENCES NhanVien(ID_nhan_vien) ON DELETE CASCADE
ON UPDATE CASCADE,
	FOREIGN KEY(ID_khach_hang) REFERENCES KhachHang(ID_khach_hang)ON DELETE CASCADE
ON UPDATE CASCADE,
	-- dieu kien
	CHECK(ID_dat LIKE 'DV[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CHECK(Hinh_thuc_dat in ('Online', 'Offline')),
	CHECK(Thanh_tien >= 0),
	CHECK(ID_nhan_vien LIKE 'NV[0-9][0-9][0-9]'),
	CHECK(ID_khach_hang LIKE 'KH[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')

);
INSERT INTO ThongTinDatVe VALUES
	('DV000000001', 'Online', '2023-10-28 00:00:00', 225000, 'NV005', 'KH000000009'), 
	('DV000000002', 'Offline', '2023-10-28 08:30:00', 150000, 'NV006', 'KH000000001'),								
	('DV000000003', 'Online', '2023-10-28 08:45:00', 50000, 'NV007', 'KH000000002'),
	('DV000000004', 'Offline', '2023-10-28 09:00:00', 300000, 'NV013', 'KH000000015'),
	('DV000000005', 'Online', '2023-10-28 09:00:00', 150000, 'NV009', 'KH000000017'), 
	('DV000000006', 'Offline', '2023-10-28 09:15:00', 225000, 'NV006', 'KH000000007'),  
	('DV000000007', 'Online', '2023-10-28 09:30:00', 50000, 'NV005', 'KH000000005'),
	('DV000000008', 'Offline', '2023-10-28 09:30:00', 225000, 'NV011', 'KH000000008'),
	('DV000000009', 'Online', '2023-10-28 10:00:00', 50000, 'NV007', 'KH000000003'), 
	('DV000000010', 'Offline', '2023-10-28 10:15:00', 150000, 'NV013', 'KH000000014'), 
	('DV000000011', 'Online', '2023-10-28 10:30:00', 50000, 'NV006', 'KH000000006'), 
	('DV000000012', 'Offline', '2023-10-28 15:00:00', 150000, 'NV005', 'KH000000016'), 
	('DV000000013', 'Online', '2023-10-28 15:30:00', 50000, 'NV014', 'KH000000005'),
	('DV000000014', 'Offline', '2023-10-28 17:00:00', 75000, 'NV009', 'KH000000007'), 
	('DV000000015', 'Online', '2023-10-28 21:00:00', 150000, 'NV013', 'KH000000013'), 
	('DV000000016', 'Offline', '2023-10-29 08:00:00', 300000, 'NV006', 'KH000000019'), 
	('DV000000017', 'Online', '2023-10-29 08:00:00', 50000, 'NV011', 'KH000000010'), 
	('DV000000018', 'Offline', '2023-10-29 08:30:00', 150000, 'NV009', 'KH000000001'), 
	('DV000000019', 'Online', '2023-10-29 09:00:00', 50000, 'NV005', 'KH000000017'),  
	('DV000000020', 'Offline', '2023-10-29 09:45:00', 300000, 'NV006', 'KH000000009'),  
	('DV000000021', 'Online', '2023-10-29 10:00:00', 150000, 'NV005', 'KH000000006'),
	('DV000000022', 'Online', '2023-10-29 10:10:00', 300000, 'NV007', 'KH000000002'), 
	('DV000000023', 'Online', '2023-10-29 11:00:00', 150000, 'NV014', 'KH000000012'), 
	('DV000000024', 'Online', '2023-10-29 12:30:00', 300000, 'NV009', 'KH000000010'), 
	('DV000000025', 'Online', '2023-10-29 12:45:00', 50000, 'NV011', 'KH000000008')


CREATE TABLE Ve(
    -- thuoc tinh
    ID_ve VARCHAR(10) NOT NULL,
    Gia int NOT NULL,
    ID_dat VARCHAR(12) NOT NULL,
    ID_ghe VARCHAR(10) NOT NULL,
    ID_suat_chieu VARCHAR(11) NOT NULL,

    -- khoa
    PRIMARY KEY (ID_ve),
    FOREIGN KEY (ID_dat) REFERENCES ThongTinDatVe(ID_dat) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_ghe) REFERENCES Ghe(ID_ghe),
    FOREIGN KEY (ID_suat_chieu) REFERENCES SuatChieu(ID_suat_chieu) ON DELETE CASCADE ON UPDATE CASCADE,

    -- kiem tra dieu kien
    CHECK(ID_ve LIKE 'V[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    CHECK(ID_dat LIKE 'DV[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    CHECK(ID_ghe LIKE 'GH[0-9][0-9][0-9]'),
    CHECK(ID_suat_chieu LIKE 'SC[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
);

INSERT INTO Ve VALUES
    ('V000000001', 75000, 'DV000000001', 'GH026', 'SC000000013'),
    ('V000000002', 150000, 'DV000000001', 'GH027', 'SC000000013'),

    ('V000000003', 75000, 'DV000000002', 'GH003', 'SC000000002'),
    ('V000000004', 75000, 'DV000000002', 'GH004', 'SC000000002'),

    ('V000000005', 50000, 'DV000000003', 'GH005', 'SC000000004'),

    ('V000000006', 150000, 'DV000000004', 'GH037', 'SC000000005'),
    ('V000000007', 150000, 'DV000000004', 'GH038', 'SC000000006'),

    ('V000000008', 75000, 'DV000000005', 'GH009', 'SC000000004'),
    ('V000000009', 75000, 'DV000000005', 'GH010', 'SC000000004'),

    ('V000000010', 75000, 'DV000000006', 'GH011', 'SC000000008'),
    ('V000000011', 75000, 'DV000000006', 'GH012', 'SC000000008'),
    ('V000000012', 75000, 'DV000000006', 'GH013', 'SC000000008'),

    ('V000000013', 50000, 'DV000000007', 'GH014', 'SC000000008'),

    ('V000000014', 75000, 'DV000000008', 'GH015', 'SC000000009'),
    ('V000000015', 75000, 'DV000000008', 'GH016', 'SC000000009'),
    ('V000000016', 75000, 'DV000000008', 'GH017', 'SC000000009'),

    ('V000000017', 50000, 'DV000000009', 'GH018', 'SC000000009'),

    ('V000000018', 75000, 'DV000000010', 'GH019', 'SC000000010'),
    ('V000000019', 75000, 'DV000000010', 'GH020', 'SC000000010'),

    ('V000000020', 50000, 'DV000000011', 'GH021', 'SC000000010'),

    ('V000000021', 75000, 'DV000000012', 'GH022', 'SC000000011'),
    ('V000000022', 75000, 'DV000000012', 'GH023', 'SC000000011'),

    ('V000000023', 50000, 'DV000000013', 'GH024', 'SC000000011'),

    ('V000000024', 75000, 'DV000000014', 'GH025', 'SC000000012'),

    ('V000000025', 150000, 'DV000000015', 'GH028', 'SC000000012'),

    ('V000000026', 150000, 'DV000000016', 'GH029', 'SC000000014'),
    ('V000000027', 150000, 'DV000000016', 'GH030', 'SC000000014'),

    ('V000000028', 50000, 'DV000000017', 'GH031', 'SC000000014'),

    ('V000000029', 75000, 'DV000000018', 'GH032', 'SC000000015'),
    ('V000000030', 75000, 'DV000000018', 'GH033', 'SC000000015'),

    ('V000000031', 50000, 'DV000000019', 'GH034', 'SC000000015'),

    ('V000000032', 150000, 'DV000000020', 'GH037', 'SC000000016'),
    ('V000000033', 150000, 'DV000000020', 'GH038', 'SC000000016'),

    ('V000000034', 150000, 'DV000000021', 'GH039', 'SC000000016'),

    ('V000000035', 150000, 'DV000000022', 'GH041', 'SC000000017'),
    ('V000000036', 150000, 'DV000000022', 'GH042', 'SC000000017'),

    ('V000000037', 150000, 'DV000000023', 'GH043', 'SC000000017'),

    ('V000000038', 150000, 'DV000000024', 'GH043', 'SC000000018'),
    ('V000000039', 150000, 'DV000000024', 'GH044', 'SC000000018'),

    ('V000000040', 50000, 'DV000000025', 'GH001', 'SC000000018')


CREATE TABLE The(
	-- thuoc tinh
	ID_the VARCHAR(12) NOT NULL,
	Loai_the VARCHAR(25) NOT NULL,
	Ngay_tao DATE NOT NULL,
	Ngay_het_han DATE NOT NULL,
	C_ID_khach_hang VARCHAR(12) NOT NULL,

	-- khoa
	PRIMARY KEY (ID_the),
	FOREIGN KEY (C_ID_khach_hang) REFERENCES KhachHangCoThe(C_ID_khach_hang),

	-- kiem tra dieu kien
	CHECK(ID_the LIKE 'T[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CHECK(C_ID_khach_hang LIKE 'CKH[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CHECK(Loai_the IN ('VIP1', 'VIP2', 'Member')),
	CHECK(Ngay_het_han >= Ngay_tao)
);


-- 3 loai the la Member, Vip1 va Vip2
INSERT INTO The VALUES
	('T000000001', 'Member', '2022-11-27', '2023-11-27', 'CKH000000001'),
	('T000000002', 'Vip1', '2021-10-26', '2023-10-26', 'CKH000000002'),
	('T000000003', 'Vip2', '2020-11-01', '2024-05-01', 'CKH000000003'),
	('T000000004', 'Vip1', '2015-08-20', '2024-08-20', 'CKH000000004'),
	('T000000005', 'Member', '2022-12-11', '2023-06-11', 'CKH000000005'),
	('T000000006', 'Vip1', '2019-10-28', '2023-10-28', 'CKH000000006'),
	('T000000007', 'Vip1', '2021-12-30', '2024-12-30', 'CKH000000007'),
	('T000000008', 'Member', '2021-09-03', '2023-09-03', 'CKH000000008'),
	('T000000009', 'Member', '2020-01-24', '2023-07-24', 'CKH000000009'),
	('T000000010', 'Vip2', '2019-10-10', '2023-10-10', 'CKH000000010')


CREATE TABLE SanPham(
	-- thuoc tinh
	ID_san_pham VARCHAR(8) NOT NULL,
	Ten VARCHAR(35) NOT NULL,
	Loai VARCHAR(15) NOT NULL,
	Gia NUMERIC(8,2) DEFAULT 0.00,

	-- khoa
	PRIMARY KEY (ID_san_pham),

	-- kiem tra dieu kien
	CHECK (ID_san_pham LIKE 'SP[0-9][0-9][0-9]'),
	CHECK (Loai IN ('Thuc an', 'Do uong'))
);

INSERT INTO SanPham VALUES
('SP001', 'Tra sua', 'Do uong', 25000),
('SP002', 'Nuoc cam', 'Do uong', 20000),
('SP003', 'Tra chanh', 'Do uong', 15000),
('SP004', 'Pesi', 'Do uong', 30000),
('SP005', 'Coca Cola', 'Do uong', 30000),
('SP006', 'Banh mi pate', 'Thuc an', 20000),
('SP007', 'Banh mi trung', 'Thuc an', 20000),
('SP008', 'Bong Ngo Thuong M', 'Thuc an', 30000),
('SP009', 'Bong Ngo Thuong L', 'Thuc an', 40000),
('SP010', 'Bong Ngo Phomai Muoi M', 'Thuc an', 40000),
('SP011', 'Bong Ngo Phomai Muoi L', 'Thuc an', 50000);



CREATE TABLE HoaDon
(
	ID_hoa_don VARCHAR(12) NOT NULL,
	Thoi_gian DATETIME,
	Thanh_tien NUMERIC(10, 2),
	ID_nhan_vien VARCHAR(12),
	ID_khach_hang VARCHAR(12),

	PRIMARY KEY (ID_hoa_don),
	FOREIGN KEY (ID_nhan_vien) REFERENCES NhanVien(ID_nhan_vien),
	FOREIGN KEY (ID_khach_hang) REFERENCES KhachHang(ID_khach_hang),

	CHECK(ID_nhan_vien LIKE 'NV[0-9][0-9][0-9]'),
	CHECK(ID_khach_hang LIKE 'KH[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CHECK(ID_hoa_don LIKE 'HD[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);


INSERT INTO HoaDon
VALUES 
    ('HD000000001', '2023-10-02 13:45:00', 150.50, 'NV001', 'KH000000001'),
    ('HD000000002', '2023-10-03 10:15:00', 200.25, 'NV002', 'KH000000002'),
    ('HD000000003', '2023-10-04 11:20:00', 95.75, 'NV003', 'KH000000003'),
    ('HD000000004', '2023-10-05 09:30:00', 120.00, 'NV004', 'KH000000004'),
    ('HD000000005', '2023-10-06 14:10:00', 175.25, 'NV005', 'KH000000005'),
    ('HD000000006', '2023-10-07 16:45:00', 135.50, 'NV006', 'KH000000006'),
    ('HD000000007', '2023-10-08 17:20:00', 180.75, 'NV007', 'KH000000007'),
    ('HD000000008', '2023-10-09 15:55:00', 92.30, 'NV008', 'KH000000008'),
    ('HD000000009', '2023-10-10 19:10:00', 220.40, 'NV009', 'KH000000009'),
    ('HD000000010', '2023-10-11 14:40:00', 110.60, 'NV010', 'KH000000010'),
    ('HD000000011', '2023-10-12 13:25:00', 160.75, 'NV011', 'KH000000011'),
    ('HD000000012', '2023-10-13 12:15:00', 130.80, 'NV012', 'KH000000012'),
    ('HD000000013', '2023-10-14 11:30:00', 145.20, 'NV013', 'KH000000013'),
    ('HD000000014', '2023-10-15 10:50:00', 190.40, 'NV014', 'KH000000014'),
    ('HD000000015', '2023-10-16 09:15:00', 105.75, 'NV015', 'KH000000015'),
    ('HD000000016', '2023-10-17 08:40:00', 195.30, 'NV016', 'KH000000016'),
    ('HD000000017', '2023-10-18 07:55:00', 75.90, 'NV017', 'KH000000017'),
    ('HD000000018', '2023-10-19 19:45:00', 250.60, 'NV018', 'KH000000018'),
    ('HD000000019', '2023-10-20 18:25:00', 230.25, 'NV019', 'KH000000019'),
	('HD000000020', '2023-10-01 12:30:00', 100.00, 'NV020', 'KH000000020')



CREATE TABLE ChiTietHoaDon(
	-- thuoc tinh
	ID_san_pham VARCHAR(8) NOT NULL,
	ID_hoa_don VARCHAR(12) NOT NULL,
	So_luong INT DEFAULT 1,

	-- khoa
	PRIMARY KEY (ID_san_pham, ID_hoa_don),
	FOREIGN KEY (ID_san_pham) REFERENCES SanPham(ID_san_pham) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (ID_hoa_don) REFERENCES HoaDon(ID_hoa_don) ON DELETE CASCADE ON UPDATE CASCADE,

	-- kiem tra dieu kien
	CHECK (ID_san_pham LIKE 'SP[0-9][0-9][0-9]'),
	CHECK (ID_hoa_don LIKE 'HD[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);


INSERT INTO ChiTietHoaDon VALUES
('SP001', 'HD000000001', 2),
('SP002', 'HD000000001', 1),
('SP006', 'HD000000001', 3),
('SP004', 'HD000000002', 1),
('SP005', 'HD000000002', 2),
('SP006', 'HD000000002', 1),
('SP007', 'HD000000002', 2),
('SP004', 'HD000000003', 2),
('SP009', 'HD000000003', 1),
('SP005', 'HD000000004', 1),
('SP009', 'HD000000004', 1),
('SP005', 'HD000000005', 2),
('SP011', 'HD000000006', 2),
('SP001', 'HD000000007', 1),
('SP002', 'HD000000007', 1),
('SP006', 'HD000000007', 2),
('SP003', 'HD000000008', 2),
('SP010', 'HD000000008', 2),
('SP005', 'HD000000009', 1),
('SP006', 'HD000000009', 3),
('SP007', 'HD000000010', 1),
('SP008', 'HD000000010', 2);



CREATE TABLE TheLoaiPhim(
	-- thuoc tinh
	The_loai VARCHAR(12) NOT NULL,
	ID_phim VARCHAR(10) NOT NULL,
	-- khoa
	PRIMARY KEY(The_loai, ID_Phim),
	FOREIGN KEY(ID_phim) REFERENCES Phim(ID_phim) ON DELETE CASCADE
ON UPDATE CASCADE,
	-- dieu kien
	CHECK(ID_phim LIKE 'P[0-9][0-9][0-9][0-9][0-9][0-9]'),
);

INSERT INTO TheLoaiPhim VALUES
	('Hành ??ng', 'P000001'),
	('Vi?n t??ng', 'P000001'),
	('Phiêu l?u', 'P000001'),
	('Hành ??ng', 'P000002'),
	('Vi?n t??ng', 'P000002'),
	('Kinh d?', 'P000003'),
	('K? ?o', 'P000003'),
	('Ho?t hình', 'P000004'),
	('Phiêu l?u', 'P000004'),
	('K? ?o', 'P000004'),
	('Hành ??ng', 'P000005'),
	('Vi?n t??ng', 'P000005'),
	('Hành ??ng', 'P000006'),
	('K? ?o', 'P000006'),
	('Kinh d?', 'P000007'),
	('K? ?o', 'P000007'),
	('Hành ??ng', 'P000008'),
	('K? ?o', 'P000008'),
	('Hành ??ng', 'P000009'),
	('Tâm lý', 'P000009'),
	('Hành ??ng', 'P000010'),
	('Tâm lý', 'P000010'),
	('Hài h??c', 'P000011'),
	('Tâm lý', 'P000011'),
	('Hành ??ng', 'P000012'),
	('Kinh d?', 'P000012'),
	('Vi?n t??ng', 'P000013'),
	('Phiêu l?u', 'P000013'),
	('Hài h??c', 'P000014'),
	('Âm nh?c', 'P000014'),
	('Vi?n t??ng', 'P000014'),
	('Phiêu l?u', 'P000015'),
	('Hành ??ng', 'P000015'),
	('Hành ??ng', 'P000016'),
	('Tâm lý', 'P000016'),
	('Vi?n t??ng', 'P000017'),
	('Phiêu l?u', 'P000017'),
	('Hành ??ng', 'P000018'),
	('Hài h??c', 'P000018'),
	('Tình c?m', 'P000018'),
	('Ho?t hình', 'P000019'),
	('Gia ?ình', 'P000019'),
	('Ho?t hình', 'P000020'),
	('Gia ?ình', 'P000020'),
	('Ho?t hình', 'P000021'),
	('Gia ?ình', 'P000021'),
	('Ho?t hình', 'P000022'),
	('Phiêu l?u', 'P000022'),
	('Ho?t hình', 'P000023'),
	('Phiêu l?u', 'P000023'),
	('Ho?t hình', 'P000024'),
	('Vi?n t??ng', 'P000024'),
	('Ho?t hình', 'P000025'),
	('Vi?n t??ng', 'P000025'),
	('Gia ?ình', 'P000025')