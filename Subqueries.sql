use Employee;




Select CustomerID,Name,Email,City from Customers 
Where CustomerID  in(
					Select OrderDetails.OrderID from OrderDetails Join Products on OrderDetails.ProductId=Products.ProductID
					Group by OrderDetails.OrderID 
					having Sum(OrderDetails.quantity*Products.price)>100);

---Get data of employees whose performance score is greater than the average of performance score of the employees

Select EmployeeId,Name,PerformanceScore from Employees where
PerformanceScore>(Select AVG(PerformanceScore) from Employees);

CREATE TABLE TempEmps (EmployeeID int,Name varchar,Salary int) ;

Select * from TempEmps;

alter table TempEmps add DepartmentID int;

create table Department1(DepartmentID int,Departmentname varchar(100));
select * from Department1

Alter table Department1 add PerformanceScore int;
Alter table Employees add DepartmentId int,PerformanceScore int;
insert into Department1 values(1,'Sales',10);

---insert data into temp table where specific department is mentioned

SELECT PerformanceScore
FROM Department1
WHERE Department1.DepartmentID = (SELECT DepartmentId FROM Employees WHERE EmployeeID = 1);  -- Use a specific EmployeeID for testing

insert into TempEmps(EmployeeID,Name,Salary)
select EmployeeID,Name,PerformanceScore
from Employees where PerformanceScore=
(Select PerformanceScore from Department1 where Department1.DepartmentID=Employees.Department1ID);

select * from TempEmps;
---CTE
---Find employee with performanceScore Above Average



WITH AvgSalCTE AS (
    SELECT DepartmentId, AVG(PerformanceScore) AS AVGPerformanceScore
    FROM Employees
    GROUP BY DepartmentId
)
SELECT e.EmployeeID, e.Name, e.PerformanceScore, e.DepartmentId
FROM Employees e
JOIN AvgSalCTE CTE ON e.DepartmentId = CTE.DepartmentId
WHERE e.PerformanceScore > CTE.AVGPerformanceScore;


----Increment salary of employees from specific city newYork
With NewYorkCTE as (SElect DepartmentId from Department1 where Departmentname='NewYork')

Update Employees set PerformanceScore=PerformanceScore+10 where DepartmentId in
(Select DepartmentID From NewYorkCTE)

Select * from Employees

