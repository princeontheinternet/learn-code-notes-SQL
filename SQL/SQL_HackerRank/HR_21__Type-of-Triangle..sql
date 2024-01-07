--Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 
--Output one of the following statements for each record in the table:

--Equilateral: It's a triangle with  sides of equal length.
--Isosceles: It's a triangle with  sides of equal length.
--Scalene: It's a triangle with  sides of differing lengths.
--Not A Triangle: The given values of A, B, and C don't form a triangle.


--1ST WAY
SELECT
    CASE
        WHEN (A+B)<=C OR (A+C)<=B OR (B+C)<=A THEN 'Not A Triangle'
        WHEN (A<>B) AND (B<>C) AND (A<>C) THEN 'Scalene'
        WHEN (A=B) AND (B=C) THEN 'Equilateral'
        WHEN (A=B) OR (B=C) OR (A=C) THEN 'Isosceles'
        END AS type_of_triangle
    FROM
        TRIANGLES;
		
		
		

--2ND WAY
SELECT
    CASE
        WHEN (A + B)>C AND (A + C)>B AND (B + C)>A THEN
        CASE
            WHEN (A=B) AND (B=C) THEN 'Equilateral'		--A=B AND B=C, therefore indirectly A=C
            WHEN (A=B) OR (B=C) OR (A=C) THEN 'Isosceles'
			--ELSE 'Scalene'
            WHEN (A<>B) AND (B<>C) AND (A<>C) THEN 'Scalene' 
			END
        ELSE 'Not A Triangle'
        END AS type_of_triangle
    FROM
        TRIANGLES;


