-- https://platform.stratascratch.com/coding/10299-finding-updated-records?code_type=3
-- employee salary increase each year, so the current salary is the highest salary in the table
    -- use max() in SELECT clause to find highest salary of employee
-- output id, first name, last name department Id, max(salary) in SELECT clause

SELECT
    id, 
    first_name,
    last_name,
    department_id,
    max(salary) as current_salary
FROM ms_employee_salary
GROUP BY 
    id, 
    first_name,
    last_name,
    department_id
ORDER BY id ASC