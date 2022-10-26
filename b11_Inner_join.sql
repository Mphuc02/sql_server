﻿USE HowKteam
GO

--Inner join -> kiểu cũ -> có thể sau này không còn được hỗ trợ
SELECT * FROM dbo.GIAOVIEN , dbo.BOMON
WHERE dbo.BOMON.MABM = dbo.GIAOVIEN.MABM

--Kiểu mới
SELECT * FROM 
dbo.GIAOVIEN INNER JOIN dbo.BOMON
ON BOMON.MABM = GIAOVIEN.MABM AND BOMON.TRUONGBM = GIAOVIEN.MAGV

--có thể viêt tắt
SELECT * FROM dbo.KHOA JOIN dbo.BOMON
ON BOMON.MAKHOA = KHOA.MAKHOA