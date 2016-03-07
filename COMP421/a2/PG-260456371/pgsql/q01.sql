SELECT empid FROM Employee e
WHERE EXISTS (	SELECT empid, commamount FROM Commission c
				WHERE c.empid = e.empid 
				AND commamount >= 2000)
ORDER BY empid ASC;
