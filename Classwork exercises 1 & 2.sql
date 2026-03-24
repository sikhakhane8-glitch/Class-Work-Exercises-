select * from `workspace`.`default`.`employees_exercise_1_and_2` limit 1;

---Exercise 1: Select Statement
select *
 from `workspace`.`default`.`employees_exercise_1_and_2`;

 ---Exercise 1: Distinct Statement
select distinct (department)
from `workspace`.`default`.`employees_exercise_1_and_2`;

---Exercise 1: Order BY Statement
select first_name,last_name, salary
from `workspace`.`default`.`employees_exercise_1_and_2`
ORDER BY 'salary' DESC;

---Exercise 1: Order BY Statement
select first_name,last_name, salary
from `workspace`.`default`.`employees_exercise_1_and_2`
ORDER BY 'salary' DESC
LIMIT 5;

---Exercise 1: Where Statement
SELECT *
from `workspace`.`default`.`employees_exercise_1_and_2`
WHERE department = 'IT';

---Exercise 1: AND Statement
SELECT *
FROM `workspace`.`default`.`employees_exercise_1_and_2`
WHERE department = 'Finance'
  AND salary > 58000;

---Exercise 1: OR Statement
SELECT *
FROM `workspace`.`default`.`employees_exercise_1_and_2`
WHERE department = 'HR'
   OR department = 'Marketing';

---Exercise 1: NOT Statement   
SELECT *
FROM `workspace`.`default`.`employees_exercise_1_and_2`
WHERE department != 'IT';

---Exercise 1: IN Statement 
SELECT *
FROM `workspace`.`default`.`employees_exercise_1_and_2`
WHERE department IN ('HR', 'IT', 'Finance');

---Exercise 1: Combining Conditions  
SELECT *
FROM `workspace`.`default`.`employees_exercise_1_and_2`
WHERE department = 'IT'
  AND salary > 50000
  AND city = 'New York';

---Exercise 1: Combining WHERE AND & ORDER BY 
SELECT first_name, last_name
FROM `workspace`.`default`.`employees_exercise_1_and_2`
WHERE department IN ('Finance', 'Marketing')
  AND salary > 52000
ORDER BY salary DESC;

---Exercise 1: Combining SELECT DISTINCT,WHERE AND IN
SELECT DISTINCT city
FROM `workspace`.`default`.`employees_exercise_1_and_2`
WHERE department NOT IN ('IT', 'HR');

---Exercise 1: Combining WHERE,NOT AND & ORDER BY
SELECT *
FROM `workspace`.`default`.`employees_exercise_1_and_2`
WHERE department <> 'Finance'
  AND salary > 50000
ORDER BY hire_date ASC;

---Exercise 1: Combining WHERE,OR IN & LIMIT
SELECT *
FROM `workspace`.`default`.`employees_exercise_1_and_2`
WHERE city IN ('Chicago', 'Los Angeles')
  AND department IN ('IT', 'Marketing')
LIMIT 3;

---Exercise 2: SUM FUNCTION
SELECT SUM(salary) AS total_it_salary
FROM `workspace`.`default`.`employees_exercise_1_and_2`
WHERE department = 'IT';

---Exercise 2: COUNT FUNCTION
SELECT COUNT(*) AS total_employees
FROM `workspace`.`default`.`employees_exercise_1_and_2`;

---Exercise 2: AVG FUNCTION
SELECT AVG(salary) AS avg_hr_salary
FROM `workspace`.`default`.`employees_exercise_1_and_2`
WHERE department = 'HR';

---Exercise 2: MIN AND MAX FUNCTION
SELECT MIN(salary) AS lowest_salary,
       MAX(salary) AS highest_salary
FROM `workspace`.`default`.`employees_exercise_1_and_2`;

---Exercise 2: GROUP BY
SELECT department,
       SUM(salary) AS total_salary
FROM `workspace`.`default`.`employees_exercise_1_and_2`
GROUP BY department;

---Exercise 2: GROUP BY AND COUNT FUNCTION
SELECT city,
       COUNT(*) AS num_employees
FROM `workspace`.`default`.`employees_exercise_1_and_2`
GROUP BY city;

---Exercise 2: GROUP BY AND ORDER BY
SELECT department,
       AVG(salary) AS avg_salary
FROM `workspace`.`default`.`employees_exercise_1_and_2`
GROUP BY department
ORDER BY avg_salary DESC;

---Exercise 2: HAVING CLAUSE
SELECT department,
       SUM(salary) AS total_salary
FROM `workspace`.`default`.`employees_exercise_1_and_2`
GROUP BY department
HAVING SUM(salary) > 100000;

---Exercise 2: COMBINING GROUP  BY HAVING AND ORDER BY
SELECT city,
       COUNT(*) AS num_employees
FROM `workspace`.`default`.`employees_exercise_1_and_2`
GROUP BY city
HAVING COUNT(*) > 1
ORDER BY num_employees DESC;

---Exercise 2: COMBINING AGGREGATED FUNCITONS
SELECT department,
       AVG(salary) AS avg_salary
FROM `workspace`.`default`.`employees_exercise_1_and_2`
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;
