------Trigger------
----after and logon trigger

-- Step 1: Create the EmpLog table
CREATE TABLE EmpLog(
    TgrId INT IDENTITY(1,1),
    id INT,
    Name VARCHAR(60),
    Operation VARCHAR(25),
    UpdatedAt DATETIME
);

drop table EmpLog;

-- Create the tblEmp table if it doesn't exist
CREATE TABLE tblEmp (
    id INT PRIMARY KEY,
    Name VARCHAR(60),
    Salary DECIMAL(10,2),
    Gender VARCHAR(10),
    City VARCHAR(50)
);


-- Step 2: Create trigger to log inserts on tblEmp
CREATE TRIGGER EmpTrg
ON tblEmp
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO EmpLog(id, Name, Operation, UpdatedAt)
    SELECT id, Name, 'Insert', GETDATE() FROM inserted;
END;

-- Step 3: Insert a new employee (should trigger EmpTrg)
INSERT INTO tblEmp(id, Name, Salary, Gender, City)
VALUES(15, 'JOE', 50000, 'FEMALE', 'Bangalore');

-- Step 4: Create trigger to log updates on tblEmp
CREATE TRIGGER EmpUpdate
ON tblEmp
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO EmpLog(id, Name, Operation, UpdatedAt)
    SELECT id, Name, 'Update', GETDATE() FROM inserted;
END;

-- Step 5: Update a record in tblEmp (should trigger EmpUpdate)
UPDATE tblEmp
SET Name = 'Doe'
WHERE id = 5;

-- Step 6: Create view based on UserDemo table
CREATE VIEW UserDemoDetails AS
SELECT Name, age, Email FROM UserDemo;

-- Step 7: Insert into UserDemo table
INSERT INTO UserDemo(Name, age)
VALUES('John', 12);




------------VIEWS------------

CREATE TABLE Student(
ename varchar (19),
id int,
)

INSERT INTO Student(ename,id) values ('john',10)

CREATE VIEW Student_View
AS 
SELECT * FROM Student;

SELECT * FROM Student_View;

CREATE TABLE Employee(emp_id int,
					ename varchar(100),
					department varchar(100),
					dept_id varchar(100)
					)

					Drop table Employee

CREATE TABLE Department(dept_name varchar(100),
						id int
					)

					Insert into Employee(emp_id,ename,department,dept_id) values (10,'john','sales',1)
					Insert into Employee(emp_id,ename,department,dept_id) values (20,'jack','testing',2)

					Insert into Department(dept_name,id ) values ('sales',10)
					Insert into Department(dept_name,id ) values ('developer',20)

					CREATE VIEW Dept_Employee_View
					AS
					SELECT e.emp_id,e.ename,e.department,e.dept_id from Employee e
					JOIN Department d ON e.dept_id=d.id;

					 
