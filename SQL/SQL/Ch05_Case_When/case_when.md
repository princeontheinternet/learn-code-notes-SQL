# **CASE WHEN:**

- Multiple IF-THEN-ELSE statement 

- If no condition is true it returns the value in ELSE clause.

- `CASE WHEN` is executed (as it is a part of `SELECT` clause) with the `SELECT` clause.

    ```sql
    SELECT tutorial_id, 
        tutorial_name, 
        CASE tutorial_name 
            WHEN 'SQL' THEN 'SQL is developed by IBM' 
            WHEN 'PL/SQL' THEN 'PL/SQL is developed by Oracle Corporation.' 
            WHEN 'MS-SQL' THEN 'MS-SQL is developed by Microsoft Corporation.' 
        END AS Description 
    FROM   guru99 ;
    ```

    ```sql
    SELECT facultyid, 
        NAME, 
        department, 
        CASE gender 
            WHEN 'M' THEN 'Male' 
            WHEN 'F' THEN 'Female' 
        END 
    FROM   faculty ;
    ```