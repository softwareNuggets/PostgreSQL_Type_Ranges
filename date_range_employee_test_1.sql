--drop table employee_test_1
--truncate table employee_test_1
 create table employee_test_1
 (
 		emp_id 		int 		not null primary key,
	 	dob			date		not null,
	 	f_name 		varchar(30) not null,
	 	l_name		varchar(40) not null
 )
 
 insert into employee_test_1(emp_id,dob,f_name, l_name)
 values
 (1,'1999-12-06','bill','wilson'),
 (2,'2001-12-16','jane','anderson'),
 (3,'1983-03-29','kevin','bark'),
 (4,'1987-06-30','joe','bison'),
 (5,'1961-05-06','chuck','wagon'),
 (6,'1971-11-06','frank','river'),
 (7,'2002-12-31','jason','truck')
 
 select *
 from employee_test_1
 where '[2000-01-01,2002-12-31]'::daterange @> dob
 
 
  select *
 from employee_test_1
 where '[2000-01-01,2002-12-31)'::daterange @> dob
 
 select *
 from employee_test_1
 where '[1950-01-01,1980-01-01]'::daterange @> dob
 
 
  
 select *
 from employee_test_1
 where '(1961-05-06,1980-01-01]'::daterange @> dob