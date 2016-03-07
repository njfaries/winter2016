psql cs421 <<-END 2>&1 | tee setup.log

CREATE TABLE Department
(
   Deptid INTEGER NOT NULL
	,DeptName VARCHAR(20) NOT NULL

	,PRIMARY KEY (DeptId)
);

CREATE TABLE Employee
(
   EmpId INTEGER NOT NULL
	,EmpName VARCHAR(20) NOT NULL
  ,MgrId INTEGER
	,DeptId INTEGER NOT NULL
	,MonthlyPayScale INTEGER NOT NULL
	,WorkCity VARCHAR(20)
	,BirthDate DATE NOT NULL
	,JoinDate DATE NOT NULL

	,PRIMARY KEY (EmpId)
	,FOREIGN KEY (DeptId) REFERENCES Department(DeptId)
	,FOREIGN KEY (MgrId) REFERENCES Employee(EmpId)
);

CREATE TABLE Commission
(
	 EmpId INTEGER NOT NULL
	,CommDate DATE NOT NULL
	,CommAmount INTEGER NOT NULL

	,PRIMARY KEY(EmpId, CommDate)
	,FOREIGN KEY(EmpId) REFERENCES Employee(EmpId)
);

END
