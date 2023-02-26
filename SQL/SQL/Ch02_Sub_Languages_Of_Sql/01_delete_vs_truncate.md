# **DELETE VS TRUNCATE:**

> ## **DELETE:**

1. It is a DML Command
   - It will delete the records and not the structure.

2. By using delete query we can delete single record, multiple records or all the records using WHERE clause

3. Slow
   - It maintains logs
   - It deletes records row-wise

4. ROLLBACK is possible as it maintains logs.

5. If we use identity(1, 1):
   - Suppose we have 4 records in a table with columns (id, name, loc)
   - After deleting all the records when we insert the data the id will not get reset and it will take id as 5.

---


<br>

> ## **TRUNCATE:**

1. It is a DDL Command
     - Internally, it will remove the table & recreate the structure.

2. No WHERE clause

3. Fast
    - No logs

4. No ROLLBACK

5. If we use identity(1, 1):
   - Id will be reset here.
   - New records after truncating the table will have id as 1.
