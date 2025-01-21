Create database Employee
use Employee


Create table Employee (id int,
					name varchar(90),
					hiredate date,
					salary decimal(10,2),
					Email varchar(100));
					
					
					Alter table Employee
		add college varchar(100);
	
	
	ALTER TABLE Employee
DROP COLUMN salary;


ALTER TABLE Employee
DROP column hiredate;


Insert into dbo.Employee (id,name,Email,college) values(2,'mukta','m@gmail.com','kle');
Insert into dbo.Employee (id,name,Email,college) values(3,'yukta','y@gmail.com','sfs');
Insert into dbo.Employee (id,name,Email,college) values(4,'rukta','r@gmail.com','st.johns');




UPDATE Employee
SET name = 'muktaw'  
WHERE id = 2;

DELETE FROM Employee
WHERE id =4;




Select * from Employee_details where id>3;

Select name from Employee where id<3;

Select * from Employee order by id desc having id >1;

Select top 3 name from Employee where id>1;

Select * from Employee offset 1 ;

Select * from Employee where id between 1 and 4 and name contains 'kta';

SELECT * 
FROM Employee
WHERE id IN (2,4);






drop  table Employee;




















