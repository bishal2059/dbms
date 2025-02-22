USE lab_db;

CREATE TABLE Dept(
deptno INT PRIMARY KEY,
dname VARCHAR(100) NOT NULL,
loc VARCHAR(100) NOT NULL);

CREATE TABLE Emp(
empno INT PRIMARY KEY,
ename VARCHAR(255) NOT NULL,
job VARCHAR(255) NOT NULL,
mgr INT NOT NULL,
hiredate DATE NOT NULL,
sal DECIMAL(10,2) NOT NULL,
comm DECIMAL(10,2),
deptno INT NOT NULL,
FOREIGN KEY(deptno) REFERENCES Dept(deptno));

INSERT INTO Dept (deptno, dname, loc)  
VALUES  
(10, 'Human Resources', 'Kathmandu'),  
(20, 'Finance', 'Pokhara'),  
(30, 'IT', 'Lalitpur'),  
(40, 'Marketing', 'Biratnagar'),  
(50, 'Sales', 'Butwal');  


INSERT INTO Emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)  
VALUES  
(101, 'Rajesh Shrestha', 'Manager', 0, '2020-01-15', 75000.00, 5000.00, 10),  
(102, 'Sita Pandey', 'Accountant', 101, '2021-03-10', 60000.00, NULL, 20),  
(103, 'Bikash Thapa', 'Software Engineer', 101, '2019-07-22', 85000.00, 7000.00, 30),  
(104, 'Anjali Gurung', 'Marketing Executive', 102, '2022-06-05', 55000.00, 3000.00, 40),  
(105, 'Kiran Basnet', 'Sales Representative', 104, '2023-02-11', 50000.00, 2000.00, 50);  

UPDATE Emp SET sal=sal*1.15 WHERE YEAR(hiredate)< YEAR(CURRENT_DATE)-30;

DELETE FROM Emp WHERE YEAR(hiredate) <= YEAR(CURRENT_DATE)-30;

SELECT mgr,COUNT(*) AS Num_Employees FROM Emp GROUP BY mgr ORDER BY Num_Employees DESC LIMIT 1;

CREATE VIEW EmployeeManagerView AS SELECT e1.name AS EmployeeName, e2.ename AS ManagerName From Emp e1 LEFT JOIN Emp e2 ON e1.mgr = e2.mgr;