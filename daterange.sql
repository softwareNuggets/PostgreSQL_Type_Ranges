-- remember the default output if include,exclude  [)

select daterange('2020-01-01', '2021-01-01')


select daterange('2020-01-01', '2021-01-01')::daterange @> '2021-01-01'::date
select daterange('2020-01-01', '2021-01-01')::daterange @> '2020-12-31'::date

 select daterange('2023-01-10','2023-01-18','[]')
 select daterange('2023-01-10','2023-01-18','(]')
 
 
 
 select daterange'[2023-01-01,2023-02-01]'::daterange @> '2023-01-15'::date
 select daterange'[2023-01-01,2023-02-01]'::daterange @> '2023-04-15'::date
 
 
 select daterange'(2023-01-01,2023-02-01)'::daterange @> '2023-01-01'::date
 select daterange'(2023-01-01,2023-02-01)'::daterange @> '2023-02-01'::date
 
 select daterange'(2023-01-01,2023-02-01)'::daterange @> '2023-01-02'::date
 select daterange'(2023-01-01,2023-02-01)'::daterange @> '2023-02-02'::date
 
 select daterange'[2023-01-01,2023-02-01)'::daterange @> '2023-01-01'::date
 select daterange'(2023-01-01,2023-02-01]'::daterange @> '2023-02-01'::date
 