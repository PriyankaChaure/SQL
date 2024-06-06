create trigger show
on emptbl 
for insert
as
begin
declare @en varchar(30)
select @en=empname from inserted
print  @en +'Added Successfully!!!!'
end
------- calling Trigger---------------
select * from emptbl
insert into emptbl (empname) values('ghghhdfkgjl')
------------------------------------------------------------------------
create trigger empbackup
on emptbl
for delete
as
begin
declare @ei bigint
declare @en varchar(20)
declare @ad varchar(30)
declare @email varchar(40)
declare @em varchar(20)
declare @es decimal(10,2)
declare @dept bigint
select @ei=empid,@en=empname,@ad=address,@email=emailid,@em=mono,@es=salary,@dept=dept 
from deleted
insert in values(@ei,@en,@ad,@email,@em,@es,@dept)
print 'backup created'
end
------------ Calling Trigger ---------------------------------
select * from empbackup
select * from emptbl
delete from emptbl where empname='shital'
drop tr
