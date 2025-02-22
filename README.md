# Lab Practical Questions - SQL

This repository contains SQL scripts for various lab practical exercises related to database operations, queries, and modifications. The exercises cover essential SQL concepts such as data retrieval, updating records, transaction control, grouping, ordering, and joins.

## Table of Contents

1. [Employee Table Operations](#employee-table-operations)
2. [Client Master Table Operations](#client-master-table-operations)
3. [Rollback and Commit Commands](#rollback-and-commit-commands)
4. [Group By and Order By Clauses](#group-by-and-order-by-clauses)
5. [Employee Salary Calculations](#employee-salary-calculations)
6. [Enterprise Employee Database](#enterprise-employee-database)
7. [Advanced Employee Queries](#advanced-employee-queries)
8. [Joins on Employee and Department Tables](#joins-on-employee-and-department-tables)
9. [How to Run the Scripts](#how-to-run-the-scripts)

---

## Employee Table Operations

- Create an `EMPLOYEES` table with fields like Employee ID, First Name, Last Name, etc.
- Insert five records.
- Retrieve all records.
- Find employee details based on salary, department, and manager.

## Client Master Table Operations

- Create a `Client_Master` table.
- Insert five records.
- Update balance due for a specific client.
- Rename the table.
- Display balance with a new heading.

## Rollback and Commit Commands

- Create a `Teacher` table.
- Insert five records.
- Increase salary for Mathematics and Commerce departments with rollback and commit commands.

## Group By and Order By Clauses

- Create a `Sales` table.
- Insert five records.
- Calculate total and average sales per branch.
- Display salesmen born in December.
- Sort salesmen by birth month.

## Employee Salary Calculations

- Create an `Emp` table with fields for salary calculations.
- Insert five records and compute `GrossPay` and `NetPay`.
- Update `DA`, `HRA`, `PF`, and other salary components.
- Query employees with salary-based conditions.

## Enterprise Employee Database

- Create `Dept` and `Emp` tables.
- Insert relevant records.
- Update salaries based on experience.
- Delete employees based on service years.
- Identify managers with the most employees.
- Create a view displaying employee-manager relationships.

## Advanced Employee Queries

- Identify employees earning more than their managers.
- Find highest-paid employees in each department.
- Locate employees in the same location.
- Find employees whose salary matches the minimum salary of any department.
- Identify departments with no employees.

## Joins on Employee and Department Tables

- Perform joins between `EMPLOYEES` and `DEPARTMENTS`.
- Display employee and department details using left and right outer joins.
- Retrieve employees earning above the average salary.

---

## How to Run the Scripts

1. Clone the repository:
   ```sh
   git clone https://github.com/bishal2059/dbms
   cd dbms
   ```
2. Open a database client (e.g., MySQL, PostgreSQL, SQLite).
3. Load and execute the respective `.sql` files in order:
   ```sql
   SOURCE create_tables.sql;
   SOURCE insert_records.sql;
   SOURCE queries.sql;
   ```
4. Verify outputs using `SELECT * FROM table_name;` commands.
5. Modify queries as needed for testing.

---

### Author

Indra Prasad Sapkota

