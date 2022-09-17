# How to alter column Datatype in Redshift?

### Approach 1

- If you want to change the length of the varchar:

        ALTER TABLE rcptpymt  
        ALTER COLUMN barea TYPE varchar(250);

- This is not recommended as this my cause problem in the pipeline.

### Approach 2

- If the table is empty then you can simply drop the column and add new one.

        ALTER TABLE rcptpymt
        DROP COLUMN barea;
        
        ALTER TABLE rcptpymt
        ADD COLUMN barea VARCHAR(250); 

### Approach 3

- This is the best approach, but you might face problem as the column will be added in the last of the table schema:
        
        ALTER TABLE rcptpymt
        ADD COLUMN barea_temp VARCHAR(250);
        
        UPDATE rcptpymt
        SET    barea_temp = barea;
        
        ALTER TABLE rcptpymt
        DROP COLUMN barea;
        
        ALTER TABLE rcptpymt
        RENAME COLUMN barea_temp TO barea; 

### Approach 4

- This is time-consuming if your table has a lot of data:

        ALTER TABLE rcptpymt
        RENAME TO rcptpymt_temp;
        
        CREATE TABLE rcptpymt AS
        SELECT id,
        firstname,
        lastname,
        Cast(barea AS VARCHAR(250)),
        playingrole
        FROM   rcptpymt_temp; 
