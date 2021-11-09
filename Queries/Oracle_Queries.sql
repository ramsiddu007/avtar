-- Connect By Prior -- Tables

 select '1 X '||level||' = '||1*level as okatava_okkatlu, 
        '2 X '||level||' = '||2*level as rendava_okkatlu, 
        '3 X '||level||' = '||3*level as mudava_okkatlu 
from dual connect by level<=10;

-- WITH Recursive

with rec(num) as (
select 1 as num from dual
union all
select num+1 from rec where num<10 )
select * from rec;

-- Single Column Rows

with rec(name, nm) as (
select 'ramanna' as name, 1 as nm from dual
union all
select substr('ramanna', nm, 1), nm+1  from rec where nm <= length('ramanna')
)
select * from rec where nm<>1;

-- List Agg

with rec(name, nm) as (
select 'ramanna' as name, 1 as nm from dual
union all
select substr('ramanna', nm, 1), nm+1  from rec where nm <= length('ramanna')
)
select listagg(name, ', ') from rec where nm<>1;

-- 

select a.nm, b.ct from
(select * from (with  rec(num)  as (
    select  65 as num from dual
    union all
    select num+1 from rec where num<90
)
select chr(num) as nm from rec)A
union
select * from (
with  rec(num)  as (
    select  97 as num from dual
    union all
    select num+1 from rec where num<122
)
select chr(num) from rec)A)A

left join

(with alph (nm, lvl) as (
select null as nm, 0 as lvl from dual
union all
select substr('Ramanna', lvl+1, 1), lvl+1 from alph 
where lvl<length('Ramanna')
)
select nm, count(*) as ct from alph 
where nm is not null
group by nm)B on a.nm = b.nm order by 1;