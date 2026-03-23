select * from `employees_analysis`.`default`.`employees` limit 100;

---Question 1:Inner Joins
SELECT A.EmployeeID,FirstName,LastName,Department,Salary,ProjectName,ProjectID,Status
FROM `employees_analysis`.`default`.`employees` AS A
INNER JOIN `project_analysis`.`default`.`projects` AS B
ON A.EmployeeID = B.EmployeeID;

---Question 2: Left Join
SELECT A.EmployeeID,FirstName,LastName,Department,Salary,ProjectName,ProjectID,Status
FROM `employees_analysis`.`default`.`employees` AS A
LEFT JOIN `project_analysis`.`default`.`projects` AS B
ON A.EmployeeID = B.EmployeeID;

---Question4: Full Outer Join
SELECT A.EmployeeID,FirstName,LastName,Department,Salary,ProjectName,ProjectID,Status
FROM `employees_analysis`.`default`.`employees` AS A
FULL OUTER JOIN `project_analysis`.`default`.`projects` AS B
ON A.EmployeeID = B.EmployeeID;

---Question 7: Filtering Statement > 70 000
SELECT EmployeeID,FirstName,LastName,Salary,Department
FROM `employees_analysis`.`default`.`employees` 
WHERE Salary > 70000;

---Question 8: Filtering Statement (IT/FINANCE)
SELECT EmployeeID,FirstName,LastName,Salary,Department
FROM `employees_analysis`.`default`.`employees` 
WHERE Department = 'IT' OR Department = 'Finance';

---Question 9: Projects not completed
SELECT ProjectID,ProjectName,Budget,Status
FROM `project_analysis`.`default`.`projects`
WHERE Status <> 'Completed';

---Question 10: Projects not completed >70000
SELECT ProjectID,ProjectName,Budget,Status
FROM `project_analysis`.`default`.`projects`
WHERE Status <> 'Completed' AND Budget >75000;

---Question 11: Employees from NY/Toronto
SELECT EmployeeID,FirstName,LastName,Department,Salary,City
FROM `employees_analysis`.`default`.`employees` 
WHERE City = 'New York' OR City = 'Toronto'
ORDER BY Salary DESC;

---Question 12: Highest Paid employees
SELECT EmployeeID,FirstName,LastName,Department,Salary,City
FROM `employees_analysis`.`default`.`employees` 
ORDER BY Salary DESC LIMIT 3;

---Question 13: Total salary per department DESC
SELECT SUM(Salary) AS Total_Salary,
Department
FROM `employees_analysis`.`default`.`employees` 
GROUP BY Department
ORDER BY Total_Salary DESC;

---Question 14: Average salary per city
SELECT City,
       AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY City
HAVING AVG(Salary) > 65000;

---Question 15: Number of Employees
SELECT COUNT(EmployeeID) AS Employee_Count,
Department
FROM `employees_analysis`.`default`.`employees`
GROUP BY Department
HAVING Employee_Count > 1;

---Question 16: Project count
SELECT Status,
       COUNT(ProjectID) AS ProjectCount
FROM Projects
GROUP BY Status
HAVING COUNT(ProjectID) >= 2;

---Question 17: total project budget per employee
SELECT SUM(Budget) AS Total_Project_Budget,
 A.EmployeeID,
FirstName,
LastName
FROM `employees_analysis`.`default`.`employees` AS A
JOIN `project_analysis`.`default`.`projects` AS B
ON A.EmployeeID = B.EmployeeID
GROUP BY A.EmployeeID, FirstName,LastName
HAVING SUM (Budget) >150000;












