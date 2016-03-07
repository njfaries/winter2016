--1.1--
SELECT empid FROM Employee e
WHERE EXISTS (	SELECT empid, commamount FROM Commission c
				WHERE c.empid = e.empid 
				AND commamount >= 2000)
ORDER BY empid ASC;

--1.2--
SELECT empid, empname FROM Employee
WHERE mgrid = (	SELECT empid FROM Employee 
				WHERE empname = 'Thomas McCarthy')
ORDER BY empname, empid ASC;

--1.3--
SELECT empid, empname FROM Employee e
WHERE NOT EXISTS (	SELECT empid FROM Employee m
					WHERE e.mgrid = m.empid 
					AND workcity = 'Montreal')
ORDER BY empname, empid ASC;

--1.4--
SELECT deptname FROM Department d
WHERE NOT EXISTS (	SELECT * FROM Employee e
					WHERE e.deptid = d.deptid
					AND workcity IS NOT NULL)
ORDER BY deptname ASC;

--1.5--
SELECT empname, monthlypayscale FROM Employee
WHERE monthlypayscale = (	SELECT MAX(monthlypayscale) FROM Employee
							WHERE workcity IS NOT NULL)
AND workcity IS NOT NULL
ORDER BY empname ASC;

--1.6--
SELECT Department.deptname, AVG(Employee.monthlypayscale) AS AvgPay FROM Department
INNER JOIN Employee ON Department.deptid = Employee.deptid
GROUP BY Department.deptid
ORDER BY AvgPay DESC, deptname ASC;

--1.7--
SELECT empid, empname FROM Employee m
WHERE EXISTS (	SELECT empid FROM Employee e
				WHERE workcity = 'Vancouver'
				AND e.mgrid = m.empid
				AND EXISTS (	SELECT empid FROM Commission c
								WHERE c.empid = e.empid))
AND deptid = (	SELECT deptid FROM Department
				WHERE deptname = 'Finance')
ORDER BY empname ASC;

--1.8--
SELECT d.deptname, emp.workcity, (	SELECT COUNT(*) FROM Employee e
									WHERE e.workcity = emp.workcity
									AND e.deptid = d.deptid) AS EmpCnt FROM Department d
INNER JOIN Employee emp ON d.deptid = emp.deptid
WHERE emp.workcity IS NOT NULL
GROUP BY d.deptname, emp.workcity, d.deptid
ORDER BY EmpCnt DESC, d.deptname ASC, emp.workcity ASC;

--1.9--
SELECT d.deptname FROM Department d
WHERE 10 < (	SELECT COUNT(*) FROM Employee e
				WHERE e.deptid = d.deptid)
GROUP BY d.deptname, d.deptid
ORDER BY d.deptname ASC;

--1.10--
SELECT d.deptname, 
(CASE
	WHEN emp.workcity IS NOT NULL THEN 'Stationary'
	WHEN emp.workcity IS NULL THEN 'Mobile'
	END) AS EmpType, 
AVG(emp.monthlypayscale) AS AvgMnthPay FROM Department d
INNER JOIN Employee emp on d.deptid = emp.deptid
GROUP BY d.deptname, EmpType
ORDER BY d.deptname ASC, EmpType ASC;

--1.11--
SELECT (	SELECT empname FROM Employee
			WHERE empid = emp.mgrid) AS MgrName, 
empid, 
empname FROM Employee emp
WHERE (CURRENT_DATE - INTERVAL '40 YEARS') > birthdate
AND (CURRENT_DATE - INTERVAL '1 YEAR') < joindate
AND (	SELECT COUNT(*) FROM Employee e
		WHERE e.deptid = emp.deptid) < 5
ORDER BY MgrName ASC, empid ASC;

--1.12--
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

--1.13--
SELECT e.empid, e.empname, (SELECT SUM(commamount) FROM Commission c 
							WHERE c.empid = e.empid
							AND DATE_PART('month', c.commdate) = 08
							AND DATE_PART('year', c.commdate) = 2015) as TotComm FROM Employee e
WHERE EXISTS (	SELECT empid FROM Commission c
				WHERE c.empid = e.empid
				AND DATE_PART('month', c.commdate) = 08
				AND DATE_PART('year', c.commdate) = 2015)
ORDER BY TotComm DESC, empid ASC;

--1.14--
SELECT e.empid, e.empname FROM Employee e
LEFT OUTER JOIN Commission c ON e.empid = c.empid
WHERE e.joindate < '2015-08-01'
AND NOT EXISTS (SELECT * FROM Commission c
				WHERE e.empid = c.empid
				AND c.commdate BETWEEN '2015-08-01' AND '2015-08-31')
GROUP BY e.empid
ORDER BY e.empid ASC;