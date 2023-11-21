-- Questions

select * from hr;

-- 1. What is gender breakdown of employees in the company?
select Gender, count(*) as Total from hr 
group by Gender order by Total desc;

-- 2. How much attrition in each department?
select Department, count(*) as Total from hr where AttritionLabel = 'Ex-Employees'
group by Department order by Total desc;

-- 3. How much attrition per job role?
select JobRole, count(*) as Total from hr where AttritionLabel = 'Ex-Employees'
group by JobRole order by Total desc;

-- 4. What are the attrition rates by gender and age group?
select Gender, AgeGroup, count(case when AttritionLabel = 'Ex-Employees' then 1 end)/count(*)*100 as AttritionRate from hr 
group by Gender, AgeGroup order by AgeGroup;

-- 5. What is the minimum, maximum, and average monthly income by job role?
select JobRole, min(MonthlyIncome) as Minimum, max(MonthlyIncome) as Maximum, avg(MonthlyIncome) as Average from hr
group by JobRole order by Average desc;

-- 6. What is the average hourly rate, daily rate, and monthly rate?
select avg(HourlyRate) as 'Hourly Rate', avg(DailyRate) as 'Daily Rate', avg(MonthlyRate) as 'Monthly Rate' from hr;

-- 7. How is job satisfaction based on job role?
select JobRole, JobSatisfaction, count(*) as Total from hr 
group by JobRole, JobSatisfaction order by JobRole;

-- 8. How much attrition in each education field?
select EducationField, count(*) as Total from hr
where AttritionLabel = 'Ex-Employees' group by EducationField order by Total desc;

-- 9. How much attrition in each marital status?
select MaritalStatus, count(*) as Total from hr
where AttritionLabel = 'Ex-Employees' group by MaritalStatus order by Total desc;

-- 10. How much attrition in each business travel?
select BusinessTravel, count(*) as Total from hr
where AttritionLabel = 'Ex-Employees' group by BusinessTravel order by Total desc;