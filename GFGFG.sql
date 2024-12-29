Select * From EMployee


Create Index Emp_salary on Employee (Salary,Phone)

Create CLustered index  Emp_name On EMployee(Name,Salary,Phone)

Drop CLustered index  Emp_name On EMployee
Sp_helpindex

Select * From EMployee where Salary =25000
Select * From Employee 

Select * From Employee 
Select * From Department 

Select name,phone,salary,Departmentname from employee join department
On department.Departmentno= employee.Departmentno

Create View Emplo 
as
Select name,phone,salary,Departmentname from employee join department
On department.Departmentno= employee.Departmentno

Select * From Employee

Drop Clustered Index Empl_Name On EMplo(name,phone,Departmentname)

Drop Index Emp_Name on Employee

Select name,phone,salary,Departmentname from employee join department
On department.Departmentno= employee.Departmentno


Create Clustered Index Emp_Department on  EMployee(DepartmentNo)
Create Clustered Index Emp_Departmentname on  Department(Departmentname)


Drop  Index  Emp_name On EMployee
