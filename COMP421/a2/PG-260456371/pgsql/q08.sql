SELECT d.deptname, emp.workcity, (	SELECT COUNT(*) FROM Employee e
									WHERE e.workcity = emp.workcity
									AND e.deptid = d.deptid) AS EmpCnt FROM Department d
INNER JOIN Employee emp ON d.deptid = emp.deptid
WHERE emp.workcity IS NOT NULL
GROUP BY d.deptname, emp.workcity, d.deptid
ORDER BY EmpCnt DESC, d.deptname ASC, emp.workcity ASC;
