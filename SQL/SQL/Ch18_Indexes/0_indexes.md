INDEXES:

- Indexes are used by queries to **find data from tables quickly.**
- Indexes are created on tables and views.
- Index on a table or a view is very much similar to an index that we find in a book.
- Existence of right indexes can drastically improve the performance of the query.
- If there is no index to help the query, then the query engine checks every row in a table from beginning to end. This is called **table scan** and it is bad  for performance.

    **![](https://lh3.googleusercontent.com/qteYNG2DlJlXcKzocNYHV6XPFp83BEtejkXuaiMcI8WcPm5-u0EqAy4aGRzB4eR3BRhr-VpX4Uk0qZGNJTYUeZnBOlgAPyCz6aWuVcGxpGmVzXvLQRVVfQbuEBD4O_a-LEWqscGWGVGnBqvD3Ia5Xg)**

---

- **Creating Index:**

    ```sql
    CREATE INDEX IX_tblemployee_salary 
    ON tblemployee_salary (salary ASC); 
    ```

    **![](https://lh6.googleusercontent.com/uhgnIFdr3YHYERwY2IpELtjaE8SpZ05irRT2xHwSGjhXH25hQeLEDANZugsEcCCtQGh6V35WnOHNCS8ooliBxsgZPxww9fssnfXcZ42ti5Dyb82iJ6ki-bWvT9sT-ZdmkyAKgHHBi8DMczBWfudoZA)**

---

- **When should indexes be created:**

  - A column contains a wide range of values.

  - A column does not contain a large number of null values.

  - One or more columns are frequently used together in a where clause or a join condition.

---

- **When should indexes be avoided:**

  - The table is small.

  - The columns are not often used as a condition in the query.

  - The column is updated frequently.

---

- **Dropping Index:**

    ```sql
    DROP INDEX tblemployee.ix_tblemployee_salary; 
    ```

---