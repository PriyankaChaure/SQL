create proc displayempsinfo(@dn varchar(20))
as
begin
select count(*)as countofemp,sum(salary)as totalsalary from emptbl
where dept =(select dept from depttbl where deptname=@dn)
end
--------------calling -------------------
exec displayempsinfo('computer')

select * from emptbl
select * from depttbl