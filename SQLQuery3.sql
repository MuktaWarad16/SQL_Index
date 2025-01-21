select * from Employee_details;

SELECT * FROM Employee_details ORDER BY first_name;

SELECT DISTINCT FIRST_NAME FROM Employee_details where id between 5 and 10 ;

SELECT * FROM Employee_details WHERE first_name LIKE 'M%';

SELECT * FROM Employee_details  GROUP BY ID HAVING id BETWEEN 100 AND 500;

SELECT id
FROM Employee_details
GROUP BY ID
HAVING ID BETWEEN 100 AND 500;

SELECT * 
FROM Employee_details
ORDER BY id
OFFSET 20 ROWS
FETCH NEXT 10 ROWS ONLY;

SELECT TOP 3 id
FROM Employee_details
ORDER BY id;



