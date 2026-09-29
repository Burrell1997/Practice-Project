 --CREATE TABLE table_name (
   -- column1 datatype constraint,
    --column2 datatype constraint,
    --column3 datatype constraint
--);
 
 
-- ALTER TABLE old_table_name RENAME TO new_table_name;
 
 --ALTER TABLE Users
--ADD PRIMARY KEY (UserID);
 
 
--INSERT INTO table_name (column1, column2)
--VALUES 
 --   (value1_a, value2_a),
 --   (value1_b, value2_b),
 --  (value1_c, value2_c);
 
 
 
 create table Students ( 
 student_id varchar not null Primary Key,
 first_name varchar not null,
 last_name varchar not null,
 class varchar,
 age int);
 
 
 create table marksheet (
 score int,
 year int,
 ranking int,
 class varchar,
 student_id varchar
 );
 
INSERT INTO Students (student_id, first_name, last_name, class, age) VALUES
('1', 'krishna', 'gee', '10', 18),
('2', 'Stephen', 'Christ', '10', 17),
('3', 'Kailash', 'kumar', '10', 18),
('4', 'ashish', 'jain', '10', 16),
('5', 'khusbu', 'jain', '10', 17),
('6', 'madhan', 'lal', '10', 16),
('7', 'saurab', 'kothari', '10', 15),
('8', 'vinesh', 'roy', '10', 14),
('9', 'rishika', 'r', '10', 15),
('10', 'sara', 'rayan', '10', 16),
('11', 'rosy', 'kumar', '10', 16);


INSERT INTO marksheet (score, year, class, ranking, student_id) VALUES
(989, 2014, '10', 1, '1'),
(454, 2014, '10', 10, '2'),
(880, 2014, '10', 4, '3'),
(870, 2014, '10', 5, '4'),
(720, 2014, '10', 7, '5'),
(670, 2014, '10', 8, '6'),
(900, 2014, '10', 3, '7'),
(540, 2014, '10', 9, '8'),
(801, 2014, '10', 6, '9'),
(420, 2014, '10', 11, '10'),
(970, 2014, '10', 2, '11'),
(720, 2014, '10', 12, '12');


--Write a query to display the student ID and first name of every 
--student in the students table whose age is greater than or equal to 16 and whose last name is Kumar 

select student_id, first_name from Students s where age >= 16 and s.last_name ='kumar';

--Write a query to display the details of every student 
--from the marksheet table whose score is between 800 and 1000 

select * from marksheet m where score BETWEEN 800 and 1000;


--Write a query to increase the score in the marksheet 
--table by five and create a new score column to display this new score 

select *, (Score + 5) as New_Score from marksheet m ;

--Write a query to display the marksheet table in descending order of the score 

select * from marksheet m ORDER by score desc;

--Write a query to display the details of every student whose first name starts with an ‘a’ 

select * from Students WHERE first_name like 'a%';
