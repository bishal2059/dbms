USE lab_db;

SELECT e1.ename AS EmployeeName FROM Emp e1 JOIN Emp e2 ON e1.mgr = e2.empno WHERE e1.sal > e2.sal ;

SELECT e.ename, e.sal, d.dname FROM Emp e JOIN Dept d ON e.deptno = d.deptno WHERE e.sal = (SELECT MAX(sal) FROM Emp WHERE deptno = e.deptno);

SELECT e1.ename AS Employee1, e2.ename AS Employee2 FROM Emp e1 JOIN Emp e2 ON e1.deptno = e2.deptno AND e1.empno <> e2.empno;

SELECT e.ename FROM Emp e WHERE e.sal = (SELECT MIN(sal) FROM Emp WHERE deptno = e.deptno);

SELECT d.dname FROM Dept d LEFT JOIN Emp e ON d.deptno = e.deptno WHERE e.empno IS NULL;