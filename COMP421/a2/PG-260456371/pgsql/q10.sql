SELECT d.deptname, 
(CASE
	WHEN emp.workcity IS NOT NULL THEN 'Stationary'
	WHEN emp.workcity IS NULL THEN 'Mobile'
	END) AS EmpType, 
AVG(emp.monthlypayscale) AS AvgMnthPay FROM Department d
INNER JOIN Employee emp on d.deptid = emp.deptid
GROUP BY d.deptname, EmpType
ORDER BY d.deptname ASC, EmpType ASC;
