
Create table Manager (id int,
					name varchar(90),
					hiredate date,
					Email varchar(100));

					select * from Manager;

					SELECT id,first_name FROM Employee_details  
					UNION ALL
					SELECT id,name from Manager;

			

					SELECT id,first_name FROM Employee_details  
					intersect
					SELECT id,name from Manager;

					
					SELECT id,first_name FROM Employee_details  
					EXCEPT 
					SELECT id,name from Manager;

					

					





