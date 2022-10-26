--Lưu ý chajy script Quẻy trước khi chạy thử script này
USE HowKteam
--Cấu trúc truy vấn
SELECT * FROM dbo.BOMON -- lấy hết các dữ liệu trong bảng bộ môn
SELECT MABM FROM dbo.BOMON -- chỉ lấy dữ liệu ở cột bộ môn
SELECT MABM , TENBM FROM dbo.BOMON

--Đổi tên cột hiện thị

SELECT MABM AS '1', TENBM AS '2'  FROM dbo.BOMON

--xuất ra mã giáo viên + tên giáo viên + tên bộ môn giáo viên đó dạy
SELECT MAGV, HOTEN , TENBM FROM dbo.GIAOVIEN , dbo.BOMON

SELECT * FROM dbo.GIAOVIEN , dbo.BOMON
SELECT GV.MAGV, GV.HOTEN , BM.TENBM FROM dbo.GIAOVIEN AS GV , dbo.BOMON AS BM

--Bài tập
--1. Truy xuất thông tin của bảng tham gia đề tài
 SELECT * FROM dbo.THAMGIADT

--2. Lấy ra mã khoa và tên khoa tương ứng

 SELECT MAKHOA , TENKHOA FROM dbo.KHOA

--3. Lấy ra MaGv , tên Gv và tên khoa của giáo viên đó làm việc

SELECT GV.MAGV , GV.HOTEN , k.MAKHOA FROM dbo.GIAOVIEN AS GV , dbo.BOMON AS BM, dbo.KHOA AS K

--ép kiểu
SELECT CAST(KINHPHI AS VARCHAR(10)) AS test FROM dbo.DETAI

--Sắp xếp giảm dần lương
SELECT * FROM dbo.GIAOVIEN
ORDER BY LUONG DESC

--Sắp xếp lương tăng dần
SELECT * FROM dbo.GIAOVIEN
ORDER BY luong ASC

--Lấy ra số lượng chữ số sau dấu phẩy
SELECT ROUND(luong,2) AS luong FROM dbo.GIAOVIEN

--cộng 2 cột
SELECT LUONG + LUONG AS luong  FROM dbo.GIAOVIEN

--Chia 2 cột
SELECT ROUND(dbo.GIAOVIEN.LUONG/dbo.GIAOVIEN.LUONG,2) AS test FROM dbo.GIAOVIEN

--Lấy ra 3 dòng đầu truy vấn
SELECT TOP 3 luong FROM dbo.GIAOVIEN
