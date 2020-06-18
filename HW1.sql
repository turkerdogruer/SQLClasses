use syntaxhrm_mysql; 

-- How can we first name and last name of employee id 8335?
select emp_firstname,emp_lastname from hs_hr_employees
where employee_id = 8335;

-- How can you display unique relationship of employees from emergency contact table.
select eec_relationship from hs_hr_emp_emergency_contacts;

-- How to display experience employer and experience job title for employee 9451?
select eexp_employer, eexp_jobtit from hs_hr_emp_work_experience
where emp_number = 9451;

-- How to display all the information of employee who was born after January 1 of 1980?
select * from hs_hr_employees
where emp_birthday > 2020-10-14; -- 1980-01-01;

