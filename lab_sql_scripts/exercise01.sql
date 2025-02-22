CREATE DATABASE IF NOT EXISTS lab_db;
USE lab_db;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
Emp_id INT PRIMARY KEY,
First_name VARCHAR(50) NOT NULL,
Last_name VARCHAR(50) NOT NULL,
Phone_No VARCHAR(10) NOT NULL,
Hire_date DATE NOT NULL,
Job_id VARCHAR(15) NOT NULL,
Emp_Salary DOUBLE NOT NULL,
Commission_Pct DOUBLE,
manager_id INT,
Department_id INT);

INSERT INTO employees VALUES 
(1, 'Abishek', 'Sharma', '9876543210', '2025-01-01', 'MGR',100000.00, 0.03, 5, 12)
(2, 'Prakash', 'Poudell', '9876543210', '2024-12-15', 'DEV', 85000.00, 0.02, 4, 10), 
(3, 'Sagun', 'Shrestha', '9865432109', '2023-06-20', 'HR', 75000.00, 0.025, 3, 8), 
(4, 'Anish', 'Koirala', '9856321478', '2022-09-10', 'MGR', 120000.00, 0.04, 6, 15), 
(5, 'Sumeru', 'Dhakal', '9807654321', '2025-03-05', 'DEV', 95000.00, 0.03, 5, 12);

SELECT * FROM employees;

SELECT Emp_id,First_name,Last_name,Emp_Salary FROM employees;

SELECT First_name,Last_name,Emp_Salary FROM employees WHERE Emp_Salary>=4800;

SELECT * FROM employees WHERE Last_name='AUSTIN';

SELECT First_name,Last_name FROM employees WHERE Department_id IN (60,70,80);

SELECT DISTINCT manager_id from employees;