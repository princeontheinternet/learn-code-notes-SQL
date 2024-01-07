--Amber's conglomerate corporation just acquired some new companies. 
--Each of the companies follows this hierarchy:

		-- ● FOUNDER
		-- ● LEAD MANAGER
		-- ● SENIOR MANAGER
		-- ● MANAGER
		-- ● EMPLOYEE

--Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. 
--Order your output by ascending company_code.

--Note:
--The tables may contain duplicate records.
--The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.



SELECT
	DISTINCT c.company_code,
	c.founder,
	count(DISTINCT e.lead_manager_code) ,
	count(DISTINCT e.senior_manager_code) ,
	count(DISTINCT e.manager_code) ,
	count(DISTINCT e.employee_code)
FROM company c
INNER JOIN employee e
ON c.company_code = e.company_code
GROUP BY c.company_code, founder
ORDER BY c.company_code;



--OR



SELECT 
	c.company_code,
	c.founder,
	count( distinct lm.lead_manager_code),
	count(distinct sm.senior_manager_code),
	count(distinct m.manager_code),
	count(distinct e.employee_code)
FROM company c
inner join lead_manager lm 
on c.company_code = lm.company_code
inner join senior_manager sm 
on c.company_code = sm.company_code
inner join manager m 
on c.company_code = m.company_code    
inner join Employee e 
on c.company_code = e.company_code
group by c.company_code, c.founder
order by c.company_code;