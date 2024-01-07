 --Manhatan Distance Formula: 
 --The Manhattan Distance between two points (X1, Y1) and (X2, Y2) is given by (X1 – X2) + (Y1 – Y2)
 

  
SELECT
	abs(CAST(round((min(lat_n) - max(lat_n)) + (min(long_w) - max(long_w)), 4) AS NUMERIC(10, 4)))
FROM
	station;
	

--Abs: Returns the absolute value of a number
--SELECT Abs(-243.5) AS AbsNum; 	o/p: 243.5