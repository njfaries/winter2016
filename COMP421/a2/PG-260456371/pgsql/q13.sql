SELECT e.empid, e.empname, (SELECT SUM(commamount) FROM Commission c 
							WHERE c.empid = e.empid
							AND DATE_PART('month', c.commdate) = 08
							AND DATE_PART('year', c.commdate) = 2015) as TotComm FROM Employee e
WHERE EXISTS (	SELECT empid FROM Commission c
				WHERE c.empid = e.empid
				AND DATE_PART('month', c.commdate) = 08
				AND DATE_PART('year', c.commdate) = 2015)
ORDER BY TotComm DESC, empid ASC;
