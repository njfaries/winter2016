SELECT e.empid, e.empname FROM Employee e
LEFT OUTER JOIN Commission c ON e.empid = c.empid
WHERE e.joindate < '2015-08-01'
AND NOT EXISTS (SELECT * FROM Commission c
				WHERE e.empid = c.empid
				AND c.commdate BETWEEN '2015-08-01' AND '2015-08-31')
GROUP BY e.empid
ORDER BY e.empid ASC;
