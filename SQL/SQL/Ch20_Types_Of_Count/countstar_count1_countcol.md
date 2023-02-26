# **COUNT(*) Vs COUNT(1) Vs COUNT(Col_name):**

> ## **Count(1)**

- It will create a column and pass 1 to all the rows and then count the no of 1.

    ```sql
    SELECT Count(1) FROM table_name; = SELECT 1 FROM table_name; 
    ```

    **![](https://lh4.googleusercontent.com/BsO3SPF0MfDT4ZkP4QlMiJy_Rh4PMmSDDiri_IM1dmC3sZS0v-enon04Lb5LVOk-BxWY1FAhbUGO2QCJ2l-4N4-u1U5gQ5nj8OgKbj7eye1HO2oXUUQCoEaecb8r1v_fFDYGayCJGXx7BMa4V0EszQ)**

---

> ## **Count(*)**

- It will take count of all the columns and rows.

---

> ## **Count(col_name)**

- It will take the count of that specific col_name with not null values. It will exclude null values.

    ```sql
    SELECT Count(col_name) FROM table_name; = SELECT col_name FROM table_name; 
    ```

---
