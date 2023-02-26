
# **Questions on Single & Multi Value SubQueries with 2 Tables:**

> Solve the following questions taking ref from the given ***2 table***

**![](https://lh4.googleusercontent.com/vgdhzwPiy5lxGPjE1YESB3t9iL4EUFDqx1AHspikEoOQHZ1uz0VZ1pyZ-Q6vEzQANsIPt12CrAkfL4bLTQA1u_HGvbyzjm0E-oZs2XQSKiLrpTdiGH6j5MjMt1Sm3pCohtH46vnjPgk57iyaw7ls2Q)**

- Q. Display Details of Emp.

    ```sql
    SELECT * 
    FROM   emp; 
    ```

---

<br>

- Q. Display all employee names.

    ```sql
    SELECT ename 
    FROM   emp; 
    ```

---

<br>

- Q. Display distinct locations in the table.

    ```sql
    SELECT DISTINCT loc 
    FROM   emp; 
    ```

---

<br>

- Q. Display employee names who are working in hyderabad.

  - Display Part -> Ename (Table = Emp)
  - Filter Part -> Loc (Table = Emp)
  - Relation -> Single table (1 Tables so 1 Select statement)

    ```sql
    SELECT ename
    FROM   emp 
    WHERE  loc = 'Hyd; 
    ```

---

<br>

- Q. Display employee details whose salary is more than 20000.

  - Display Part -> Emp Detail (Table = Emp)
  - Filter Part -> Sal (Table = Emp)
  - Relation -> Single Table (1 Table so 1 Select statement)

    ```sql
    SELECT *
    FROM   emp
    WHERE  sal > 20000;
    ```

---

<br>

- Q. Display Enames who bought laptop

  - Display Part -> Ename (Table = Emp)
  - Filter Part -> Pname (Table = Product)
  - Relation -> Direct usng pid (2 Tables so 2 Select statement)

    - First write the subquery, which is the filter part, and then write the outer query, which is the display part.

    - Subquery is executed first.

        ```sql
        SELECT ename
        FROM   emp
        WHERE  pid = (SELECT pid
            FROM   product
                    WHERE  pname = 'laptop');
        ```

    - Always use common column before = and after = in select statement eg pid used here

---

<br>

- Q. Display ename and loc who bought pendrive.

  - Display Part -> Ename (Table = Emp)
  - Filter Part -> Pname (Table = Product)
  - Relation -> Direct Relation using pid column (2 Tables so 2 Select statement)

    ```sql
    SELECT ename,
        loc
    FROM   emp
    WHERE  pid = (SELECT pid
                FROM   product
                WHERE  pname = 'pendrive');
    ```

---

<br>

>***IMP Question***

- Q. Get a list of students who scored better than the average grade.
(You have a table with two columns student_name and grade)

    ```sql
    SELECT
    student,
    grade
    FROM test
    WHERE grade > (SELECT AVG(grade)
        FROM test)
    ```

---

