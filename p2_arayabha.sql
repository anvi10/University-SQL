/*
name: Anvitha Rayabhari
purdue login: arayabha
*/

--task 1

SELECT EmpName FROM Employee WHERE ZipCode = 47906 OR ZipCode = 47907;

--task 2

SELECT ProjName FROM Project JOIN ProjectManager ON Project.ProjId = ProjectManager.ProjId WHERE EndDate IS NULL;

--task 3

SELECT ProjName FROM Project ORDER BY ProjName DESC;

--task 4

SELECT UnivName, COUNT(EmpId) FROM University JOIN Graduate ON University.UnivId = Graduate.UnivId GROUP BY UnivName;

--task 5

SELECT EmpName, DeptName, GradYear FROM Department JOIN Employee ON Department.DeptId = Employee.DeptId JOIN Graduate ON Employee.EmpId = Graduate.EmpId;

--task 6

SELECT EmpName FROM Employee WHERE DeptId = 1 ORDER BY EmpName ASC;

--task 7

SELECT EmpName FROM Employee JOIN Graduate ON Employee.EmpId = Graduate.EmpId JOIN University ON Graduate.UnivId = University.UnivId WHERE (UnivName = 'Purdue' AND GradYear <= 2005);

--task 8

SELECT COUNT(EmpId) FROM Employee GROUP BY ZipCode ORDER BY ZipCode DESC;

--task 9

SELECT EmpName FROM Employee JOIN Graduate ON Employee.EmpId = Graduate.EmpId WHERE GradYear =( SELECT MAX(GradYear) FROM Graduate);

--task 10

SELECT EmpName, ProjName FROM Employee JOIN EmpProject ON Employee.EmpId = EmpProject.EmpId JOIN Project ON EmpProject.ProjId = Project.ProjId ORDER BY ProjName ASC, EmpName ASC;

