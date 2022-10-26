USE HowKteam
GO

--kiểm tra xem giáo viên 001 có phải là giáo viên chủ nhiệm hay không ?
--Lấy ra danh sách các mã giáo viên QLcm
--Kiểm tra mã GV tồn tạitrong danh sách đó
SELECT * FROM dbo.GIAOVIEN
WHERE MAGV = '001'
AND /* 001 tôn tại trong danh sách */ magv IN ( SELECT GVQLCM FROM dbo.GIAOVIEN )

--Truy vấn lồng

SELECT * FROM dbo.GIAOVIEN, 
(SELECT * FROM dbo.DETAI) AS dt

--Xuất ra danh sách giáo viên tham gia nhiều hơn 1 đề tài
--Lấy ra tất cả thông tin của giáo viên khi mà số lượng đề tài tham gia > 1
SELECT * FROM dbo.GIAOVIEN AS GV
WHERE 
( SELECT COUNT(*) FROM dbo.THAMGIADT WHERE MAGV = gv.MAGV ) > 1


--Xuất ra thông tin của khoa mà có nhiều hơn 2 giáo viên
--Lấy được danh sách bộ môn nằm trong khoa hiện tại
SELECT * FROM dbo.KHOA AS k 
WHERE 2 <
(
	SELECT COUNT(*) FROM dbo.BOMON AS bm , dbo.GIAOVIEN AS gv
	WHERE bm.MAKHOA = k.MAKHOA
	AND bm.MABM = gv.MABM
)

--Tính trung bình cộng 3 dòng giáo viên có lương cao nhất
SELECT ROUND(aVG(luong),2)
FROM
dbo.GIAOVIEN
WHERE
dbo.GIAOVIEN.MAGV IN
(
	SELECT TOP 3
	dbo.GIAOVIEN.MAGV
	FROM dbo.GIAOVIEN
	ORDER BY
	LUONG DESC
)
