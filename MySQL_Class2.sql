use syntaxhrm_mysql;

select * from syntaxhrm_mysql.hs_hr_employees;

select emp_firstname, emp_lastname from hs_hr_employees order by emp_firstname desc;

-- display firstname and lastname in a descending order
select distinct emp_firstname, emp_lastname from hs_hr_employees order by emp_firstname desc;

-- display firstnama and lastname with name "Yunus" only in an asceding order
select emp_firstname, emp_lastname from hs_hr_employees where emp_firstname = 'yunus' order by emp_lastname asc;

-- display only firstname with null birthday in a descendin name order.
select emp_firstname from hs_hr_employees where emp_birthday is null order by emp_firstname desc;

-- display firsname, lastname and birthday withour null values. 
select emp_firstname, emp_lastname, emp_birthday from hs_hr_employees where emp_birthday is not null; 

                                         -- TASK1 SQL (2. CLASS) 
                                         
-- How to display information about employees who do not have assign job titles?
-- How to find employees first name, last name that do not have home phone number and display first names in alphabetical order.
-- How to display about all employees whose DOB has been entered. We want to see employees sorted by last name from Z-A?

select * from hs_hr_employees where  job_title_code  is null;
select emp_firstname, emp_lastname from hs_hr_employees where job_title_code is null;
select emp_firstname, emp_lastname from hs_hr_employees where emp_hm_telephone is null order by emp_firstname asc;
select * from hs_hr_employees where emp_birthday is not null order by emp_lastname desc;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------- 

														-- LOGICAL OPERATIONS --
-- opperators allows us to filter more than two conditions and result will be (True/False)                                                       
-- Display employee whoes firstname is John and lastname is  Doe. 
															-- AND Operator --
-- most of the time we want to use different column lets say we have three id thn we want to use different column and picks the data 1 person
-- we cannot have 3 different id all has to be true thats why we use and.

select * from hs_hr_employees where emp_firstname = 'John' and emp_lastname = 'Doe'; 
select * from hs_hr_employees where emp_firstname = 'John' and emp_lastname = 'Yakut';  -- This line will be Null since there is no such a lastname John has. 

-- Display all the info from employees whose emp_ids are 13288
select * from hs_hr_employees where employee_id = 13288 and employee_id = 13292 and employee_id = 13290; 
select * from hs_hr_employees where employee_id = 13288 or employee_id = 13292 or employee_id = 13290 or employee_id =11123;
-- Display all the info from job title except naker chef
select * from ohrm_job_title where job_title = 'Bakery Chef';
select * from ohrm_job_title where not job_title = 'Bakery Chef';

-- for short cut to make it shorther query we order in the (). 
select * from hs_hr_employees where employee_id in (13288, 13292, 13290, 11123 );
select * from hs_hr_employees where emp_firstname in ('Yunus', 'Turker', 'John') and emp_lastname = 'Dogruer';

														-- Between Operator --
-- To capture range of given boundry level we use between.
-- Display employees first and lastname and employe id who have employee ids from 11123 until 13288
  select emp_firstname, emp_lastname, employee_id from hs_hr_employees where employee_id between 11123 and 13288 order by employee_id asc;     
  
														-- Like Operator -- 
select * from hs_hr_employees where emp_firstname like 'an%'; -- names start with an if we use before %
select emp_firstname from hs_hr_employees where emp_firstname like '%a'; -- names which ends with if we use after % 
select emp_firstname from hs_hr_employees where emp_firstname like 'j%a'; -- if i want to displat names start with 'j%' and end with 'a%'

-- display firstname lastname and birthday for those who were born after 2000
select emp_firstname, emp_lastname, emp_birthday from hs_hr_employees where emp_birthday > "2000";

-- Display all the nationalities whic start wtih a
select * from ohrm_nationality where name like 'a%';
 
 -- Display all employees who were born in february
select emp_firstname, emp_lastname, emp_birthday from hs_hr_employees where emp_birthday like'%02-__';  -- since we say all the emp born in feb thn we use percentage and underscore ,like 
select emp_firstname, emp_lastname, emp_birthday from hs_hr_employees where emp_birthday like'%__-12'; -- one _ will cover one character