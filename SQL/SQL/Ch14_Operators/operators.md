# **OPERATORS**

- Types of Operators -

  - Arithmetic Operators
  - Comparison Operators
  - Logical Operators
  - Set Operators
  - WildCard Operators
  - Compound Operators

---

<br>  

> ## **Arithmetic Operators:**

**![](https://lh5.googleusercontent.com/oH30KASz8hTCdK2exB3bUDHwe-usr2XLI4qVvPOKgfaLNbmKiDqwhBwaIRx5JHb8ZCDJWyLuib2Zso4rvgKnqzU5t0C9ZNxlMjXZsn-1YD7HvuFblLy0LIZOSA1kvu1XIKwca7NFl_XFk-bjGW6h4w)**

```sql
SELECT 20 + 5 
```

---

<br>  

> ## **Comparison Operators:**

**![](https://lh3.googleusercontent.com/7dvy70eiVxbWGZ3MUs86vc9nm5siWfV5h7OZKIi9tNMyrggm-ymQM1yMcAuA4fG1UBup3qqcTC0tJZhbJ2SQfSllScWkNQvOMMtm8wvzCtmq05Q9AM9i6F0U1kwjtcTWRUu7jtV2FBpRaxnsD4VK6A)**

---

<br>  

> ## **Logical Operators:**

**![](https://lh5.googleusercontent.com/1N38rlHiskhbXEepD7N93kQ5_F5Gfj-7XmsB_mLMCDXCt0A2iyvFWwn3XmacIh5eqQWtvt7VyTHx4sFrGdx8KP_A1onzVwyu9YlTYJNfYTjWrpUCSuxuLoFM5VX0On744fZFQkJZpWgPkiYcgAmacg)**

```sql
SELECT ename, 
       salary 
WHERE  salary NOT BETWEEN 10000 AND 20000 
--Between and including 10,000 and 20,000 i.e. both highs and lows are included.
```



- ### **IN Operator:**

  - The IN operator allows you to specify multiple values in a WHERE clause.

    ```sql
    SELECT * 
    FROM   customers 
    WHERE  country IN ( 'Germany', 'France', 'UK' ); 
    ```

  - The “=” operator only allows single value but the IN operator allows multiple values.


- ### **EXISTS OPERATOR :**

  - The EXISTS condition in SQL is used to check whether the result of a correlated nested query is empty (contains no tuples) or not.

  - The result of EXISTS is a boolean value True or False.

  - The exists operator is used to test for the existence of rows in a subquery. Typically a subquery is passed in the existing function to check whether or not any rows are returned

  - To fetch the first and last name of the customers who placed at least one order.

    **![](https://lh5.googleusercontent.com/MgXPzTMbeNkmdUziEyM7ziT3kJS70IQ72VzsqFzxJ3t2Jxnfet0XBQKSdDKSvu5Nemfl98Qimolg-0mjFA94QvvdSti8rvatuwbOrjvpQDv29mdm9QHuDYZoBihYd0IIKHFAWk9Rvmh2fnt1mJbsFg)**

    ```sql
    SELECT fname,
        lname
    FROM   customers
    WHERE  EXISTS (SELECT *
                FROM   orders
                WHERE  customers.customer_id = orders.c_id);
    ```

---

<br>  

> ## **Set Operators:**

- Union all
- Union
- Intersect
- Except

    **![](https://lh5.googleusercontent.com/qI51tvF8Jjmx-XJ5xeWvBpWB3lqhg0wYPlJ28K94yPt_s4oNeWTAWrwG6h08cFROOgfivwSZvHtq4OiU49V0eI4m9qN2MTm1bvOQJyb_E5_qbNZYh2p-NIvSgnuAtGSJ0NnlvSTFqrEzrP9E-sEnaA)**
    **![](https://lh5.googleusercontent.com/UbbBLNxNSpTMkiH7PQtx87Mvjx89z42-m9bxF-tTXxwuCH7bn9rcuyss92_vsR1IhR7H6nrh6ivzHGiD0ccIS0lWRBc3Dd7yFebtJJYH0yvKYbxeWUhUlQCYOg23RTHiXfxWhqOPOdNS9fUbXGmViQ)**


- ### **Union All:** 
  
  - All rows in Table1 and Table2 including duplicates.
  
    **![](https://lh3.googleusercontent.com/VyEV9zWkwahsW1M0gjZD7YI1z90kgIKYOr9Od_ruZvjWIZfT1yTuoToQJt7RSp6WpyelSSPzIzad3_0X4Q9sYVEZM1-b6lfikCtQGcelA24cR7TfmHtMGD67trucSeqCxGyRvpZitAQcQ-2XJ-3P-A)**

  - 
  

- ### **Union:**
  
  - Rows in Table1 and Table2 excluding duplicates.
  
    **![](https://lh4.googleusercontent.com/N1lvEcLE6enQbSR71RBCR0CHtWbpp5JLRkvDSSbES6w0W197RK4eQDk1YwuE4nYzlzDRp_qPvp5nL9hgYOayruIskhVYGPSuwXtvE1wJO_Sq2dhfd_sUcLYt1UxpzsySDk0WCU6cDzZ3rtafSXSBRg)**

- ### **Intersect:**
  
  - Common rows in Table1 and Table2.

    **![](https://lh3.googleusercontent.com/Qs56NXyd7w2uwcK6ad7eyYr3BYtbrJyBzIBEvJoDoLdkrDw-JNysvlzFa29cFdgeIX18rKDXl3UBw4XMRUN2fqNaX5FB0dy88Sw8zVbT-kySf5oJNhiAK4iRLfaUVLvvFdqceNuhU_V51NZ5BAwmcw)**

- ### **Except:**

  - Rows in Table1 which are not in table2.

    **![](https://lh4.googleusercontent.com/xNqwoedYiSzJGl9FvY-dA6bE5yqJeuAGCTxDgom27vMrLByEKpq1IWrDdV6Bw2Im0-8LvTo6dahcAGO85EQAJ-hJ1wnUzBEe3uWKvaD-wDk7rSBXeloRrFKnK4bYvZm6VX5IgHs0KfUpryvd0r61sg)**


---

<br>  


> ## **WildCard Operators:**

- Wildcard characters are used with the SQL LIKE operator. 

  - Wildcard Characters:
**![](https://lh4.googleusercontent.com/mDWWfvRLnH1BbznpxfpQboJMsACRF4JCWsLN8oT1Dp_eJ-nWa-dyOi0NOZsIgP2J3Z-WjIBomVP3z2XbNQVWtANPqW0PF5ZjtAfpnuCTDcOyJCejbj0lqYW3zBUa8p4aVoipxTq5mrJieVvr1nU3tg)**

  - Examples:
**![](https://lh6.googleusercontent.com/rgCYIjRp8MEVwi8--jbhZf0L4cIjk9OVvTujDt52n6xnk70kqydwdROyUJA1VR5ptqMZgLuqVSgUSZ7EkUgXGIarkVPYmZc3Wyy0MV0BH8HmlPOOOpsUOTf4ZFYxB9316PUai8t_-gc58IcbGR_wsA)**

    ```sql
    SELECT ename 
    FROM   emp 
    WHERE  ename LIKE '_____' 
    --Name having only 5 characters 
    ```


  - Q. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

    ```sql
    SELECT DISTINCT city 
    FROM   station 
    WHERE  city LIKE '[aeiou]%' 
    ```

---

<br>  

> ## **Compound Operators:**

**![](https://lh6.googleusercontent.com/WfCwx94hgeAM9VMPBOHjmNjaPZ7z56HgzniBMk4X5Cqkz8MGP8J7dy7_F57zW_boMuUMxN4kMQ6QxsyCUF4dRAYfVfqMUGjA5U1oqNOa0I2Xi85DkHktr9Tl3rale7oKzXzMxeCeQuXyKWR_IKVTMg)**

**![](https://lh6.googleusercontent.com/VL0qrciLelshCx5dQZHRD412mi5-YiyaF4ZmykPhPAsd0cBe5AL8oQ3UHYGcds2U5KNB_s7_XIwwgkV5dO6DFaOszHY1d6xpqxTRZmiD-hbz-wldhHVcSNo1NEz6XMZgzZBjRSW3t3iynCCrlMX3ng)**

---

<br>

