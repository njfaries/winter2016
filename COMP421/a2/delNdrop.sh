psql cs421 <<-END 2>&1 | tee delNdrop.log

DROP TABLE Commission;
DROP TABLE Employee;
DROP TABLE Department;

END
