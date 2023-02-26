# **COPYING A TABLE:**

> ## **SELECT INTO:**

- Copy all columns into a new table:

    ```sql
    SELECT * 
    INTO   newtable 
    FROM   oldtable 
    WHERE  condition;
    ```

- Copy only some columns into a new table:

    ```sql
    SELECT column1, 
        column2, 
        column3, 
        ... 
    INTO   newtable 
    FROM   oldtable 
    WHERE  condition;
    ```

- Copy only structure

    ```sql
    SELECT * 
    INTO   newtable 
    FROM   oldtable 
    WHERE  1 = 0; 
    --due to invalid condition no data will be inserted in newtable and only the structure will be copied
    ```

- Copy only few columns as structure and not the data

    ```sql
    SELECT column1, 
        column2,...
    INTO   newtable 
    FROM   oldtable 
    WHERE  1 = 0;
    ```

- Copy the data into existing table with same structure

    ```sql
    INSERT INTO newtable 
    SELECT * 
    FROM   oldtable; 
    ```

- Copying data in the only required column of a new table from an old table with the same structure.

    ```sql
    INSERT INTO newtable 
    SELECT column1, 
        column2,... 
    FROM   oldtable; 
    ```
