# **Conversion Functions:**

- CAST() - Converts a value (of any type) into a specified datatype

    ```sql
    SELECT 'Prince' + CAST(812 AS VARCHAR(10)); --Prince812
    ```

---

<br>

- CONVERT() - converts a value (of any type) into a specified datatype.

    ```sql
    SELECT CONVERT(VARCHAR, Getdate(), 121); --2020-11-13 08:25:09.483
    ```

- ***For more format - https://www.w3schools.com/sql/func_sqlserver_convert.asp***
