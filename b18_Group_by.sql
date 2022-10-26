USE HowKteam
GO

--In ra danh sách tên bộ môn và số lượng giáo viên bộ môn đó
SELECT TENBM, COUNT(*) FROM dbo.BOMON , dbo.GIAOVIEN
WHERE dbo.BOMON.MABM = dbo.GIAOVIEN.MABM
GROUP BY TENBM 

--cột hiển thị phải là thuộc tính nằm trong khối group by hoặc là agreeate function
SELECT TENBM, BOMON.MABM, PHONG ,COUNT(*) FROM dbo.BOMON , dbo.GIAOVIEN
WHERE dbo.BOMON.MABM = dbo.GIAOVIEN.MABM
GROUP BY TENBM , dbo.BOMON.MABM, PHONG

--Lấy ra danh sách giáo viên có lương > lương trung bình của giáo viên
SELECT * FROM dbo.GIAOVIEN
WHERE luong>
((SELECT SUM(luong) FROM dbo.GIAOVIEN)/
(SELECT COUNT(*) FROM dbo.GIAOVIEN))

--Xuất ra tên giáo viên và số lượng đề tài giáo viên đó làm
SELECT * FROM dbo.DETAI
SELECT * FROM dbo.THAMGIADT

SELECT gv.HOTEN , COUNT(*) FROM dbo.GIAOVIEN AS gv, dbo.THAMGIADT AS tgdt
WHERE gv.MAGV = tgdt.MAGV
GROUP BY gv.MAGV , gv.hoten
/*
Agreeate Function

AVG()	Returns the average value
COUNT()	Returns the number of rows
FIRST()	Returns the first value
LAST()	Returns the last value
MAX()	Returns the largest value
MIN()	Returns the smallest value
ROUND()	Rounds a numeric field to the number of decimals specified
SUM()	Returns the sum
*/


/*
string function

CHARINDEX	Searches an expression in a string expression and returns its starting position if found
CONCAT()	 
LEFT()	 
LEN() / LENGTH()	Returns the length of the value in a text field
LOWER() / LCASE()	Converts character data to lower case
LTRIM()	 
SUBSTRING() / MID()	Extract characters from a text field
PATINDEX()	 
REPLACE()	 
RIGHT()	 
RTRIM()	 
UPPER() / UCASE()	Converts character data to upper case
*/