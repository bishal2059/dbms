USE lab_db;

CREATE TABLE Teacher (
Id INT PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
DeptNo INT NOT NULL,
DateOfJoining DATE NOT NULL,
DeptName VARCHAR(50) NOT NULL,
Location VARCHAR(50) NOT NULL,
Salary DOUBLE);


INSERT INTO Teacher (Id, Name, DeptNo, DateOfJoining, DeptName, Location, Salary)
VALUES
(1, 'Lila Raj Paudel', 101, '2020-06-15', 'Computer Science', 'Kathmandu', 75000.00), 
(2, 'Bibek Bhandari', 102, '2018-09-25', 'Mathematics', 'Pokhara', 80000.00), 
(3, 'Paras Dhakal', 103, '2019-01-10', 'Physics', 'Lalitpur', 72000.00), 
(4, 'Aadarsh Chhetri', 104, '2021-04-20', 'English', 'Bhaktapur', 68000.00), 
(5, 'Kushal Bhujel', 105, '2017-12-05', 'Chemistry', 'Butwal', 79000.00);


UPDATE Teacher SET Salary = Salary * 1.25 WHERE DeptName = 'Mathematics';

UPDATE Teacher SET Salary = Salary * 1.25 WHERE DeptName = 'Mathematics';

START TRANSACTION;
UPDATE Teacher SET Salary = Salary * 1.25 WHERE DeptName = 'Mathematics';
ROLLBACK;

UPDATE Teacher SET Salary = Salary * 1.15 WHERE DeptName = 'Commerce';

COMMIT;