USE SQLDBUI

--Thêm dữ liệu
--kiểu số: số bình thường
--Kiểu ký tự hoặc ngày cần để trong cặp nháy đơn
--Nếu là unicode thì cần có N phía trước ''
INSERT dbo.SinhVien
(
    MaSv,
    TenSv,
    NgaySinh
)
VALUES
(   N'',       -- MaSv - nvarchar(10)
    N'',       -- TenSv - nvarchar(100)
    GETDATE() -- NgaySinh - date
)

CREATE TABLE test
(
	maSo INT,
	ten NVARCHAR(20),
	tienLuong float
)

INSERT dbo.test
(
    maSo,
    ten,
    tienLuong
)
VALUES
(   6,   -- maSo - int
    N'Đinh Minh Phúc', -- ten - nvarchar(20)
    1.0  -- tienLuong - float
)
--Thay đổi giá trị khi xem ở chế độ edit 200 rows

--Xoá dữ liệu
--nếu chỉ delete + tên bảng thì sẽ xoá toàn bộ dữ liệu trong bảng
--các toán tử > , < , >= , <= , <> (khác !=) , and , or , =
DELETE dbo.test WHERE maSo = 11
DELETE dbo.test WHERE tienLuong > 10 AND maSo < 15


--UPdate dữ liệu
UPDATE dbo.test SET tienLuong = 40
UPDATE dbo.test SET maSo = 5,tienluong = 50
UPDATE dbo.test SET maSo = 4 WHERE tienLuong = 50
UPDATE dbo.test SET ten = 'phuc' WHERE maSo = 4

--concat dùng để nối 2 xâu
UPDATE dbo.test SET ten = CONCAT('rename' , ten)