CREATE Table Studdent1 (Roll_no INT (3),
                    S_Name VARCHAR (20),
                    S_Marks INT (4),
                    city VARCHAR (10),
                    class VARCHAR (10));

SELECT * FROM studdent1;

INSERT INTO studdent1(Roll_no,S_Name,S_Marks,city,class)
VALUES(1,'Shamal',98,'Nashik','Dist')

INSERT INTO studdent1(Roll_no,S_Name,S_Marks,city,class)
VALUES( 2,'Sahil',97,'Pune','Dist')

INSERT INTO studdent1(Roll_no,S_Name,S_Marks,city,class)
VALUES( 3,'Saurabh',98,'Pune','first')

INSERT INTO studdent1(Roll_no,S_Name,S_Marks,city,class)
VALUES( 4,'Vaishnav',98,'Satara','first')

INSERT INTO studdent1(Roll_no,S_Name,S_Marks,city,class)
VALUES( 5,'Rajesh',97,'Mumbai','Second')

INSERT INTO studdent1(Roll_no,S_Name,S_Marks,city,class)
VALUES( 6,'Sujata',95,'Kolhapur','third')

INSERT INTO studdent1(Roll_no,S_Name,S_Marks,city,class)
VALUES( 7,'Kamalesh',91,'Nashik','second')

INSERT INTO studdent1(Roll_no,S_Name,S_Marks,city,class)
VALUES( 8,'Gauri',96,'Kolhapur','first')

SELECT * FROM studdent1 ;

SELECT Roll_no FROM studdent1 UNION  --dublicate are not display
SELECT Roll_no FROM stud;


SELECT Roll_no FROM studdent1 UNION all -- display all the valuses
SELECT Roll_no FROM stud;

SELECT Roll_no FROM studdent 
INTERSECT
SELECT Roll_no FROM stud;  -- display the values that are in both table

UPDATE stud SET Roll_no =1 WHERE Name ='Vaishali';
SELECT * FROM stud;

UPDATE stud SET Roll_no =2 WHERE Addr ='Satara';

UPDATE stud SET Roll_no =3 WHERE Dept ='E & TC';

UPDATE stud SET Roll_no =4 WHERE Name ='Vaishnavi';

--nested query
--display the name of student who have minimum marks 

SELECT  S_Name FROM studdent1 
WHERE S_Marks =( SELECT MIN (S_Marks)  FROM studdent1 ); 

--display the name of student who have maximum marks 

SELECT  S_Name FROM studdent1 
WHERE S_Marks =( SELECT MAX (S_Marks)  FROM studdent1 ); 
SELECT * FROM emp1;

--display the avg of Salary from Emp1 table.
select AVG(Emp_sal) FROM emp1;

--display the name and salary of employee who's salary > than avg of salary
SELECT Emp_nm,Emp_sal FROM emp1 
WHERE Emp_sal >(SELECT AVG(Emp_sal) FROM emp1);

-- display all the details of student who live in same same city as the roll no. of the student is 3.

SELECT * FROM studdent1
WHERE Roll_no IN(SELECT Roll_no FROM studdent1 
WHERE city=(SELECT city FROM studdent1 WHERE Roll_no=3));

