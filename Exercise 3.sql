select * from `case_statement_analysis`.`default`.`products_case_statement`;

---1. Table: products
SELECT 
    product_name,
    price,
    CASE 
        WHEN price > 1000 THEN 'Expensive'
        WHEN price BETWEEN 100 AND 1000 THEN 'Mid-range'
        WHEN price < 100 THEN 'Budget'
    END AS price_category
from `case_statement_analysis`.`default`.`products_case_statement`;

---2. Table: orders
SELECT 
    customer_name,
    amount,
    CASE
        WHEN amount >= 1000 THEN 'High Value'
        WHEN amount BETWEEN 500 AND 999.99 THEN 'Medium Value'
        WHEN amount < 500 THEN 'Low Value'
    END AS order_value_category
from `case_statement_analysis`.`default`.`orders_case_statement`;


---3. Table: employees
SELECT 
    emp_name,
    department,
    salary,
    CASE
        WHEN department = 'IT' AND salary > 80000 THEN 'Senior IT'
        WHEN department = 'HR' AND salary > 55000 THEN 'Experienced HR'
        ELSE 'Staff'
    END AS position_level
from `case_statement_analysis`.`default`.`3_employees_case_statement`

---4. Table: students
SELECT 
student_name,
    score,
    CASE
        WHEN score >= 90 THEN 'A'
        WHEN score BETWEEN 80 AND 89 THEN 'B'
        WHEN score BETWEEN 70 AND 79 THEN 'C'
        WHEN score BETWEEN 60 AND 69 THEN 'D'
        ELSE 'F'
    END AS grade
from `case_statement_analysis`.`default`.`4_students_case_statement`;

---5. Table: deliveries
SELECT 
    delivery_id,
    delivery_time_minutes,
    CASE
        WHEN delivery_time_minutes <= 30 THEN 'Fast'
        WHEN delivery_time_minutes BETWEEN 31 AND 60 THEN 'On Time'
        WHEN delivery_time_minutes > 60 THEN 'Late'
    END AS performance
 from `case_statement_analysis`.`default`.`5_deliveries_case_statement`;

 


