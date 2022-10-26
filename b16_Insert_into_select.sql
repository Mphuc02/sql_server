USE HowKteam
GO

--Được dùng để lấy dữ liệu từ 1 bảng vào 1 bảng khác đã tồn tại
SELECT * INTO cloneGV
FROM dbo.GIAOVIEN
WHERE 1 = 0

INSERT INTO dbo.cloneGV
SELECT * FROM dbo.GIAOVIEN

SELECT * FROM dbo.cloneGV

