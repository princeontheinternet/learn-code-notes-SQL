# **SEQUENCE**

- It is also used to generate auto-increment numbers.

- A sequence is a user defined schema bound object that generates a sequence of numeric values.

- We have to create the sequence separately and while inserting values in the table we have to call that sequence.

- Syntax:
  
    ```sql
    CREATE SEQUENCE sequence_name 
    START WITH initial_value 
    INCREMENT BY increment_value 
    MINVALUE minimum_value 
    MAXVALUE maximum_value 
    CYCLE|NOCYCLE; 
    ```

  - Step1: Creating Sequence

      ```sql
      CREATE SEQUENCE sequence_1 
      START WITH 1 
      INCREMENT BY 1 
      MINVALUE 0 
      MAXVALUE 100 
      CYCLE; 
      ```

  - Step2: Creating table

      ```sql
      CREATE TABLE students 
      ( 
          id   NUMBER(10), 
          NAME CHAR(20) 
      );
      ```

  - Step3: Inserting values in the table using the Sequence

      ```sql
      INSERT INTO students 
      VALUES     (sequence_1.nextval, 
                  'Ramesh'); 

      INSERT INTO students 
      VALUES     (sequence_1.nextval, 
                  'Suresh'); 
      ```

  - Step4: O/p

    | ID  |      NAME      |
    |-----|----------------|
    |  1  |     Ramesh     |
    |  2  |     Suresh     |

