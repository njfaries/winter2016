SELECT empid, empname FROM Employee e
WHERE NOT EXISTS (	SELECT empid FROM Employee m
					WHERE e.mgrid = m.empid 
					AND workcity = 'Montreal')
ORDER BY empname, empid ASC;
