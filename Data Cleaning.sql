use project;

select * from hr;

describe hr;

select count(distinct (EmployeeNumber)) from hr;

alter table hr change column ï»¿Age Age integer null;

select min(Age), max(Age) from hr;

alter table hr add column AgeGroup varchar(10);

set sql_safe_updates = 0;

update hr set AgeGroup = case
	when Age < 25 then 'Under 25'
    when Age >= 25 and Age <= 34 then '25-34'
    when Age >= 35 and Age <= 44 then '35-44'
    when Age >= 45 and Age <= 54 then '45-54'
	else 'Over 55'
end;

alter table hr add column AttritionLabel varchar(20);

update hr set AttritionLabel = case
	when Attrition = 'Yes' then 'Ex-Employees'
    else 'Current Employees'
end;

alter table hr modify column Education varchar(30);

update hr set Education  = case
	when Education = 1 then 'High School'
    when Education = 2 then 'Associates Degree'
    when Education = 3 then 'Bachelor Degree'
    when Education = 4 then 'Master Degree'
    else 'Doctoral Degree'
end;

select StandardHours from hr where StandardHours >80 or StandardHours <80;