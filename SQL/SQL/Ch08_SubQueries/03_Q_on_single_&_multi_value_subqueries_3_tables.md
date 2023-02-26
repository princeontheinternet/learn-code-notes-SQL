# **Questions on Single & Multi Value SubQueries with 3 Tables:**

> Solve the following questions taking ref from the given ***3 tables***

**![](https://lh6.googleusercontent.com/i6Di63_ttTPbIBTxhvKRgevmDSGDVuS0qBnUJvt4FP_z12T0zwxbkFs8gpw6aJp_v9pQZjaKek1f6NKU9OYRO4byTUFIJQ_jWHrbkQv0dhf27G5AJcKma9sKEJ6j8Cag7dMOU6xgiNd66ccAMS0_zw)**

- Q. Display Sname who joined SQL SERVER course

  - Display Part -> Sname (Table = Student)  --Display part is the outer query. 
  - Filter Part -> Cname (Table = Course)   --Filter Part becomes the subquery.
  - Relation -> Direct using Cid (2 Tables so 2 Select statement)

    ```sql
        SELECT sname 
        FROM   student 
        WHERE  cid = (SELECT cid 
                    FROM   course 
                    WHERE  cname = 'SQLSERVER'); 
    ```

---

<br>

- Q. Display Student Details who joined Java.

  - Display Part -> Student Details(Table = Student)  --Outer Query
  - Filter Part -> Cname (Table = Course)    --SubQuery
  - Relation -> Direct using Cid (2 Tables so 2 Select statement)

    ```sql
    SELECT * 
    FROM   student 
    WHERE  cid = (SELECT cid 
                FROM   course 
                WHERE  cname = 'JAVA'); 
    ```

---

<br>

- Q. Display student names who spent more than 3000 in course fees.

  - DP -> sname (Table = Student)
  - FP -> Fee (Table = Course)
  - Relation -> Direct using Cid (2 Tables so 2 Select statement)

    ```sql
    SELECT * 
    FROM   student 
    WHERE  cid IN (SELECT cid 
                FROM   course 
                WHERE  fee > 3000);
    -- In Operator is used as o/p of subquery has more than one value
    ```

---

<br>

- Q. Display snames who bought laptops.

  - DP -> snames (Table = Student)
  - FP -> Pname (Table = Product)
  - Relation -> Indirect using 3rd table (3 Tables so 3 Select statement)

    - There is no Direct relationship between Student Table to Product table but there is indirect relation using the Course table.

    ```sql
    SELECT sname 
    FROM   student 
    WHERE  cid = (SELECT cid 
                FROM   course 
                WHERE  pid = (SELECT pid 
                                FROM   product 
                                WHERE  pname = 'lap')); 
    ```

    - Fig: Sai and Raj bought laptop

        **![](https://lh5.googleusercontent.com/UVvVvB1yWI7XvUc-p9ahvQQYPtpopo35IPCmfi_xPATuBEtQV90JLEkhSeGb_ZiCzqoccRX9QRQzX2QvyLgGFIezUkSWVbuIrFyWG2_v5JtwdL5p6mHaAyuQL_z-rstOtb61puK9xDN_xD-50z92jQ)**

---

<br>


- Q. Student Details who bought TV

  - DP - Student Detail (Table = Student)
  - FP Pname (Table = Product)
  - Relation - Indirect using 3rd table (3 Tables so 3 Select statement)

    ```sql
    SELECT * 
    FROM   student 
    WHERE  cid = (SELECT cid 
                FROM   course 
                WHERE  pid = (SELECT pid 
                                FROM   product 
                                WHERE  pname = 'TV')); 
    ```	

---

<br>