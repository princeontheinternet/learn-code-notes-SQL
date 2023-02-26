# **Date Functions:**

- GETDATE() - Return the current database system date and time.

    ```sql
    SELECT GETDATE();
    ```

---

<br>

- YEAR() - Return the year part of a date.

    ```sql
    SELECT YEAR(GETDATE()); --2020
    SELECT YEAR('2020-11-13'); --2020
    ```

---

<br>

- MONTH() - Return the month part of a date.

    ```sql
    SELECT MONTH(GETDATE()); --11
    SELECT MONTH('2020-11-13'); --11
    ```

---

<br>

- DAY() - Return the day of the month for a date.

    ```sql
    SELECT DAY(GETDATE()); --13
    SELECT DAY('2020-11-13'); --13
    ```

---

<br>

- DATEPART() - Return a specific part of a date.

    ```sql
    SELECT DATEPART(year, '2020-11-13'); --2020
    SELECT DATEPART(month, '2020-11-13'); --11
    SELECT DATEPART(date, '2020-11-13'); --13
    SELECT DATEPART(hour, '2020-11-13'); --6
    SELECT DATEPART(minute, '2020-11-13'); --42
    SELECT DATEPART(hour, '2020-11-13'); --22
    ```

---

<br>

- DATENAME() - Return a specific part of a date.

    ```sql
    SELECT DATENAME(month, '2020-11-13'); --November
    SELECT DATENAME(weekday, '2020-11-13'); --Friday
    --Weekday when you were born 
    SELECT DATENAME(weekday, '1997-03-24');
    ```

---

<br>

- DATEDIFF() - Returns the difference between two dates.

    ```sql
    SELECT DATEDIFF(year, '2019-11-13', GETDATE()); --1
    SELECT DATEDIFF(month, '2019-11-13', GETDATE()); --12
    SELECT DATEDIFF(day, '2019-11-13', GETDATE()); --366
    ```

How old are you? →  SELECT DATEDIFF(year, '1997-03-24', GETDATE()); --23

---

<br>

- DATEADD() - Adds a time/date interval to a date and then returns the date

    ```sql 
    SELECT DATEADD(year, 1, '2020-11-13'); --2021-11-13 00:00:00.000
    SELECT DATEADD(month, 1, '2020-11-13'); --2020-12-13 00:00:00.000
    SELECT DATEADD(day, 1, '2020-11-13'); --2020-11-14 00:00:00.000
    ```

---

<br>
