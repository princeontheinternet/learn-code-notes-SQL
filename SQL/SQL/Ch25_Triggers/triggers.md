# **TRIGGERS:**

- Triggers are database objects in SQL that are associated with a table and are automatically executed in response to certain database events, such as changes to the data in the table or certain SQL statements executed on the table.

- The most common types of triggers are:
BEFORE triggers, which are executed before an insert, update or delete operation is performed on a table.
AFTER triggers, which are executed after an insert, update or delete operation is performed on a table.

- Eg: AFTER INSERT TRIGGER FOR A TABLE	
**![](https://lh5.googleusercontent.com/Csmf2zzlZU0s5_0HXy8AOO6EQx6t_MUkzTB4YUHmKOB13_Os_CgXXNcGv555yJS8390cVpYS2eyrQ6f94e4FfxRURif-IN99mHlBXQmnpzfTrWheQtk4u0j7J-aSMZl8OO37rfFPEpu8zVl6h1X7wkE)**

- If the record is already there then “on duplicate key update” will update that record with the latest value that has been inserted

---

> ## **Advantages:**

- To create aggregated/derived date
- Create historical update logs for audit purpose
- Data Validation

---
