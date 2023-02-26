# *Types of Indexes**

> ## **Clustered Index:**

- Creating clustered Index  
  
    **![](https://lh4.googleusercontent.com/fcKjgSLr7HrIca2bKikODtUIqC3VSAyqH79UfQjvL3JvaeDBk8GxIKkjWSmK-7yKdbbiJLUgpnh24lw_PcGhYOnr44qbZ_ajz94g9WG8G7vFJzp8Nktq_FvvE_5ANBOydCC8gbMlrD4R3AFuY5FwTg)**

- A table can have only one clustered index (single column/combination of multiple columns (composite clustered index)).

- It determines the physical order of data in a table. 

- Primary key constraint creates clustered index automatically if no clustered index already exists on the table.

- Faster than nonclustered index.

  - Explanation of clustered index
    **![](https://lh6.googleusercontent.com/oSJ9P3FKTdITNcGWuXuVwAcMDT3mOwl_06qS1ejFIXliWeSHy7E9BWrQLZuKNJ9s6RVlTSPjfqmWuJmIKRbNDLngtf8cSzOlfW8b-DFrZQBeVocQimzRLfOYrpdZRhAs5GuwnjaUBQasd5ZO5AkZ8A)**

---

<br>

> ## **NonClustered Index:**

- Creating nonclustered Index  
    **![](https://lh6.googleusercontent.com/de1R8XN_PE4n3prHUl2HI_fymR8cgPdJqMS7Pj36XW8JQ1cnLe2OyAKtyOKKjlczeoBMPaULH5VQygitD6xLLpi1OhRwK2i1wW67J3m0pQWmnDiW6yxv7-GOGQhEsNsxelqVniBBl88ucLwiNyzogg)**

- A table can have more than one nonclustered index (single column/combination of multiple columns (composite nonclustered index)).

    **![](https://lh5.googleusercontent.com/m_76cH5tpbwe-T4EdgNXuMgPQ6G3_-UIxRPdG_7akTINiBc9eaCUKHpRTHDegFPSpEIojEd0nFPP4MakhBJGaXssNe0qNUg6zSlV9BAz-U9ebR53NSsKL_LoMi5i3Kwjer1aTPxU6blvMYEoCLazAg)**

- Slower than clustered index as nonclustered index will have to take ref of the index table to search for the data.

---

<br>


> ## **Unique Index:**

**![](https://lh5.googleusercontent.com/fqbHnDTk_Jms4awdKyqZiCFS_ssakbYJulxN9BYZvUTGg144OILOn5-Ncl2kaILdnMnHS6FeeBbSTKfVt3xyty68dZA53f3TjR5z15ldvjKcBPyWaZjfkbHZSep-lrO4tdKQndRQLtoUu8nPlCXKdQ)**