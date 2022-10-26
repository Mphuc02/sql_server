USE HowKteam
GO

--Xuất ra số lượng giáo viên trong từng bộ môn mà số giáo viên > 2
--Having như where của select nhưng dành cho group by
--having là where của group by
SELECT dbo.BOMON.MABM, COUNT(*) FROM dbo.GIAOVIEN,dbo.BOMON
WHERE dbo.BOMON.MABM = dbo.GIAOVIEN.MABM
GROUP BY dbo.BOMON.MABM
HAVING COUNT(*) > 2

--Xuất ra mức lương và tổng tuổi của giáo viên nhận mức lương đó và có người thân
--và tuổi > tuổi trung bình
SELECT luong, SUM(YEAR(GETDATE())-YEAR(dbo.GIAOVIEN.NGSINH)) FROM dbo.GIAOVIEN, dbo.NGUOITHAN
WHERE dbo.GIAOVIEN.MAGV = dbo.NGUOITHAN.MAGV
AND dbo.GIAOVIEN.MAGV IN (SELECT magv FROM dbo.NGUOITHAN)
GROUP BY LUONG, dbo.GIAOVIEN.NGSINH
HAVING YEAR(GETDATE())-YEAR(dbo.GIAOVIEN.NGSINH) > 
(
	(SELECT SUM(YEAR(GETDATE())-YEAR(dbo.GIAOVIEN.NGSINH)) FROM dbo.GIAOVIEN)
	/ (SELECT COUNT(*) FROM dbo.GIAOVIEN)
)