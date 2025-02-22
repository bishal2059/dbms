USE lab_db;

CREATE TABLE Sales(
Sales_No INT PRIMARY KEY,
Sales_Name VARCHAR(100) NOT NULL,
Branch VARCHAR(50) NOT NULL,
Sales_Amount DOUBLE,
DOB DATE NOT NULL);

INSERT INTO Sales (Sales_No, Sales_Name, Branch, Sales_Amount, DOB)
VALUES
(1, 'Parbati Magar', 'Pokhara', 50000, '1998-09-14'), 
(2, 'Anish Bista', 'Lalitpur', 60000, '1998-05-22'), 
(3, 'Kiran Chhetri', 'Pokhara', 75000, '1990-03-24'), 
(4, 'Sujal Shrestha', 'Biratnagar', 55000, '1992-02-05'), 
(5, 'Paras Khadka', 'Butwal', 58000, '1988-12-06');

SELECT Branch, SUM(Sales_Amount) As Total_Sales_Amount FROM Sales GROUP BY Branch;

SELECT Branch,AVG(Sales_Amount) As Total_Sales_Amount FROM Sales GROUP BY Branch;

SELECT Sales_Name, DATE_FORMAT(DOB, '%d-%b-%y') AS DOB_Char FROM Sales WHERE MONTH(DOB) = 12;

SELECT Sales_Name, DATE_FORMAT(DOB, '%d-%b-%y') AS DOB_Char FROM Sales ORDER BY MONTH(DOB);