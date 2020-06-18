use syntaxhrm_mysql;
select * from hs_hr_employees;

-- displaying only first name from the employees table
select emp_firstname from hs_hr_employees;
select emp_firstname, emp_lastname from hs_hr_employees;
select employee_id from hs_hr_employees;
select emp_lastname from hs_hr_employees;
select * from ohrm_job_title;
select employee_id, emp_firstname,emp_lastname from hs_hr_employees;
select * from hs_hr_emp_language;
select distinct emp_firstname from hs_hr_employees;
-- we need this to distinct data 
-- to get all info about one person which has the emplooye id of "13292" thn we use where
select * from hs_hr_employees -- to execute two line linked no ; 
where employee_id = 13473;

select emp_firstname,emp_lastname from hs_hr_employees
where emp_firstname = 'John';