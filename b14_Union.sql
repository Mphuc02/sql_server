USE HowKteam
GO

SELECT * FROM dbo.GIAOVIEN

SELECT * FROM dbo.NGUOITHAN

SELECT magv FROM dbo.GIAOVIEN
WHERE LUONG < 2000
UNION
SELECT magv FROM dbo.NGUOITHAN
WHERE PHAI = N'Nữ'