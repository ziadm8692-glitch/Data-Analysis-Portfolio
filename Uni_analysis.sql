------------------------ join 
select St_Fname, Dept_Name
from Student S INNER JOIN Department d
ON d.Dept_Id=S.Dept_Id


select St_Fname, St_Lname, St_Age 
from Student s , Department d
where d.Dept_Id=s.Dept_Id and St_Age >25


select St_Fname, St_Lname, Dept_Name
from Department d left join Student s
on s.Dept_Id=d.Dept_Id

select St_Fname, St_Lname, Dept_Name
from Department d Right join Student s
on s.Dept_Id=d.Dept_Id

select St_Fname, St_Lname, Dept_Name
from Department d full join Student s
on s.Dept_Id=d.Dept_Id


select St_Fname , St_Lname , grade  , Dept_name , crs_name ,d.Dept_Id
from Stud_Course sc inner join Student s
on s.St_Id=sc.St_Id
inner join Course c 
on c.Crs_Id =sc.Crs_Id
inner join Department d
on d.Dept_Id =s.Dept_Id
where sc.Grade > 380
order by sc.Grade


select *
from Student s , Department d
where d.Dept_Id=s.Dept_Id

Select St_Fname, Grade
from Student s , Stud_Course sc
where Sc.St_Id = s.St_Id and Grade > 100


select St_Fname, St_Lname, Dept_Name, d.Dept_id
from Department d inner join Student s 
on s.Dept_Id=d.Dept_Id and St_Address='cairo'
---------------------------------------------------------------
select St_Id,COUNT (Grade)
from  Stud_Course

select count(*)
from student

select Avg (St_Age)
from Student

select max (grade)
from Stud_Course
-----------------------------------  update 

update Stud_Course
set Grade +=10


update Stud_Course
set Grade +=20

update Stud_Course
set Grade +=5
where St_Id=1

update Stud_Course
set Grade+=5
from Student s, Stud_Course Sc
Where s.St_Id = Sc.St_Id and St_Address='Alex'

-------------------------------------
select TOP 5*
from Student

select top 5 St_fname,st_Lname,Dept_Location 
from Student s, Department d
where d.Dept_Id=s.Dept_Id



------------------------------------------- LIKE
select   St_Fname ,St_Lname,Grade 
from Student S , Stud_Course Sc
where S.St_Id= sc.St_Id and St_Fname like 'A%' 


-------------------------- Between
select St_Fname , St_Age , Grade
from Student s , Stud_Course sc
where S.St_Id = sc.St_Id and  St_Age between 20 and 25


--------------------- Groub by , Having , Where Wirh group by and Having 
select Dept_Id, count (St_Id) as Count_student_in_Dep
from Student
group by Dept_Id

select Dept_Id, count (St_Id) as Count_student_in_Dep
from Student
group by Dept_Id
having  count (St_Id) > 3


select Dept_Id, count (St_Id) as Count_student_in_Dep
from Student
where Dept_Id !=20
group by Dept_Id
having  count (St_Id) > 2
------------------------------------------------------ Name of Supervaiser

select distinct y.st_fname
from student x inner join student y
on y.St_Id=x.St_super

---------------------------- OR , IN

select St_id 
from Student
where St_Id=1 or St_Id=3 or St_Id=5

select St_id 
from Student
where St_Id in(1,3,5)
------------------------------------------------------------------ Delete 

Delete  from Stud_Course
where st_id=3and Crs_Id=100


---------------------------- Constranis

create table Empolyee (Emp_ID INT primary key ,Emp_Name varchar(50),hair_date date ,salary int ,Dept_id int);


alter table Empolyee
add constraint FK_Emp__dep foreign key (Dept_Id) References Department (Dept_ID); -----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


Alter Table Empolyee 
add constraint ck_salary check (salary>=1000);


alter table Empolyee
add  email varchar(100); ------- careat neu column

--------------------------------	Eidt Data
Alter Table Empolyee
add phone varchar(12);

Alter Table Empolyee
alter column Emp_name varchar(100)

-----------------------------	Drop column

alter Table Empolyee
drop  column  phone 


-----------------------------------  truncate (temsa7 Data bssss)<<<<  , (Drop) Temsa7 El Table nafso <<<<<<<<<<<<


insert into Empolyee(Emp_ID,Emp_Name,hair_date,salary,email,Dept_id)
values
(1,'Ziad','2022-11-10',40000,'ziadm832@gamil.com',10),
(2,'Rodian','2020-11-10',20000,'Rodain8208@gmail.com',20),
(3,'Ahmed','2021-11-10',10000,'Ahmed999@gmail.com',30),
(4,'Karemm','2019-11-10',8000,'karemm932@gmail.com',40);


truncate table Empolyee
select * from Empolyee


Drop Table Empolyee

select* from Empolyee

---------------------------------------------------------  VIEW  It only comes with Select No Where 
create View Emp_View as 
select  Emp_Name,salary
from Empolyee

select * From Emp_View


----------------------------- CASE 

select  Emp_Name,
CASE
   when salary >=10000 then 'high'
   when salary >=5000 then 'mid'
   else 'low'
end as salary_level
from Empolyee


--------- Procedure , Das ist Ahnlich view aber es nimmt ( where) Gegen  View 


drop procedure Get_Age
go----------- Das ist , wenn ich ein create procedure gemacht habe , ich es losen 

create procedure Get_Age as
begin 
   select  St_Id, St_Age
   from Student
   where St_Age>20
end;

exec Get_Age


------ Getdate 
select GETDATE() ---- es macht ein tag heute

select Emp_name, year(hair_date) as year_hire
from Empolyee






select Emp_Name,DATEDIFF(year,hair_date,getdate()) as years_worked   ----- When I want to find the time between two dates, for exampleا 
from Empolyee


-------------------- transaction(Begin, commit, Rollback)
Begin transaction;
update Empolyee
set salary +=2000
where Emp_id=2
commit


Begin transaction;
update Empolyee
set salary +=2000
where Emp_id=2
rollback
------------------------------------------------------------------ null

select * 
from student 
where st_fname is not null  ----- ich nutze es , wenn ich null nicht sehe 


select isnull(st_Age , 0) as st_Age
from Student  ------- >>>>>>>>>>>>>>>>>>                     >>ich ersetze null mit 0