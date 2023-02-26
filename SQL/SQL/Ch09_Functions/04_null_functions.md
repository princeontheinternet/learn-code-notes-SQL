# **Null Functions:**


- ISNULL() - Return the specified value IF the expression is NULL, otherwise return the expression.

    ```sql
    SELECT ISNULL(NULL, 'Prince');  
    ```

    ```sql
    SELECT        *, 
        salary + ISNULL(commision, 0) AS total salary 
    FROM   emp;
    ```

    **![](https://lh5.googleusercontent.com/qN2-PtLjBoVOqdn5F_WBQw1o2_jnIU4eaiw_Y9yexM7zhl2F85bWOhi-VXBuZL5keJkb4k_E9oGgPqU-BSSwaVah08Z39iBXMpqwLUVQUkCYYwfP2ktVDgvHHF-XrsiN5ArP8CneaHlgIE0nXZfTuw)**

---

<br>

- COALESCE() - Return the first non-null value in a list. 
		
    ```sql
    SELECT COALESCE(NULL, 'Prince', NULL, 'Rathore'); -- Prince
    ```

    **![](https://lh6.googleusercontent.com/HucuwjduiCwLkgoeP3Sua9Lk1k9YzB0XM-2qtSNeozNMW9P1M0oLpQF3eN9NAQS6GMAlx1BwsjQ0yFrW_TNixiVX83wsXcfBF6hn1SdzYytZB3YO6o_j3NHTs6S_87jUD7qBvMezYv-u2dM_wjIGsA)**
---

<br>