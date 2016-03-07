SELECT deptname FROM Department d
WHERE NOT EXISTS (	SELECT * FROM Employee e
					WHERE e.deptid = d.deptid
					AND workcity IS NOT NULL)
ORDER BY deptname ASC;
