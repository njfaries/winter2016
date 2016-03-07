SELECT Department.deptname, AVG(Employee.monthlypayscale) AS AvgPay FROM Department
INNER JOIN Employee ON Department.deptid = Employee.deptid
GROUP BY Department.deptid
ORDER BY AvgPay DESC, deptname ASC;
