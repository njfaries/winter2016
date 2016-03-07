SELECT empid, empname FROM Employee m
WHERE EXISTS (	SELECT empid FROM Employee e
				WHERE workcity = 'Vancouver'
				AND e.mgrid = m.empid
				AND EXISTS (	SELECT empid FROM Commission c
								WHERE c.empid = e.empid))
AND deptid = (	SELECT deptid FROM Department
				WHERE deptname = 'Finance')
ORDER BY empname ASC;
