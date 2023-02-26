-- Select all Hollywood movies released after the year 2000 
-- that made more than 500 million $ profit or more profit. 
-- Note that all Hollywood movies have millions as a unit 
-- hence you don't need to do the unit conversion. 
-- Also, you can write this query without CTE as well 
-- but you should try to write this using CTE only

select * from movies where release_year > 2000 and industry = "Hollywood";

select *, 
revenue-budget as profit
from financials
where revenue-budget > 500;


-- without CTE 
select 
m.movie_id, m.title, m.industry, m.release_year,
f.budget, f.revenue, revenue-budget as profit
 from movies m
join financials f
on m.movie_id = f.movie_id
where m.industry = "Hollywood"
and m.release_year > 2000
and revenue-budget > 500;

-- WITH CTE
with base1 as(
select * from movies where industry = "Hollywood" and release_year > 2000
),
base2 as (
select *, revenue-budget as profit from financials where revenue-budget > 500
)
select base1.movie_id, base1.title, base1.industry, base1.release_year,
base2.budget, base2.revenue,  profit
from base1
join base2
on base1.movie_id = base2.movie_id;






