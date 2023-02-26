# **VIEWS:**

- View is a virtual table which does not have physical existence.

- View is used to provide security on data by showing only the required result set and not the complete table.

    **![](https://lh5.googleusercontent.com/FIT4gar3LP6cXoL4fLbRbKel6tsR99egyxvRzaVrlJsxrsc2uBZu0d971TIfiM_Vdj8KyWud-7gnmoPS61_aGob2KV9BS_flm9e8qajuKtb4qwuOi4_sUyfC73m71cqCZBiSrF7-cuhY0HoN7t0-jw)**

- Here we can create a view to show only eid, name and loc column and hide sal and comm column

    ```sql
    CREATE VIEW vemp 
    AS 
    SELECT eid, 
            ename, 
            loc 
    ```

- Now, whenever we query the view using
  
    ```sql
    SELECT * 
    FROM   vemp; 
    ```

- It will hit the CREATE VIEW vemp query and data will be fetched from the base table, which is, emp table.

- Whatever operation you do on a table like update, insert or delete it affects the view and vice versa.

---

- ## **With Encryption:**

  - Provides encryption on the view so that the user cannot see the base table.
  - Eg -

    ```sql
    CREATE VIEW vemp WITH ENCRYPTION
    AS 
        SELECT eid, 
            ename, 
            loc 
        FROM   emp; 
    ```

---

- ## **With Schemabinding:**

  - Links the base table so that before dropping the base table it gives an error.
  - Otherwise if we drop the table view has no meaning.
  
    - No * in select statement  
    - Use schema name before table name

---

- ## **Types of Views:**

  - **Simple view**

    - View created with one base table.
    - If we alter the view the base table also gets affected and vice versa.

  - **Complex View**

    - View created with more than one table
    - If we alter the view it gives an error as the view is created by joining 2 base tables but modifying the base table will affect the view.
    -So, these are only read only views.

---

- ## **Benefits Of Views:**

  - Simplify Queries
  - User access control as we can apply user access on views.
  - It has no storage as it is just a select statement that gets executed.

---