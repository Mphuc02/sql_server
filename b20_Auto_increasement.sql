USE HowKteam
GO

CREATE TABLE testAuto
(
	ID INT PRIMARY KEY IDENTITY,-- tự tăng lên khi insert dữ liệu, Mặc định bắt đầu từ 1, mỗi lần tăng 1 đơn vị
	Name NVARCHAR(100)
)

DROP TABLE dbo.testAuto

INSERT dbo.testAuto
(
    Name
)
VALUES
(   
    N'Minh' -- Name - nvarchar(100)
    )

CREATE TABLE testAuto
(
	ID INT PRIMARY KEY IDENTITY(5,10),-- tự tăng lên khi insert dữ liệu, Mặc định bắt đầu từ 5, mỗi lần tăng 10 đơn vị
	Name NVARCHAR(100)
)
