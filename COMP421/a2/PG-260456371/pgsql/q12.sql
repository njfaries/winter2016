SELECT m.empname FROM Employee m
WHERE (	SELECT COUNT(*) FROM Employee e
		WHERE e.workcity = 'Toronto'
		AND e.mgrid = m.empid) > 5
AND (	SELECT COUNT(*) FROM Employee e
		WHERE e.workcity = 'Montreal'
		AND e.mgrid = m.empid) > 3
AND (	SELECT COUNT(*) FROM Employee e
		WHERE e.workcity IS NULL
		AND e.mgrid = m.empid) > 2
ORDER BY m.empname ASC;
