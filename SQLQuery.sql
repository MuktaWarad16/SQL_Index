Create table Students (student_id int,
					student_name varchar,
					hiredate date,
					salary decimal,
					Email varchar)

Alter table Students
		add college varchar;




		ALTER TABLE Students 
DROP COLUMN salary;

ALTER TABLE Students
ADD CONSTRAINT unique_email UNIQUE (Email);

ALTER TABLE Students
DROP CONSTRAINT email;

DROP TABLE Student;









