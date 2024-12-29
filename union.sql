

 Select * From EMployee
  Select * From Department


  Select Departmentno From EMployee WHere Departmentno = 101
  Union
   Select Departmentno From EMployee WHere Departmentno = 102
   Union 
   Select Departmentno From EMployee WHere Departmentno = 103

     Select Departmentno From EMployee WHere Departmentno = 101
  Union ALL
   Select Departmentno From EMployee WHere Departmentno = 102
   Union ALL
   Select Departmentno From EMployee WHere Departmentno = 103

     Select Departmentno From EMployee WHere Departmentno = 101
  Union
   Select Departmentno From EMployee WHere Departmentno = 102
   Union aLL
   Select Departmentno From EMployee WHere Departmentno = 103


        Select Name,Departmentno From EMployee WHere Departmentno = 101
Except   Select Departmentno From EMployee WHere Departmentno = 102
intersect
   Select Departmentno From EMployee WHere Departmentno = 103



SELECT FORMAT(Cast(GETDATE() As Date), 'yyyy') AS formatted_date;

