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
from `case_statement_analysis`.`default`.`3_employees_case_statement`;

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

 ---6. Table: Tickets 
SELECT 
    issue_type,
    priority,
    CASE 
        WHEN priority = 3 THEN 'High'
        WHEN priority = 2 THEN 'Medium'
        WHEN priority = 1 THEN 'Low'
     END AS priority_label
from `case_statement_analysis`.`default`.`6_tickets_case_statement`;

--- Table 7: attendance
SELECT 
    student_id,
    (days_present * 100.0 / total_days) AS attendance_percentage,
    CASE 
        WHEN (days_present * 100.0 / total_days) >= 90 THEN 'Excellent'
        WHEN (days_present * 100.0 / total_days) BETWEEN 75 AND 89.99 THEN 'Good'
        ELSE 'Needs Improvement'
    END AS attendance_status
from `case_statement_analysis`.`default`.`7_attendance_case_statement`;

---8 Table 8: Product Inventory
SELECT 
    product_id,
    stock_qty,
    CASE 
        WHEN stock_qty = 0 THEN 'Out of Stock'
        WHEN stock_qty BETWEEN 1 AND 5 THEN 'Low Stock'
        WHEN stock_qty > 5 THEN 'In Stock'
    END AS stock_status
from `case_statement_analysis`.`default`.`8_product_inventory_case_statement`;

---table 9: Classes

SELECT 
    subject,
    enrolled_students,
    CASE 
        WHEN enrolled_students >= 25 THEN 'Large'
        WHEN enrolled_students BETWEEN 10 AND 24 THEN 'Medium'
        ELSE 'Small'
    END AS class_size_category
from `case_statement_analysis`.`default`.`9_classes_case_statement_1`;

---Table 10: Payments
SELECT 
    payment_id,
    payment_method,
    amount,
    CASE 
        WHEN payment_method = 'Cash' AND amount >= 200 THEN 'Eligible for Discount'
        ELSE 'Not Eligible'
    END AS discount_eligibility
from `case_statement_analysis`.`default`.`10_classes_case_statement`;


 
