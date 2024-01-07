create table tab1 (OrderNo varchar,	Style_code varchar,	Color_code varchar,	Country_code varchar) ;

create table tab2(all_codes varchar,	description varchar);



select * from tab1;

-- -------------------------------------------------------------
 OrderNo  	 |  Style_code |   Color_code |   Country_code
-------------|-------------|--------------|---------------
     21540   |    abc      |     kdx      |      plo
     21541   |    gcs      |     kdy      |      pla
     21542   |    wer      |     kdz      |      plh
     21543   |    abc      |     kdx      |      pld
     21544   |    gcs      |     kdy      |      plo
-- ------------------------------------------------------------	 


select * from tab2;

-- ----------------------------
 all_codes   |  description
 ------------|-----------------  
    abc      |     plain
    gcs      |     vintage
    wer      |     modern
    kdx      |     white
    kdy      |     gray
    kdz      |     black
    plo      |     USA
    pla      |     Mexico
    plh      |     Canada
    pld      |     Brazil
-- ----------------------------

select 
t1.orderno,
t1.style_code,
t2.description,
t1.color_code,
t3.description,
t1.country_code,
t4.description
from tab1 t1 
left join tab2 t2 
on t1.style_code = t2.all_codes 
left join tab2 t3
on t1.color_code = t3.all_codes
left join tab2 t4
on t1.country_code = t4.all_codes ;




|ORDERNO|STYLE_CODE|DESCRIPTION|COLOR_CODE|DESCRIPTION|COUNTRY_CODE|DESCRIPTION|
|-------|----------|-----------|----------|-----------|------------|-----------|
|21540  |abc       |plain      |kdx       |white      |plo         |USA        |
|21543  |abc       |plain      |kdx       |white      |pld         |Brazil     |
|21541  |gcs       |vintage    |kdy       |gray       |pla         |Mexico     |
|21544  |gcs       |vintage    |kdy       |gray       |plo         |USA        |
|21542  |wer       |modern     |kdz       |black      |plh         |Canada     |





Resources: 
https://www.convertcsv.com/csv-to-markdown.htm

