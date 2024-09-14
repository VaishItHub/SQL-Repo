select * FROM emp1;

SELECT * FROM emp1 ORDER BY Emp_sal ;
SELECT DISTINCT Emp_add FROM emp1;
SELECT DISTINCT Emp_id FROM emp1; -- dispay only sinle col
SELECT * FROM emp1 WHERE Emp_id in (102,104) ; 

SELECT * FROM emp1 WHERE Emp_nm LIKE 'V%';  --(START FROM V)
SELECT * FROM emp1 WHERE Emp_nm LIKE '%i';--end with i
SELECT * FROM emp1 WHERE Emp_nm LIKE '%a__';  -- after a have 2 words

SELECT COUNT (Emp_id),Emp_add
FROM emp1
GROUP BY Emp_add;