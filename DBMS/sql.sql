
-- COURSE
insert all 
into course values ('MA01','Programming','MACS',6) 
into course values ('MA02','Discrete Maths','MACS',6) 
into course values ('MA03','Accounts','MACS',4)
into course values ('MA04','DBMS','MACS',6)
into course values ('CS01','Python','Computer',6) 
into course values ('CS02','Algorithms','Computer',6) 
into course values ('CS03','OOPs','Computer',6) 
into course values ('CS04','Machine Learning','Computer',6) 
into course values ('CM01','Organic','Chemical',6) 
into course values ('CM02','Inorganic','Chemical',6) 
SELECT 1 FROM DUAL;


-- INSTRUCTOR
insert all 
into instructor values('INS01','Sonali','MACS',55000) 
into instructor values('INS02','Kamath Sr','MACS',80000) 
into instructor values('INS03','Kamath Jr','Computer',40000) 
into instructor values('INS04','Archita','Computer',55000) 
into instructor values('INS05','Hamsa','Computer',50000) 
into instructor values('INS06','Nandgopal','MACS',60000) 
into instructor values('INS07','Amit','Chemical',60000) 
into instructor values('INS08','Abhishek','Chemical',60000) 
into instructor values('INS09','Praveen','MACS',70000) 
into instructor values('INS10','Jayant','Computer',65000) 
SELECT 1 FROM DUAL;


-- Section
insert all 
into section values('MA01','SEC01','Fall',2020,'LH1','1.1','TS01') 
into section values('MA02','SEC02','Winter',2021,'LH1','1.2','TS02') 
into section values('MA03','SEC03','Summer',2022,'LH2','2.1','TS03') 
into section values('MA04','SEC04','Spring',2022,'LH2','2.2','TS01') 
into section values('CS01','SEC05','Fall',2021,'LH3','1.1','TS02') 
into section values('CS02','SEC06','Winter',2023,'LH3','1.2','TS03') 
into section values('CS03','SEC07','Summer',2024,'LH1','2.1','TS01') 
into section values('CS04','SEC08','Spring',2024,'LH2','1.2','TS02') 
into section values('CM01','SEC09','Spring',2024,'LH1','1.1','TS03') 
into section values('CM02','SEC10','Summer',2023,'LH2','1.1','TS01') 
SELECT 1 FROM DUAL;

-- TEACHES
insert all 
into teaches values('INS01', 'MA01','SEC01','Fall',2020)
into teaches values('INS02', 'MA02','SEC02','Winter',2021) 
into teaches values('INS06', 'MA03','SEC03','Summer',2022) 
into teaches values('INS09', 'MA04','SEC04','Spring',2022) 
into teaches values('INS03', 'CS01','SEC05','Fall',2021) 
into teaches values('INS04', 'CS02','SEC06','Winter',2023) 
into teaches values('INS05', 'CS03','SEC07','Summer',2024) 
into teaches values('INS03', 'CS04','SEC08','Spring',2024) 
into teaches values('INS08', 'CM01','SEC09','Spring',2024) 
into teaches values('INS07', 'CM02','SEC10','Summer',2023) 
SELECT 1 FROM DUAL;


-- STUDENT
insert all 
into student values('ST001', 'Sourabh','MACS',90)
into student values('ST002', 'Sunil','MACS',85) 
into student values('ST003', 'Vishal','MACS',88) 
into student values('ST004', 'Aryan','MACS',70) 
into student values('ST005', 'Nagender','MACS',95) 
into student values('ST006', 'Harsh','MACS',84) 
into student values('ST007', 'Apurv','MACS',82) 
into student values('ST008', 'Kanhaiya','MACS',83) 
into student values('ST009', 'Satish','Chemical',60) 
into student values('ST010', 'Yash','Chemical',65) 
into student values('ST011', 'Isha','Chemical',66) 
into student values('ST012', 'Aditya','Chemical',72) 
into student values('ST013', 'Akash','Computer',78) 
into student values('ST014', 'Anish','Computer',55) 
into student values('ST015', 'Deepak','Computer',75) 
SELECT 1 FROM DUAL;


insert all 
into takes values('ST001', 'MA01','SEC01','Fall', 2020, 'AB')
into takes values('ST002', 'MA02','SEC02','Winter', 2021, 'BA') 
into takes values('ST003', 'MA02','SEC02','Winter', 2021, 'AB') 
into takes values('ST004', 'MA02','SEC02','Winter', 2021, 'BC') 
into takes values('ST005', 'MA02','SEC02','Winter', 2021, 'AC') 
into takes values('ST006', 'MA03','SEC03','Summer', 2022, 'AB') 
into takes values('ST007', 'MA01','SEC01','Fall', 2020, 'AB') 
into takes values('ST008', 'MA03','SEC03','Summer',2022, 'BA') 
into takes values('ST009', 'CM01','SEC09','Spring',2024, 'CC') 
into takes values('ST010', 'CM01','SEC09','Spring',2024, 'BB') 
SELECT 1 FROM DUAL;


-- ADVISOR
insert all 
into advisor values('ST001','INS01')
into advisor values('ST002','INS01') 
into advisor values('ST003','INS02') 
into advisor values('ST004','INS02') 
into advisor values('ST005','INS03') 
into advisor values('ST006','INS03') 
into advisor values('ST007','INS04') 
into advisor values('ST008','INS04') 
into advisor values('ST009','INS05') 
into advisor values('ST010','INS05') insert all 
into prereq values ('MA02','MA01') 
into prereq values ('MA03','MA01')
into prereq values ('MA04','MA01')
into prereq values ('CS02','CS01') 
into prereq values ('CS03','CS01') 
into prereq values ('CS04','CS01') 
into prereq values ('CM02','CM01') 
SELECT 1 FROM DUAL;
-- PREREQ
insert all 
into prereq values ('MA02','MA01') 
into prereq values ('MA03','MA01')
into prereq values ('MA04','MA01')
into prereq values ('CS02','CS01') 
into prereq values ('CS03','CS01') 
into prereq values ('CS04','CS01') 
into prereq values ('CM02','CM01') 
SELECT 1 FROM DUAL;



