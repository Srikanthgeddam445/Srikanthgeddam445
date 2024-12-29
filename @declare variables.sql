Use Gaddam 
Go

Create Table X(X tinyint)

Insert Into X values (256)

Create Table Y (Y SMallint)

Insert Into y values (10000)
Insert Into y values (32768) 



Declare @Id Int
Declare @name Varchar(50)
Declare @date Datetime
Set @Id = 100
Set @name ='Sree'
Set @date = GetDate()
Print cast(@Id as varchar)+' ,' + @name + ',' + cast(@date as varchar)


Declare @a int, @b Int, @c int
Set @a = 250
Set @b = 300
Set @c = @a+@b
Print @c


Declare @date Date
Set @date = Getdate()
Print Datename(dw,@date)

Declare @date Date
Set @date = Getdate()
Print Datename(mm,@date)


Declare @date Date
Set @date = '1991-08-05'
Print Datename(mm,@date)

Select * From EMployee order by id ASC

Select @sal = salary from employee
where id = 101


Declare @id int,@name nvarchar(50), @salary money
Set @id = 101
Select @name = name,@salary = Salary from
employee where @id =101
Print @name + ' '+ Cast(@salary as nvarchar)


Select * From EMployee order by id asc


Declare @id int,@hiredate date,@experience Int
Set @Id =102
Select @hiredate = hiredate From Employee Where id= @id
Set @experience = Datediff(yy,@hiredate,Getdate())
Print 'Experience = ' + Cast(@Experience as varchar)+ ' '+  'Years'

Declare @id int,@hiredate date,@experience Int
Set @Id =102
Select @hiredate = hiredate From Employee Where id= @id
Set @experience = Datediff(yy,@hiredate,Getdate())
If @experience>30 
   delete from employee where Id = @Id
   else update employee 
   Set salary= salary+(Salary*.1) where id =@Id
   Print 'record is deleted'


Declare @id int ,@hiredate date, @experience int
Set @id = 101
Select @hiredate = hiredate From Employee Where id= @id
Set @experience = Datediff(yy,@hiredate,Getdate())
If @experience>30 
   delete from employee where Id = @Id
   else update employee 
   Set salary= salary+(Salary*.1) where id =@Id
   Print 'record is deleted'


   Declare @id int,@amount BigInt,@salary bigint
   Set @id = 103
   Set @amount=3000
   Begin Transaction
   Update employee set salary = salary+@amount
   Where Id = @id
   Select @salary = Salary FRom employee where id=@id
   If @salary>35000
   Rollback
   else 
   Commit


   Select * From EMployee


   Declare @id Int,@departmentno int;
   Set @id =108;
   Select @departmentno=departmentno From EMployee where Id =@id;
   If @departmentno =104
   Begin
 Update Employee Set Salary= Salary+(Salary*0.1) Where Id =@id;
  ENd
  Set @pct=10
   If @departmentno =102
   Set @pct=15
  If @departmentno =103
    Set @pct=20
	 If @departmentno =104
    Set @pct=25
	ELse
	Set @pct = 5
	Update employee Set Salary =Salary+(Salary*@pct/100) Where Id = 104




	DECLARE @id INT, @departmentno INT;
SET @id = 108;
SELECT @departmentno = departmentno 
FROM Employee 
WHERE Id = @id;
IF @departmentno = 104
BEGIN
    UPDATE Employee 
    SET Salary = Salary + (Salary * 0.1) 
    WHERE Id = @id;
END








Select Salary From Employee
  where salary is not null

  Select max(salary) from employee where salary <(select max(Salary) from employee where salary<
  (select max(Salary) from employee))


  With rankedsalaries
  as
  (
  Select name,salary,departmentname,Dense_rank() Over (partition by departmentname order by salary desc ) as ranks 
  from EMployee join department on department.Departmentno= employee.Departmentno)
Select * from rankedsalaries
where Ranks<=3

 With rankedsalaries
  as
  (
  Select name,salary,departmentname,Row_number() Over (partition by departmentname order by salary desc ) as ranks 
  from EMployee join department on department.Departmentno= employee.Departmentno)
Select * from rankedsalaries
where Ranks=3





