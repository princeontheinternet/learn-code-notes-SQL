# **CLAUSES:**

- The following clauses in order of execution are present in SQL:

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY
7. DISTINCT
8. TOP

> ## **FROM:**

- It specifies the tables from which the other clauses of the query can access columns

> ## **WHERE:**

- Filter the rows
- For filtering columns we use the `SELECT` clause.
- If you want to use the where for alias column use another `SELECT` statement.

    Eg Dense Rank 3rd highest Sal Practice_Question. Find 3rd Highest salary using dense_rank()

> ## **GROUP BY:**

- The GROUP BY statement groups rows that have the same values

- The GROUP BY statement is often used with aggregate functions (**COUNT()**, **MAX()**, **MIN()**, **SUM()**, **AVG()**) to group the result-set by one or more columns.

- The columns in the select statement should either be an aggregate function or a group by column.

- ***Group the similar values and find the aggregate value for each group.***

- Eg:
  
    ```sql
    select customer_id from payment p 
    group by customer_id;
    --OR
    select distinct customer_id from payment p;
    ```

  - Fig: Sum of salaries group by location wise (sum(sal) per loc)

    **![](https://lh6.googleusercontent.com/rdkBn0cc-ZAGge4yIVvYMSVqdi5zuVTOOBT-OwK-yj7sCASNdqg8A-ZGYE0km3k8pJxRffzLOFCL1MlnYh6cv2eU2xVwRwcL_Wo485fOrARIsVWfQncqdyFUXktl-a-0Qn6Pjg1UvoywUPAXiToXjw )**

  - Fig: Count of Emp DNo wise
  
     **![](https://lh6.googleusercontent.com/9NQ7hIkadh2YWMAejTwiRUTCGX1yjC2oUu5Mhd4z6WmjR9RBAWahFnhVn_xfuUavKaW_YJtEu1IfzqqBLkpjQqdwr3N9g4feD5Zup1TXIDbkIYSE1iTpxXxAKQbYKNcS_RpG7CUJ_pBjOrn8rhQ-wA)**

  - Fig: max salary department no wise

    **![](https://lh3.googleusercontent.com/HuRXhZD8i2eUarnR1zVxiZHVNCEhQs055KV12i0MpEEzo-n7SDkcY6OFugtw95z8W7t1cgY_aX-_rIyxChFHrP12eXHVUqn52q9Zy4XvUo4jvxL5jWNeFQL2w-UwjKHggKSEe7M-s75cEbAyzwRBAw)**

> ## **HAVING:**

- It is used to filter the group by result.
- The HAVING clause was added to SQL because the WHERE keyword could not be used with aggregate functions.

- ***We use WHERE clause to filter rows before the GROUP BY clause but after applying GROUP BY clause the filtering for GROUP BY is done by HAVING clause.***

- Eg:
  
  - Fig: Having sum of sal < 50000
  
    **![](https://lh4.googleusercontent.com/90W0PYj0DriqIzZ13-vfQZ7GmR0cTz_MqYbK7Nr-JBSBrQ6HJw7VYfpIg8lnuvaw6WhJPVnPPq3_tzMJYXurMc-uopVvi68cE-zJmo88GJsfkmQbZ8WFq22nxmR4qcMslIBga6d6Q0QV6WaFCGD88Q)**

  - Fig: Having count of emp > 2

    **![](https://lh5.googleusercontent.com/K0XXWTSFcvMvdcIzXjsVdlAivImye8T418rk8pC8P0jvo4ST1PzLwurSsxXkWym19_0EZjkmcwAPRXgR3VyGdhorCMWpVZ3oyVT2eRGmno4ug5uv8lK-FtmgL0zEMcqwS3weY7F8aCOcpaOHHWGl6A)**

> ## **SELECT:**

- The SELECT statement is used to select data from a database.
  
    ```sql
    SELECT * FROM  customers; 
    ```

> ## **ORDER BY:**

- The ORDER BY keyword is used to sort the result-set in ascending or descending order.

- The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

    ```sql
    SELECT * 
    FROM   employee 
    ORDER  BY salary DESC; 
    ```

> ## **DISTINCT:**

- The DISTINCT statement is used to return only distinct (different) values.

- Eg:
  - Select distinct country from table customers:

    ```sql
    SELECT DISTINCT country 
    FROM   customers; 
    ```

- Eg:
  - Select the no of countries present in table customers:

    ```sql
    SELECT Count(DISTINCT country) 
    FROM   customers; 
    --OR
    SELECT Count(*) AS DistinctCountries 
    FROM   (SELECT DISTINCT country FROM   customers);
    ```

> ## **TOP or LIMIT:**

- To fetch top 5 rows or limit the rows to 5.

    ```sql
    SELECT TOP 3 * FROM   customers;
    --OR
    SELECT * FROM   customers LIMIT  5; 
    ```

---

<br>

<br>

## <u>_**Note:**_ </u>

**Q**: Why we cannot use alias names in WHERE,  HAVING and GROUP BY  but can use in ORDER BY clause?

**Ans**:  

1. FROM  
2. WHERE  
3. GROUP BY  
4. HAVING  
5. SELECT  
6. ORDER BY  
7. DISTINCT  
8. TOP  

- We cannot use aliases in where, having and group by clauses because of the order of execution of the clauses as the alias is formed in the SELECT clause and WHERE, HAVING and GROUP BY clauses are executed before the SELECT clause.

- But we can use the alias in the ORDER BY clause as it is executed after the SELECT clause.

- In some databases (such as MySQL), using aliases created in the SELECT list is allowed in GROUP BY and HAVING clauses, even though these clauses appear before (and are evaluated earlier than) the SELECT clause.
