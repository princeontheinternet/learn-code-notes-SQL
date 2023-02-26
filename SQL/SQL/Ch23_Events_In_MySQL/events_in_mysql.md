# **EVENTS IN MY_SQL:**


- In MySQL, an event is a task that runs automatically based on a schedule. Events can be used to automate tasks such as data backup, report generation, or data synchronization between databases.

- Here are the basic steps for creating and managing events in MySQL:

  - Enabling Event Scheduler: Before you can use events, you need to make sure the event scheduler is enabled in MySQL. You can do this by running the following command:

    - ```SET GLOBAL event_scheduler = ON;```

  - Creating an Event: To create an event, you need to define the schedule, the SQL statement to be executed, and any other relevant parameters. Here's an example of a basic event that runs a SQL statement every day at midnight:
  
    ```sql
    CREATE EVENT my_event
    ON SCHEDULE EVERY 1 DAY
    STARTS '2023-02-20 00:00:00'
    DO
    INSERT INTO my_table (column1, column2) VALUES ('value1', 'value2');
    ```

  - Modifying an Event: Once an event has been created, you can modify its schedule or SQL statement by using the ALTER EVENT statement. For example, to change the schedule of an event to run every hour, you can run the following command:
  
    ```sql
    ALTER EVENT my_event
    ON SCHEDULE EVERY 1 HOUR;
    ```

  - Dropping an Event: To delete an event, you can use the DROP EVENT statement. For example, to delete the my_event event, you can run the following command:

    ```sql
    DROP EVENT my_event;
    ```

- Sample EVENT

    ```sql
    delimiter | 
    CREATE event e_daily_log_purge 
    ON schedule every 5 second 
    comment "purge logs that are 5 days or older" 
    do
    BEGIN	
    DELETE
    FROM   random_tables.session_logs
    WHERE  Date(ts) < Date("2022-10-23") - interval 5 day
    END
    | delimiter;
    ```
