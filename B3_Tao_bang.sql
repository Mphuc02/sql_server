--tạo bảng trong Database nào thì thêm dòng này
USE SQLDBUI
CREATE TABLE GiaoVien
(
	MaGiaoVien NVARCHAR(10),
	TenGiaoVien NVARCHAR(100)
)
CREATE TABLE SinhVien
(
	MaSv NVARCHAR(10),
	TenSv nvarchar(100)
)

CREATE DATABASE test
GO
--GO dùng để ngắt chương trình và tạo ra database có tên là test
--nếu không có GO thì sẽ ra lỗi vì chưa tạo đươc database
USE test
GO

CREATE TABLE erase
(
	tensv NVARCHAR(5)
)

--Sửa bảng, thêm cột ngày sinh
ALTER TABLE SQLDBUI.dbo.SinhVien ADD NgaySinh DATE

--Xoá toàn bộ dữ liệu của bảng
--TRUNCATE TABLE SQLDBUI.dbo.SinhVien

--Gỡ bảng khỏi Database
--DROP TABLE SQLDBUI.dbo.SinhVien
--Go