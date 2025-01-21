use Student;

Create clustered index IX_StudentTble_id
on Studentss (student_id asc);


Create unique nonclustered index IX_StudentTble_id
on Studentss (Name);


Execute sp_HelpIndex Studentss;

drop index Studentss.IX_StudentTble_id;

CREATE TABLE Studentss(student_id int,
					Name varchar(100),
					Salary int,
					Gender varchar(100));

					drop table Studentss;

Execute sp_helpindex Studentss;

INSERT INTO Studentss values(50,'Mukta',1000,'female')
INSERT INTO Studentss values(30,'Akshay',20000,'male')
INSERT INTO  Studentss values(40,'Ganesh',5000,'male')
INSERT INTO Studentss values(10,'Khushi',7000,'female')


drop table Studentss;

DESCRIBE Studentss;




SELECT *  FROM Studentss;

SELECT COUNT(*) FROM Studentss;

SELECT SUM(Salary) FROM Studentss;

SELECT AVG(Salary) FROM Studentss;
-- Returns the average salary of employees
SELECT MIN(Salary) FROM Studentss;
-- Returns the lowest salary
SELECT MAX(Salary) FROM Studentss;
-- Returns the highest salary




SELECT Name,REPLACE(Name,'a','g') as Duplicate from Studentss;

SELECT ASCII('M');

SELECT CHAR(97);

SELECT LTRIM ('    MUKTA');

SELECT RTRIM ('MUKTA    ')

SELECT UPPER('MUKTA');

SELECT REVERSE('MUKTA');

SELECT LEN('  MUKTA  ');

SELECT RIGHT('MUKTA',3);

SELECT LEFT('MUKTA',3);

SELECT CHARINDEX('@','mukta@gmail.com');

SELECT CONCAT('MUKTA ','WARAD');

SELECT SUBSTRING(('mukta@gmail.com'),CHARINDEX('@','mukta@gmail.com'),LEN('mukta@gmail.com')-charindex('0','mukta@gmail.com'));

SELECT REPLICATE( 'MUKTA ',5);

SELECT SPACE(5);

SELECT PATINDEX('@','mukta@gmail.com');

SELECT GETDATE();

SELECT SYSDATETIME() as systemDate;

SELECT CURRENT_TIMESTAMP;

SELECT ABS(-10);

SELECT ROUND(123.456, 2);

SELECT CEILING(123.45);

SELECT FLOOR(123.45);

SELECT RAND();

SELECT SIGN(-10);

SELECT YEAR('2025-01-21');
-- Returns 2025
SELECT MONTH('2025-01-21');
-- Returns 1
SELECT DAY('2025-01-21');
-- Returns 21
SELECT GETUTCDATE();
-- Returns the current UTC date and time














 

  



