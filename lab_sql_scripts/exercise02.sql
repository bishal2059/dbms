USE lab_db;

CREATE TABLE Client_Master (
ClientNo VARCHAR(10) PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(30) NOT NULL,
bal_due DOUBLE);

INSERT INTO Client_Master VALUES
('C001', 'Sabina', 'Pokhara', 'Gandaki', '4000'), 
('C123', 'Sneha', 'Kathmandu', 'Bagmati', '5000'), 
('C003', 'Niraj', 'Biratnagar', 'Koshi', '3500'), 
('C004', 'Bibek', 'Butwal', 'Lumbini', '6000'),
('C005', 'Anamika', 'Dharan', 'Koshi', '4500');

SELECT * FROM Client_Master;

SELECT Name FROM Client_Master WHERE bal_due >5000;

UPDATE Client_Master SET bal_due =5100 WHERE ClientNo = 'C123';

ALTER TABLE Client_Master RENAME TO Client12;

SELECT ClientNo, Name, City, State, bal_due AS BALANCE FROM Client_Master;