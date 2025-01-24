-----Stored Procedure
---Parameterless
CREATE PROCEDURE spGetAll
AS
BEGIN
SELECT * FROM Employees
END;

Drop Procedure spGetAll;


EXECUTE spGetAll;

---Parameterized

Drop Procedure spGetAllParam

CREATE PROCEDURE spGetAllParam(@EmployeeId int,
								@Name varchar(50))
AS
BEGIN
SELECT * FROM Employees where EmployeeId=@EmployeeId and Name=@Name
END;

EXECUTE spGetAllParam 1,'raj';

Drop procedure spInsert;

CREATE PROCEDURE spInsert(
@EmployeeId int,
@Name varchar(50),
@PerformanceScore int,
@DepartmentId int)
AS
BEGIN
INSERT INTO Employees(EmployeeID,Name,PerformanceScore,DepartmentId) VALUES(@EmployeeId,@Name,@PerformanceScore,@DepartmentId)
END;
EXECUTE spInsert @EmployeeId=4,@Name='raj',@PerformanceScore=10,@DepartmentId=10;


CREATE PROCEDURE spUpdate(
@EmployeeId int,
@Name varchar(25)
)
AS 
BEGIN
UPDATE Employees set EmployeeID=@EmployeeId,Name=@Name where EmployeeID=@EmployeeId;
END;

EXECUTE spUpdate @EmployeeId=4,@Name='ram';

SELECT * FROM Employees;

ALTER PROCEDURE spUpdate
    @EmployeeId INT,
    @Name VARCHAR(90)
AS
BEGIN
    -- Perform the update operation
    UPDATE Employees
    SET Name = @Name
    WHERE EmployeeID = @EmployeeId;

    
END;

EXECUTE spUpdate @EmployeeId=4,@Name='raj';


DROP PROCEDURE spDelete

CREATE PROCEDURE spDelete(
@EmployeeId int)
AS
BEGIN DELETE FROM Employees WHERE EmployeeID=@EmployeeId
END;




