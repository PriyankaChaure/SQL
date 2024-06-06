create function gettotal(@dn varchar(40))
returns decimal(10,2)
as
begin
declare @total decimal(10,2)
select @total=sum(salary) from emptbl
where dept =(select dept from depttbl where deptname=@dn )
return @total
end

select * from emptbl
select * from depttbl

----calling------------
begin
declare @t decimal(10,2)
set @t=dbo.gettotal('computer')
print 'total salary:'+convert(varchar, @t)
end
