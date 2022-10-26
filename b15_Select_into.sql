USE HowKteam
GO

--Lấy hết dữ liệu của bảng GV đưa vào bảng mới tên là tableA
--Bảng này có các record tương ứng bảng gv
--Bảng được coppy phải chưa tồn tại

SELECT * INTO tableA
FROM dbo.GIAOVIEN

--Tạo ra 1 bảng tableB mới có 1 cột dữ liệu là họ tên tương ứng như GV
SELECT hoTen INTO tableB
FROM dbo.GIAOVIEN

--Tạo ra 1 bảng backup bảng GV đưa vào DB backup
SELECT * INTO tableTest
FROM dbo.GIAOVIEN

--Tạo ra một bảng GVBK y chang nhưng không có dữ liệu
SELECT * INTO GVBK
FROM dbo.GIAOVIEN
WHERE 6>9 