# Lab Practical Questions - SQL

This repository contains SQL scripts for various lab practical exercises related to database operations, queries, and modifications. The exercises cover essential SQL concepts such as data retrieval, updating records, transaction control, grouping, ordering, and joins.

---

## Exercises

### 1. Employee Table Operations  
**Description**: Create and query an `employees` table.  
**Tasks**:  
1. Create a table with fields:  
   `(Emp_id, First_name, Last_name, Phone_No, Hire_date, Job_id, Emp_Salary, Commission_Pct, Manager_id, Department_id)`.  
2. Insert 5 records.  
3. Display the entire table.  
4. Retrieve employee IDs, names, and salaries.  
5. Find employees with salary ≥ 4800.  
6. List employees with the last name 'AUSTIN'.  
7. Find employees in departments 60, 70, or 80.  
8. Display unique `Manager_Id` values.  

---

### 2. Update Client Master Records  
**Description**: Manage a `Client_Master` table with updates and renames.  
**Tasks**:  
1. Create a table with fields:  
   `(ClientNO, Name, Address, City, State, bal_due)`.  
2. Insert 5 records.  
3. Display the table.  
4. Find clients with `bal_due > 5000`.  
5. Update `bal_due` for ClientNO "C123" to 5100.  
6. Rename the table to `Client12`.  
7. Display `bal_due` as "BALANCE".  

---

### 3. Rollback and Commit Transactions  
**Description**: Practice transactional commands with a `Teacher` table.  
**Tasks**:  
1. Create a table with fields:  
   `(Id, Name, DeptNo, Date_of_joining, DeptName, Location, Salary)`.  
2. Insert 5 records.  
3. Increase salaries by 25% for the Mathematics department.  
4. Perform a `ROLLBACK`.  
5. Increase salaries by 15% for the Commerce department.  
6. Perform a `COMMIT`.  

---

### 4. Group By and Order By Clauses  
**Description**: Analyze sales data with aggregation and formatting.  
**Tasks**:  
1. Create a `Sales` table with fields:  
   `(Sales_No, Sales_Name, Branch, Sales_Amount, DOB)`.  
2. Insert 5 records.  
3. Calculate total sales per branch.  
4. Calculate average sales per branch.  
5. Display salespeople born in December (format: `21-Dec-09`).  
6. List names and DOB ordered by month.  

---

### 5. Emp Table with Salary Calculations  
**Description**: Manage salary components and compute pay.  
**Tasks**:  
1. Create an `Emp` table with fields:  
   `(Emp_No, Emp_Name, Designation, Basic, DA, HRA, PF, Gross_Pay, Net_Pay)`.  
2. Insert 5 records and compute `Gross_Pay` and `Net_Pay`.  
3. Add/update columns for DA, HRA, PF, etc.  
4. Find employees with the lowest `Basic` per department.  
5. Add Rs. 1200 allowance if `NetPay < 10,000`.  
6. Display employees with `Gross_Pay` between 10k and 20k.  
7. List employees earning the maximum salary.  

---

### 6. Employee Database Management  
**Description**: Implement a department-employee system.  
**Tasks**:  
1. Create `Dept` table: `(deptno, dname, loc)`.  
2. Create `Emp` table: `(empno, ename, job, mgr, hiredate, sal, comm, deptno)`.  
3. Insert data into both tables.  
4. Update salaries by 15% for employees with >30 years of experience.  
5. Delete employees with 30 years of service.  
6. Display the manager with the most employees.  
7. Create a view showing employees and their managers.  

---

### 7. Advanced Queries on Employee Database  
**Queries**:  
a) Employees earning more than their managers.  
b) Employees with the highest salary in their department.  
c) Employees located at the same place.  
d) Employees whose total salary matches any department's minimum salary.  
e) Departments with no employees.  

---

### 8. Join Operations on Departments and Employees  
**Queries**:  
a) Display employees and departments with matching IDs.  
b) Left outer join for employee and department names.  
c) Right outer join for employee and department names.  
d) Display employees earning above average salary.  

---

## How to Run Solutions  
1. Clone the repository:
   ```sh
   git clone https://github.com/bishal2059/dbms
   cd dbms
   ```
2. **Prerequisites**:  
   - Install a SQL database (e.g., [MySQL](https://www.mysql.com), [PostgreSQL](https://www.postgresql.org)).  
   - Use a SQL client (e.g., MySQL Workbench, DBeaver).  

3. **Execution Steps**:  
   - Navigate to the SQL client.  
   - Run the script for each exercise using:  
     ```sql
     SOURCE exerciseX.sql;  -- Replace X with the exercise number
     ```  

4. **File Structure**:  
   - `exercise1.sql` to `exercise8.sql`: Solutions for Exercises 1–8.  

---

## Notes  
- Replace placeholders (e.g., database name) in the scripts as needed.  
- Ensure tables are created and populated before running dependent queries. 

### Author

Indra Prasad Sapkota

