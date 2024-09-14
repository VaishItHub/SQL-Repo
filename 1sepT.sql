-- Active: 1725778053302@@127.0.0.1@3306@mysql
CREATE Table Stud(Roll_no INT(5),Name varchar(10),Dept VARCHAR(10),Addr VARCHAR(20));
INSERT INTO Stud(`Roll_no` ,`Name`,`Dept`,`Addr`)
VALUES(01,'Vaishnavi','Computer','Bhor')

INSERT INTO Stud(`Roll_no` ,`Name`,`Dept`,`Addr`)
VALUES(02,'Vaishnav','E & TC','Bhor')

INSERT INTO Stud(`Roll_no` ,`Name`,`Dept`,`Addr`)
VALUES(03,'Vaibhav','Civil','Satara')

INSERT INTO Stud(`Roll_no` ,`Name`,`Dept`,`Addr`)
VALUES(04,'Vaishali','Computer','pune')

SELECT * FROM Stud;

SELECT Name,Dept FROM Stud WHERE Roll_no=04

SELECT Dept FROM Stud;

select Roll_no,Name ,Addr 
FROM Stud 
WHERE Name= 'Vaishnvi' ;

SELECT * FROM emp1;

INSERT INTO Emp1(`Emp_id` ,`Emp_nm`,`Emp_sal`,`Emp_add`)
VALUES(102,'Vaishali','18000','pune') ;


INSERT INTO Emp1(`Emp_id` ,`Emp_nm`,`Emp_sal`,`Emp_add`)
VALUES(103,'sahil','20000','Satara') ;

INSERT INTO Emp1(`Emp_id` ,`Emp_nm`,`Emp_sal`,`Emp_add`)
VALUES(104,'Saurabh','15000','Satara') ;

INSERT INTO Emp1(`Emp_id` ,`Emp_nm`,`Emp_sal`,`Emp_add`)
VALUES(105,'satish','20000','Bhor') ;

SELECT * FROM Emp1;

select * FROM Emp1 WHERE Emp_nm='Vaishnavi';

SELECT Emp_nm, Emp_sal,Emp_add 
FROM Emp1
 WHERE Emp_id=104;

 SELECT * FROM Emp1 WHERE Emp_sal>=20000;

 UPDATE Emp1 set Emp_sal=25000
 WHERE Emp_nm='Vaishnavi';

 UPDATE Emp1 set Emp_sal=10000
 WHERE Emp_nm='Sahil';

 SELECT * FROM Emp1;

 SELECT * FROM Emp1 WHERE Emp_sal>=20000;

 SELECT * FROM Emp1 WHERE Emp_sal>=15000;

 SELECT * from Emp1 WHERE Emp_sal>=10000 AND Emp_add='pune';

 SELECT Emp_nm FROM Emp1 WHERE Emp_add= 'pune' OR Emp_add='Satara'


 SELECT * from Emp1 WHERE Emp_sal>=1800 and (Emp_add='pune' or Emp_add='satara')

 update Emp1 
 set Emp_sal=Emp_sal+(Emp_sal*0.05) 
 WHERE Emp_sal>=20000 

select * FROM Emp1;

ALTER Table Emp1 ADD emil VARCHAR(20);

UPDATE Emp1
set Degination='Manager'
WHERE Emp_nm='satish'

ALTER TABLE Emp1 add Degination varchar (10);
 
SELECT DISTINCT Emp_add FROM Emp1; 

SELECT DISTINCT Emp_add FROM Emp1 WHERE Emp_id>=105

SELECT Emp_nm FROM Emp1 WHERE Emp_id BETWEEN 101 AND 103;

SELECT DISTINCT Emp_add FROM Emp1
WHERE Degination='staff';

