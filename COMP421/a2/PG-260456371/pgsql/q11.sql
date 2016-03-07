SELECT (	SELECT empname FROM Employee
			WHERE empid = emp.mgrid) AS MgrName, 
empid, 
empname FROM Employee emp
WHERE (CURRENT_DATE - INTERVAL '40 YEARS') > birthdate
AND (CURRENT_DATE - INTERVAL '1 YEAR') < joindate
AND (	SELECT COUNT(*) FROM Employee e
		WHERE e.deptid = emp.deptid) < 5
ORDER BY MgrName ASC, empid ASC;
