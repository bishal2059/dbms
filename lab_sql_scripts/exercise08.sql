USE lab_db;

SELECT e.empno, e.deptno, d,dname FROM emp e JOIN dept d ON e.deptno = d.deptno;

SELECT e.ename AS EmployeeName, d.dname AS DepartmentName FROM Emp e  
LEFT JOIN Dept d ON e.deptno = d.deptno;

SELECT e.ename AS EmployeeName, d.dname AS DepartmentName FROM Emp e  
RIGHT JOIN Dept d ON e.deptno = d.deptno;

SELECT empno, ename, sal  FROM Emp WHERE sal > (SELECT AVG(sal) FROM Emp);