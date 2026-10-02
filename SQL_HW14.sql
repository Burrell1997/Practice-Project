 --CREATE TABLE table_name (
   -- column1 datatype constraint,
    --column2 datatype constraint,
    --column3 datatype constraint
--);
 
  create table patients_datasets (
  date INT,
  pid varchar(255) Primary Key,
  p_name varchar(255),
  age int,
  weight int,
  gender varchar(255),
  location varchar(255),
  phone_no int,
  disease varchar(255),
  doctor_name varchar(255),
  doctor varchar(255)
  );
  
  
  
 INSERT INTO patients_datasets
(date, pid, p_name, age, weight, gender, location, phone_no, disease, doctor_name, doctor_id)
VALUES
('15-06-2019','AP2021','Sarath',67,76,'Male','chennai',5462829,'Cardiac','Mohan',21),
('13-02-2019','AP2022','John',62,80,'Male','banglore',1234731,'Cancer','Suraj',22),
('08-01-2018','AP2023','Henry',43,65,'Male','Kerala',9028320,'Liver','Mehta',23),
('04-02-2020','AP2024','Carl',56,72,'Female','Mumbai',9293829,'Asthma','Karthik',24),
('15-09-2017','AP2025','Shikar',55,71,'Male','Delhi',7821281,'Cardiac','Mohan',21),
('22-07-2018','AP2026','Piysuh',47,59,'Male','Haryana',8912819,'Cancer','Suraj',22),
('25-03-2017','AP2027','Stephen',69,55,'Male','Gujarat',8888211,'Liver','Mehta',23),
('22-04-2019','AP2028','Aaron',75,53,'Male','Banglore',9012192,'Asthma','Karthik',24);

 
 SELECT * from patients_datasets pd;
 
 select count(pid) from patients_datasets pd;
 
 
--Write a query to display the patient id and patient name with the current date
--Write a query to display the old patient name and the new patient name in uppercase
--Write a query to display the patients' names along with the total number of characters in their name
--Write a query to combine the patient's name and the doctor's name in a new column
--Write a query to extract the year for a given date and place it in a separate column
--Write a query to display duplicate entries in the doctor name column
 
 select pid, p_name, date('now') as current_date from patients_datasets pd;
 
 
 select pd.p_name, UPPER(pd.p_name) from patients_datasets pd;
 
 select p_name, length(p_name) as name_len from patients_datasets pd;
 
 
 select p_name, doctor_name, concat(p_name, ', ', doctor_name) as patient_doctor_name from patients_datasets;
 
 select date, SUBSTR(date, 7, 4) AS year_extracted from patients_datasets pd;
 
 select pd.doctor_name from patients_datasets pd
 group by doctor_name
 having count(doctor_name) > 1;
 