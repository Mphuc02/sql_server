USE HowKteam
GO

SELECT GV.MAGV , GV.HOTEN , NT.TEN FROM dbo.GIAOVIEN AS GV , dbo.NGUOITHAN AS NT
WHERE GV.MAGV = NT.MAGV

SELECT * FROM dbo.GIAOVIEN AS GV , dbo.NGUOITHAN AS NT

--Lấy ra giáo viên lương > 2000
SELECT * FROM dbo.GIAOVIEN
WHERE luong > 2000

--Lấy ra giáo viên là nữ à lương > 2000
SELECT * FROM dbo.GIAOVIEN
WHERE luong > 2000 AND PHAI = N'NỮ'

--Lấy ra giáo viên lớn hơn 40 tuổi
SELECT * FROM dbo.GIAOVIEN
WHERE YEAR(GETDATE()) - YEAR(NGSINH) > 40
--Year: lấy ra năm của ngày
--Getdate: lấy ra ngày hiện tại

--Lấy ra  họ tên , năm sinh và tuổi giáo viên lớn hơn  40 tuổi
SELECT HOTEN , NGSINH , YEAR(GETDATE()) - YEAR(NGSINH) AS tuổi FROM dbo.GIAOVIEN
WHERE YEAR(GETDATE()) - YEAR(NGSINH) > 40

--Lấy ra  mã GV , tên GV và tên khoa của giáo viên đó
SELECT GV.MAGV , GV.HOTEN , K.TENKHOA FROM dbo.GIAOVIEN AS GV , dbo.BOMON AS BM , dbo.KHOA AS K
WHERE GV.MABM = BM.MABM AND BM.MAKHOA = K.MAKHOA

--Lấy ra giáo viên là trưởng bộ môn
SELECT * FROM dbo.GIAOVIEN AS GV , dbo.BOMON AS BM
WHERE GV.MAGV = BM.TRUONGBM

--Đến số lượng giáo viên
--COUNT(*): đếm số lượng của tất cả record
--COUNT(tên trường nào đó): đếm số lượng của tên trường đó
SELECT COUNT(magv) AS N'số luọng giáo viên' FROM dbo.GIAOVIEN

--đếm số lượng người thân của giáo viên có mẫ gv là 007
SELECT COUNT(*) AS N'Số lượng người thân' FROM dbo.GIAOVIEN , dbo.NGUOITHAN
WHERE dbo.GIAOVIEN.MAGV = '007'

--Lấy ra tên giáo viên và tên đề tài người đó tham gia
SELECT HOTEN , TENDT  FROM dbo.GIAOVIEN , dbo.THAMGIADT , dbo.DETAI 
WHERE dbo.GIAOVIEN.MAGV = dbo.THAMGIADT.MAGV
AND dbo.DETAI.MADT = dbo.THAMGIADT.MADT

--between 
SELECT * FROM dbo.GIAOVIEN
WHERE YEAR(GETDATE()) - YEAR(NGSINH) BETWEEN 10 AND 90

SELECT * FROM dbo.GIAOVIEN
WHERE GVQLCM is null