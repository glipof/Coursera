-- 0. Drop table INSTRUCTOR in case it already exists
drop table INSTRUCTOR;

--1. Create table INSTRUCTOR
create table INSTRUCTOR (
	instructor_id INT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	last_name VARCHAR(50),
	first_name VARCHAR(50),
	city VARCHAR(50),
	country CHAR(2),
	PRIMARY KEY (instructor_id)
	);

--2A. Insert single row for Rav Ahuja
insert into INSTRUCTOR (
	last_name, first_name, city, country)
values 
	('Ahuja', 'Rav', 'Toronto', 'CA'
	);

--2B. Insert the two rows for Raul and Hima
insert into INSTRUCTOR (
	last_name, first_name, city, country)
values 
	('Chong', 'Raul', 'Toronto', 'CA'),
	('Vasudevan', 'Hima', 'Chicago', 'US'
	);

--3. Select all rows in the table
select * from INSTRUCTOR;

--3b. Select firstname, lastname and country where city is Toronto
select 
	first_name, last_name, country 
from 
	INSTRUCTOR 
where 
	city = 'Toronto';

--4. Change the city for Rav to Markham
update 
	INSTRUCTOR
set 
	city = 'Markham'
where 
	last_name = 'Ahuja' AND first_name = 'Rav';

--5. Delete the row for Raul Chong
delete from INSTRUCTOR
where 
	last_name = 'Chong' AND first_name = 'Raul';

--5b. Retrieve all rows from the table
select * from INSTRUCTOR;
