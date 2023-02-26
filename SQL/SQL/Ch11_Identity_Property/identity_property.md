# **IDENTITY PROPERTY:**

- IDENTITY keyword to perform an auto-increment feature.

  - IDENTITY [( seed, increment)]
    - Seed: Starting value of a column.
    - Default value is 1.

    **![](https://lh6.googleusercontent.com/ByvY1j4XYQXFFBRtBbuvwZyoyvk7AAA8eAH8jCcRPinthMTKRKrk4sLd3DamfteJvwppKDJjmHHgej3XGLujcjcOi5dO7nWb7nYmAcOOuQp-qI10R54bLm88VbHgls4Orvz-DCWTWDXlWpCkk77B6Q)**

  - If the last id is 5 and we delete the records using -

    - **DELETE** - then when we insert the id will begin from 6 and not 1.
      - This happens because IDENTITY property is applied to the structure of the table and DELETE is a DML command and does not affect the structure.

    - **TRUNCATE** - then id will be 1.
      - Here id will get reset because truncate drops the table and recreates the structure.
