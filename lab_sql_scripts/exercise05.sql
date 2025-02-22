USE lab_db;

CREATE TABLE employee(
Emp_No INT PRIMARY KEY,
Emp_Name VARCHAR(50),
Designation VARCHAR(50),
basic FLOAT,
DA FLOAT,
HRA FLOAT,
PF FLOAT,
Gross_pay FLOAT,
Net_pay FLOAT);

INSERT INTO employee (EmpNo, EmpName, Job, Basic, DA, HRA, PF) 
VALUES 
(1, 'Sadish Pradhan', 'Coach', 50000, 7000, 10000, 5000), 
(2, 'Bikash Gurung', 'Trainer', 45000, 6500, 9000, 4500), 
(3, 'Ashim Shrestha', 'Physiotherapist', 48000, 6800, 9500, 4800), 
(4, 'Roshan Maharjan', 'Team Manager', 52000, 7200, 10500, 5200), 
(5, 'Binod Shrestha', 'Referee', 43000, 6000, 8700, 4300);
UPDATE employee SET Gross_Pay = Basic + DA + HRA, Net_Pay = Gross_Pay - PF; 

ALTER TABLE employee ADD AD2 FLOAT;
UPDATE employee SET DA2 = DA *1.10;

ALTER TABLE employee ADD HRA2 FLOAT;
UPDATE employee SET HRA2 = HRA * 1.15;

ALTER TABLE employee ADD PF2 FLOAT;
UPDATE employee SET PF2 = PF * 0.95;

ALTER TABLE employee ADD Goss_pay2 FLOAT;
UPDATE employee SET Gross_pay2 = Basic + DA2 + HRA2;

ALTER TABLE employee ADD Net_pay2 FLOAT;
UPDATE employee SET Net_pay2 = Gross_pay2 - PF2;

SELECT * FROM employee;

SELECT Emp_Name, Basic, Designation FROM employee WHERE Basic =
(SELECT MIN(Basic) FROM employee WHERE Designation = employee.Designation);

UPDATE Employee SET Net_pay = Net_pay + 1200 WHERE Net_Pay < 10000;

SELECT Emp_Name, Gross_pay FROM employee WHERE Gross_pay BETWEEN 10000 AND 20000;

SELECT Emp_Name, Gross_pay FROM employee WHERE Gross_pay = ( SELECT MAX(Gross_pay) FROM employee;