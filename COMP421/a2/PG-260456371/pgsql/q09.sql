SELECT d.deptname FROM Department d
WHERE 10 < (	SELECT COUNT(*) FROM Employee e
				WHERE e.deptid = d.deptid)
GROUP BY d.deptname, d.deptid
ORDER BY d.deptname ASC;
