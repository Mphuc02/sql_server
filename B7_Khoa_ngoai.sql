CREATE DATABASE primaryForeign
GO

USE primaryForeign
GO

CREATE TABLE BoMon
(
	MaBm CHAR(10) PRIMARY KEY,
	Name NVARCHAR(100) DEFAULT N'Tên bộ môn'
)
GO

CREATE TABLE Lop
(
	MaLop CHAR(10) NOT NULL,
	Name NVARCHAR(100) DEFAULT N'Tên lớp'

	PRIMARY KEY (MaLop)
)
GO

--Điều kiện để tạo khoá ngoại:
--Tham chiếu tới khoá chính
--Unique,not null 
--Cùng kiểu dữ liệu
--Cùng số lượng trường có sắp xếp

--Lợi ích:
--Đảm bảo toàn vẹn dữ liệu, không có trường hợp tham chiếu tới dữ liệu không tồn tại


CREATE TABLE GiaoVien
(
	MaGV CHAR(10) NOT NULL,
	Name NVARCHAR(100) DEFAULT N'Tên giáo viên',
	DiaChi NVARCHAR(100) DEFAULT N'Địa chỉ giáo viên',
	Sex bit ,
	--Tạo khoá ngoại ngay khi tạo bảng
	MaBm CHAR(10) FOREIGN KEY(MaBm) REFERENCES dbo.BoMon(MaBm)
)
GO
ALTER TABLE dbo.GiaoVien ADD CONSTRAINT PK_GV PRIMARY KEY(MaGV)
--ALTER TABLE dbo.GiaoVien ADD PRIMARY KEY (MaGV) 


CREATE TABLE HocSinh
(
	MaHS CHAR(10) PRIMARY KEY,
	Name NVARCHAR(100)
)
GO

--tạo khoá bảng sau khi tạo bảng
ALTER TABLE dbo.HocSinh ADD CONSTRAINT FK_HS FOREIGN KEY(MaHS) REFERENCES dbo.Lop(MaLop)

--huỷ khoá
ALTER TABLE dbo.HocSinh DROP CONSTRAINT FK_HS

INSERT INTO dbo.BoMon
(
    MaBm,
    Name
)
VALUES
(   'BM01', -- MaBm - char(10)
    N'Bộ môn 1' -- Name - nvarchar(100)
    )


INSERT dbo.GiaoVien
(
    MaGV,
    Name,
    DiaChi,
    Sex,
    MaBm
)
VALUES
(   'GV02',   -- MaGV - char(10)
    N'A',  -- Name - nvarchar(100)
    N'1',  -- DiaChi - nvarchar(100)
    1, -- Sex - bit
    'BM02'    -- MaBm - char(10)
    )
