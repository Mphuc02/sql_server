USE HowKteam
GO
--1.Xuất ra thông tin giáo viên và giáo viên quản lý chủ nhiệm của người đó
SELECT GV1.HOTEN, GV2.HOTEN FROM dbo.GIAOVIEN AS GV1 , dbo.GIAOVIEN AS GV2
WHERE gv1.GVQLCM = gv2.MAGV

--2.Xuất ra số lượng giáo viên của khoa cntt
SELECT COUNT(*) FROM dbo.GIAOVIEN AS GV , dbo.KHOA AS K , dbo.BOMON AS BM
WHERE GV.MABM = BM.MABM
AND BM.MAKHOA = K.MAKHOA
AND K.MAKHOA = 'CNTT'

--3.Xuất ra thông tin giáo viên và đề tài người đó tham gia khi mà kết quả là đạt
SELECT GV.* FROM dbo.GIAOVIEN AS GV , dbo.THAMGIADT AS TG
WHERE GV.MAGV = TG.MAGV
AND TG.KETQUA = N'Đạt'

--4.In ra thông tin giáo viên có tên là chữ H
SELECT * FROM dbo.GIAOVIEN
WHERE HOTEN LIKE 'l%'

--5.Xuất ra thông tin giáo viên kết thúc bằng chữ N
SELECT * FROM dbo.GIAOVIEN
WHERE hoten LIKE '%n'

--6.Xuất ra thông tin giáo viên có tồn tại chữ n
SELECT * FROM dbo.GIAOVIEN
WHERE hoten LIKE '%n%'

--7.Phần tìm kiếm khuyết 1 hoặc vài chữ
SELECT * FROM dbo.GIAOVIEN
WHERE PHAI LIKE 'n_m'

SELECT * FROM dbo.GIAOVIEN
WHERE PHAI LIKE 'n__'