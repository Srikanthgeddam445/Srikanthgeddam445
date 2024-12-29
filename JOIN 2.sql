Use Gaddam
Go

Create Table A
(
ID Int,
num Int
)


Insert Into A Values(1,1),(1,2),(1,2),(2,1),(2,3),(3,1),(3,2),(4,3);

Select * From A

SELECT A1.ID, A1.num, A2.ID AS Joined_ID, A2.num AS Joined_num
FROM A A1
FULL JOIN A A2 ON A1.num = A2.ID

SELECT A1.ID, A1.num, A2.ID AS Joined_ID, A2.num AS Joined_num
FROM A A1
CROSS JOIN A A2