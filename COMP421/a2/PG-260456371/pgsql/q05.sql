SELECT empname, monthlypayscale FROM Employee
WHERE monthlypayscale = (	SELECT MAX(monthlypayscale) FROM Employee
							WHERE workcity IS NOT NULL)
AND workcity IS NOT NULL
ORDER BY empname ASC;
