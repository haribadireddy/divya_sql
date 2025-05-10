USE sales_db;

--select * from employees;

--Select employee number, first name, job title and jobtitle_abbr
--President then “P” 
--Sales Manager / Sale Manager then “SM” 
--Sales Rep then “SR” 
--Containing VP word then “VP”

select employeenumber, firstname, jobtitle, 
case 
when JOBTITLE='president' then 'P'
when JOBTITLE='Sales Manager' or JOBTITLE= 'Sale Manager' then 'SM'
when JOBTITLE='Sales Rep' then 'SR' 
else 'VP'
END AS jobtitle_abbr
FROM EMPLOYEES;
