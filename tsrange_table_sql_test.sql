--drop table performed_task_2
--truncate table performed_task_2
 create table performed_task_2
 (
	 	id			serial		not null primary key,
 		emp_id 		int 		not null,
	 	attempt		tsrange		not null
 )
 
 
 
 insert into performed_task_2(emp_id, attempt)
 values
 (1,'[2023-01-02 11:15, 2023-01-02 11:45]'),
 (2,'[2023-01-02 11:30, 2023-01-02 14:45]'),
 (4,'[2023-01-02 12:30, 2023-01-02 17:45]'),
 (1,'[2023-01-02 14:30, 2023-01-02 21:45]'),
 
 (3,'[2023-01-03 10:30, 2023-01-03 12:45]'),
 (4,'[2023-01-03 13:30, 2023-01-03 17:45]'),
 (2,'[2023-01-03 18:30, 2023-01-03 21:45]'),
 (3,'[2023-01-03 22:30, 2023-01-03 22:45]')
 
 
 
 
 select * 
 from performed_task_2
 
 select *
 from performed_task_2
 where '[2023-01-02 11:00, 2023-01-02 15:00]'::tsrange @> attempt
 
 select *
 from performed_task_2
 where '(2023-01-02 10:00, 2023-01-03 14:00]'::tsrange @> attempt
 
 

 
 
 
 
 