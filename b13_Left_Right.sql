USE HowKteam
GO

--Left join
SELECT * FROM dbo.BOMON LEFT JOIN dbo.GIAOVIEN
ON BOMON.MABM = GIAOVIEN.MABM
--Bảng bên phải được nhập vào bảng bên trái
--Record nào bảng bên phải không có thì để Null
--Record nào bảng trái không có thì không điền vào

--right join
SELECT * FROM dbo.GIAOVIEN RIGHT JOIN dbo.BOMON
ON BOMON.MABM = GIAOVIEN.MABM

--left join
--Thực hiện tìm kiếm lần lượt cột của bảng bên phải so với cột của bảng bên trái
--Nếu 2 tìm thấy sẽ hiện ra kết quả, nếu không thấy cột bên phải sẽ có kết quả null

--Right join thì ngược lại với left join