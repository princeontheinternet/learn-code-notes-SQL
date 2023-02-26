# **JOINS:**

- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
  
- The different types of the JOINs are -

  1. Inner Join
  2. Outer Join  
      a. Left Outer Join  
      b. Right Outer Join  
      c. Full Outer Join  
  3. Cross Join
  4. Self Join

    **![](https://lh3.googleusercontent.com/iHfmDe8K0wVdKKmExnT1opOHuda9FZjLLfEFirFhTL0dfxhONF_JoRHTM0wTsMljwzlfUU8L66ErJr_mpaYFby-LmndIVL1oHWCopUAzf_qe7OQOkkU223qDw4aq4BnI6pLgmNjwLNKwRxnegXHx0A)**

---

<br>

> ## **Inner Join:**

- ```sql
    SELECT * 
    FROM   emp 
    INNER JOIN product 
    ON emp.pid = product.pid; 
    ```

- Fig: Inner Join  
  **![](https://lh4.googleusercontent.com/9sisjlwfgD5HgD48LGBtku2uTs7YbaXMJ0NDySdBLcnTYPobDlrMDnL_DCEX7iwHTXc09G4CllKKBHVi0ykA9hvR_XHKve_30G5qFjtMQVFP1fL8yX01dLcgixEhkh2zAAOIdssEhNcQjhJvJsBoSQ)**

- Fig: Inner Join with three tables
  **![](https://lh4.googleusercontent.com/ypQ5zLiHGd3d0aXlROsLO4nLJ8wkH0FDU6AqUuBFklBZQhX3p6YnxRsrP52PJClBamiNin8h08r8A5jkOVtLzv97ItXY04nlHIDQAax7-HZMoQeE-sv2AfZQSQdI1WalV2ryE1SWv5FlYxyOvzuc4Q)**

---

<br>

> ## **Left Outer Join:**

- ```sql
    SELECT * 
    FROM   emp 
    LEFT OUTER JOIN product 
    ON emp.pid = product.pid;
    ```

- Fig: Left Join O/p  
  **![](https://lh5.googleusercontent.com/RpJL8Y78NE9AY2ctXVjBprjqr3hPBB_HqufM1Zcf-i2S_AUaA_1B_LBNgIPr2Lt_4m7GasGqoWs7ZC407crOFjgPX0pL0HBqkxdZEvZ5rnemFhKAgYjWZ65h9xe-jrXdY9z-s3kOR1M9TeLEDYNmlQ)**

---

<br>

> ## **Right Outer Join:**

- ```sql
    SELECT * 
    FROM   emp 
    RIGHT OUTER JOIN product 
    ON emp.pid = product.pid;
    ```

- Fig: Right Join O/p  
  **![](https://lh5.googleusercontent.com/IhTSkUtGGXQvbTCuDDNE1s4_t7Xxt3CQt6qjsno5ElaU2Zo_xKTyFxZ_So7gbNdJwnxp_SWwZUBXdZWB1k0la49KaU-pOe7AOXs4Lcg4OC5hL4OYgpeivXwqxJ9_hhDiDahr_o2g6TpHxUkFqjb6aQ)**

---

<br>

> ## **Full Outer Join:**

- ```sql
    SELECT * 
    FROM   emp 
    FULL OUTER JOIN product 
    ON emp.pid = product.pid; -- (left join (union) right join)
    ```

- Fig: Full Outer Join  
  **![](https://lh3.googleusercontent.com/nN72AgdnvjTY4HETam3H7BPP6DW94-otD1PU46JKEQmE8ke9JtMURRw38adKwndkRosMWy1pPVjB2ZEWZPCAeRjNrq9k_99Ue-VMWSosR0HKpv-sweTaaWGQDmtEpuOpNkXA4Ucio_wRQOT0kLrscQ)**

---

<br>

> ## **Self Join:**

- Joining a table by itself.
  
- Display EmployeeName with it’s ManagerName using self join -
  **![](https://lh3.googleusercontent.com/n9MKCt2wSzJxN7kzML_8iKE5c51OUurbr_Vv8PR2C3dTxaEPgejZmDgU4I8nqA0W3sAD6FFJkNPTaRiDoOnhZr9W5BXXBePq0OfIn-er-MVAXRpkHCgugIZcnZhsb3yGuXcnypoEc0NG-tfhPxLy6w)**

  - Eid - Employee_id  
  - M_id - Manager_ID

---

<br>

> ## **Cross Join:**

- Gives Cartesian product of 2 tables.
  
- Full outer join and cross join are different as cross join will give cartesian product but full outer join will give unique value of left and right join.
(full outer join = left join (union) right join)

