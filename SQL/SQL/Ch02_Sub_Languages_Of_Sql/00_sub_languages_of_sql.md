# **SUB LANGUAGES OF SQL:**

> ## **DDL:**

- Data Definition Language (DrCAT)
- `CREATE`, `ALTER`, `DROP`, `TRUNCATE`

> ## **DML:**

- Data manipulation Language (UID)
- `INSERT`, `UPDATE`, `DELETE`

> ## **DRL:**

- Data Retrieval/Query Language
- `SELECT`

> ## **DCL:**

- Data Control Language
- `GRANT`, `REVOKE`

> ## **TCL:**

- Transaction Control Language
- `COMMIT`, `ROLLBACK`, `SAVEPOINT`

---

<br>

<br>

## **DDL COMMANDS:**

> ### **CREATE:**

- Create a table:

    ```sql
    CREATE TABLE student
    (
    id INT,
    NAME VARCHAR(10)
    );
    ```

> ### **ALTER:**

- Add new column:

    ```sql
    ALTER TABLE student
    ADD fname VARCHAR(20);
    ```

- Drop existing column:

    ```sql
    ALTER TABLE student 
    DROP COLUMN NAME;
    ```

- Modify/Alter data-type of column:

    ```sql
    ALTER TABLE student 
    ALTER COLUMN fname CHAR(20);
    ```

- Rename table:

    ```sql
    ALTER TABLE table_name 
    RENAME TO new_table_name; 
    ```

- Rename column:

    ```sql
    ALTER TABLE table_name 
    RENAME COLUMN old_column_name TO new_column_name;
    ```

> ### **DROP:**

- Drops a table
- Cannot be rolled back.
- Removes structure + data.

    ```sql
    DROP TABLE table_name; 
    ```

> ### **TRUNCATE:**

- Truncate the table_name

    ```sql
    TRUNCATE TABLE table_name; 
    ```

---

<br>

<br>

## **DML COMMANDS:**

> ### **INSERT:**

- Insert in the table using multiple insert for multiple rows:

    ```sql
    INSERT INTO student 
    VALUES (1, 'Ram', 'UttarPradesh');

    INSERT INTO student 
    VALUES(2, 'Laxman', 'UttarPradesh');
    ```

- Insert into table using single insert for multiple rows:

    ```sql
    INSERT INTO student 
    VALUES(3, ‘Sumit’, ‘Maharashtra’), 
          (4, ‘Satya’, ‘Kerala’); 
    ```

- Insert into table using required values for required columns:

    ```sql
    INSERT INTO student (id, NAME) 
    VALUES(3, ‘nitya’);  --Location will have value as NULL      
    ```

> ### **UPDATE:**

- Update Nitya to Nita

    ```sql
    UPDATE student 
    SET    NAME = ‘nita’ 
    WHERE  id = 4;
    ```

> ### **DELETE:**

- Delete all records:

    ```sql
    DELETE FROM student; 
    ```

- Delete selected records

    ```sql
    DELETE FROM student 
    WHERE  id = 4; 
    ```

---

<br>

<br>

## **DRL COMMANDS:**

> ### **SELECT:**

- Select all records/rows from table:

    ```sql
    SELECT * FROM table_name;
    ```

- Select only two columns from table:

    ```sql
    SELECT column1,
        column2
    FROM table_name;
    ```

---

<br>

<br>

## **DCL COMMANDS:**

> ### **GRANT:**

- Grant select permission on a single table to a user:

    ```sql
    GRANT SELECT ON table_name TO user_name; 
    ```

- Grant select, insert permission on a single table to a user:

    ```sql
    GRANT SELECT, INSERT ON table_name TO user_name; 
    ```

## <u> _**Note:**_ </u>

```sql
GRANT ALL ON table_name TO username;
```

- doesn’t grant `CREATE` privileges.
- It only grants - (`INSERT`, `UPDATE`, `DELETE` and `SELECT` priviliges).
- For `CREATE` privileges, you will have to give separate `CREATE` permission to the schema:

    ```sql
    GRANT CREATE ON SCHEMA schema_name TO user_name; 
    ```

---

> ### **REVOKE:**

- Revoke select permission on a table from user:

    ```sql
    REVOKE SELECT on table_name FROM user_name;
    ```

---

<br>

<br>

## **TCL COMMANDS:**

> ### **COMMIT:**

- COMMIT command is used to permanently save any transaction into the database.

- When we use any DML command like INSERT, UPDATE or DELETE, the changes made by these commands are not permanent, until the current session is closed, the changes made by these commands can be rolled back.

- To avoid that, we use the COMMIT command to mark the changes as permanent.

    `COMMIT;`

> ### **ROLLBACK:**

- This command restores the database to the last committed state.

- It is also used with the SAVEPOINT command to jump to a savepoint in an ongoing transaction.

- Eg - If we have used the UPDATE command to make some changes into the database, and realise that those changes were not required, then we can use the ROLLBACK command to rollback those changes, if they were not committed using the COMMIT command.

    `ROLLBACK TO savepoint_name;`

> ### **SAVEPOINT:**

- SAVEPOINT command is used to temporarily save a transaction so that you can rollback to that point whenever required.

    `SAVEPOINT savepoint_name;`

---

<br>

<br>