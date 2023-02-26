# **String Functions:**

- LEN() - Returns the length of a string.

    ```sql
    SELECT LEN('MSSQL Server'); --12
    ```

---

<br>

- LOWER() - Converts a string to lower-case.

    ```sql
    SELECT LOWER('MSSQL Server'); --mssql server
    ```

---

<br>

- UPPER() - Converts a string to upper-case.

    ```sql
    SELECT UPPER('MSSQL Server'); --MSSQL SERVER
    ```

---

<br>

- LEFT() -  Extracts a number of characters from a string (starting from left).

    ```sql
    SELECT LEFT('MSSQL Server', 5); --MSSQL
    ```

---

<br>

- RIGHT() - Extracts a number of characters from a string (starting from right).

    ```sql
    SELECT RIGHT('MSSQL Server', 6); --Server
    ```

---

<br>

- REVERSE() - reverses a string and returns the result.

    ```sql
    SELECT REVERSE('MSSQL Server'); --revreS LQSSM
    ```

---

<br>

- CHARINDEX() - Returns the position of a substring in a string.

  - Syntax - CHARINDEX(substring, string, start) --start is optional

    ```sql
    SELECT CHARINDEX('S', 'MSSQL Server', 4); --7
    ```

---

<br>

- SUBSTRING() - Extracts some characters from a string.

  - Syntax - SUBSTRING(string, start, length)
  
    ```sql
    SELECT SUBSTRING('MSSQL Server', 3, 3); --SQL
    ```

---

<br>

- REPLACE() - Replaces all occurrences of a substring within a string, with a new substring.

  - Syntax - REPLACE(string, old_string, new_string)

    ```sql
    SELECT REPLACE('MSSQL Server', 'S', 'P'); --MPPQL Perver
    ```

---

<br>

- STUFF() - deletes a part of a string and then inserts another part into the string, starting at a specified position.

  - Syntax - STUFF(string, start, length, new_string)

    ```sql
    SELECT Stuff('MSSQL Server', 7, 1, 'P'); --MSSQL Perver
    ```

---

<br>

- REPLICATE() - repeats a string a specified number of times.

    ```sql  
    SELECT REPLICATE('SQL', 3); --SQLSQLSQL
    SELECT REPLICATE('SQL ', 3); --SQL SQL SQL
    ```

---

<br>

- SPACE() - Returns a string of the specified number of space characters.

    ```sql
    SELECT REPLICATE('SQL' + SPACE(2), 3); --SQL SQL SQL
    ```
---

<br>
