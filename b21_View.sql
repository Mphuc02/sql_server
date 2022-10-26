USE HowKteam
GO

--Tạo ra 1 bảng lưu thông tin tên bộ môn và lương của giáo viên đó
SELECT hoten, TENBM, luong INTO luongGiaoVien
FROM dbo.GIAOVIEN,dbo.BOMON
WHERE
dbo.BOMON.MABM = dbo.GIAOVIEN.MABM

--View là bảng ảo
--Cập nhật dữ liệu theo bảng mà view truy vấn tới mỗi khi lấy view ra sử dụng
CREATE VIEW testView AS
SELECT * FROM dbo.GIAOVIEN

SELECT * FROM testView

--Xoá view
DROP VIEW testView

--Update view
ALTER VIEW testView AS
SELECT hoten FROM dbo.GIAOVIEN

CREATE VIEW [giáo dục miễn phí] AS
SELECT * FROM khoa

SELECT * FROM [giáo dục miễn phí]