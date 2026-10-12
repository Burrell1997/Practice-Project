 --1 (SQLite won't allow)
 
 create database XYZ;
 
  --CREATE TABLE table_name (
   -- column1 datatype constraint,
    --column2 datatype constraint,
    --column3 datatype constraint
--);
 
 --2
create table Employee (
emp_id int Primary Key,
f_name varchar(255),
l_name varchar(255),
job_id int,
salary int,
manager_id int,
dept_id int);

--3
INSERT INTO Employee (emp_id, f_name, l_name, job_id, salary, manager_id, dept_id)
VALUES
(101, 'John', 'Smith', 'JP123', 70000, 2, 30),
(102, 'Emily', 'Johnson', 'EN456', 80000, 3, 40),
(103, 'Michael', 'Williams', 'MW789', 90000, 4, 20),
(104, 'Emma', 'Jones', 'EJ567', 75000, 2, 10),
(105, 'Calvin', 'Miller', 'CM345', 85000, 3, 30),
(106, 'Sophia', 'Davis', 'SD678', 95000, 4, 20),
(107, 'Liam', 'Moore', 'LM901', 72000, 2, 40),
(108, 'Olivia', 'Anderson', 'OA234', 87000, 3, 10),
(109, 'William', 'Brown', 'WB567', 92000, 4, 30),
(110, 'Ava', 'Taylor', 'AT890', 78000, 2, 20);

--Checking
select * from Employee;

--4
select f_name, l_name, salary from Employee e where salary > 
(select salary from Employee where f_name > 'Calvin');

--5
select e.emp_id, e.l_name, salary
from Employee e where salary > (select avg(salary) from Employee);

--6
select e.emp_id, e.f_name, e.salary 
from Employee e 
where e.salary  > (select salary from Employee where job_id = 'MW789');

--6 (Validation)
select job_id, salary, e.f_name
from Employee e order by salary DESC;

--7 
select e.f_name, e.l_name, e.salary 
from Employee e order by e.salary desc limit 3;



