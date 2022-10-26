--Unique: duy nhất -> trong toàn bộ bảng, trường nào có từ khoá unique thì không thể có 2 giá trị
--Not null: trường đó không có phép null
--default: giá trị mặc định của trường đó nếu không có giá trị
USE SQLDBUI

--Cách 1:
CREATE TABLE testPrimaryKey
(
	Id INT UNIQUE NOT NULL ,
	Name NVARCHAR(100) DEFAULT N'Dinh Minh Phuc'
)
GO

--Cách 2: sau khi tạo bảng, muốn tạo khoá chính
ALTER TABLE dbo.testPrimaryKey ADD PRIMARY KEY (Id) -- Xác nhận trường(cột) Id là khoá chính

--Cách 3: Tạo primary key trong bảng ngay
CREATE TABLE testPrimaryKey2
(
	ID INT NOT NULL,
	Name NVARCHAR(100) DEFAULT N'Minh Phuc'

	PRIMARY KEY (ID)
)

--Cách 4:  
CREATE TABLE testPrimaryKey3
(
	ID INT NOT NULL,
	Name NVARCHAR(100) DEFAULT N'Minh Phuc'

	CONSTRAINT pK_test3 -- sau này xoá key cho dễ
	PRIMARY KEY (ID)
)

--Cách 5: tạo key sau khi tạo bảng và đặt tên
CREATE TABLE testPrimaryKey4
(
	ID INT NOT NULL,
	Name NVARCHAR(100) DEFAULT N'Minh Phuc'
)
ALTER TABLE testPrimaryKey4 
ADD CONSTRAINT pk_test4 
PRIMARY KEY (ID)


--Khoá chính có 2 trường
CREATE TABLE testPrimaryKey5
(
	ID1 INT NOT NULL,
	ID2 INT NOT NULL,
	Name NVARCHAR(100) DEFAULT N'Minh Phuc'

	PRIMARY KEY ( ID1 , ID2 )
)
--Những cách phải thêm ',' và tên trường

INSERT dbo.testPrimaryKey
(
    Id
)
VALUES
(   
	10 -- Id - int
)

--Nếu không khai báo id cho khoá chính thì dùng lệnh sau để tìm khoá chính
select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS  