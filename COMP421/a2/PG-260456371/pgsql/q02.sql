SELECT empid, empname FROM Employee
WHERE mgrid = (	SELECT empid FROM Employee 
				WHERE empname = 'Thomas McCarthy')
ORDER BY empname, empid ASC;
