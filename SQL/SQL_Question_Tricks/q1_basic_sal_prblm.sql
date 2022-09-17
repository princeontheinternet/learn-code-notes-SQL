 
--Problem1: Display maximum salary from Emp table.

SELECT Max(salary)
FROM   emp;

------------------------------------------------------------------------------------------------------------

--Problem2: Display the employee name who is taking the maximum salary.

--Using single query:
SELECT e_name, 
      Max(salary) 
FROM   emp; 


--SubQuery:
SELECT e_name
FROM   emp
WHERE  salary = (SELECT Max(salary)
                 FROM   emp);

--Using Limit:
SELECT e_name 
FROM   emp 
ORDER  BY salary DESC 
LIMIT  1 ;

--Using Top:
SELECT TOP 1 e_name 
FROM   emp 
ORDER  BY salary DESC;

-------------------------------------------------------------------------------------------------------------------


--Problem3: Display 2nd Highest Salary from Emp table. Also display the name of the employee.

--SubQuery :
SELECT e_name,
       Max(salary) AS second_highest_salary
FROM   emp
WHERE  salary < (SELECT Max(salary)
                 FROM   emp);


--Using Limit:
SELECT *
FROM   (SELECT e_name,
               salary
        FROM   emp
        ORDER  BY salary DESC
        LIMIT  2) AS a
ORDER  BY salary ASC
LIMIT  1;

--------------------------------------------------------------------------------------------------------------------


