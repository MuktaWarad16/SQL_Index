Create table EmployeePayRoll(

EmpId int identity(1,1),
EmpName varchar(50),
EmpAddress varchar(255),
EmpPhone varchar(10),
EmpDept varchar(25),
EmpSalary varchar(20)
)

Select * from EmployeePayRoll 
Create procedure spAddEmployee(
@EmpName varchar(50),
@EmpAddress varchar(255),
@EmpPhone varchar(10),
@EmpDept varchar(25),
@EmpSalary varchar(20)
)



as 
begin
insert into EmployeePayRoll(EmpName,EmpAddress,EmpPhone,EmpDept,EmpSalary) values (@EmpName,@EmpAddress,@EmpPhone,@EmpDept,@EmpSalary)
end;

create procedure spUpdateEmployee(
@EmpId int,
@EmpSalary int
)
as 
begin
Update EmployeePayRoll set EmpSalary=@EmpSalary where EmpId =@EmpId
end;

CREATE PROCEDURE spDeleteEmployee
    @EmployeeId INT
AS
BEGIN
    DELETE FROM EmployeePayRoll
    WHERE EmpId = @EmployeeId;
END;








