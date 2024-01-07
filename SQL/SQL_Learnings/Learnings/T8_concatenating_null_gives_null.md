# **Concatenating with Null gives Null**

- Concatenation:
  
    ```sql
    select 'Hello' || 'World'   --HelloWorld
    ```

- Concatenation with Null value:

    ```sql
    select null || 'World'   --null
    ```

- This is because null represents the absence of a value, so there is no actual value to concatenate and the expression cannot be evaluated.
  
- As null is unknown and concatenating with unknown gives null.

---

## **WorkAround**

- Using Coalesce:

    ```sql
    select coalesce(null, '') || coalesce('World', '')   --World
    ```
