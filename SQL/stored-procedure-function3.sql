create proc outcube(@a int , @c int out)
as
begin
set @c=@a*@a*@a
end

-----------calling-------------
begin
declare @r int
exec outcube 10,@r out
print 'result is:'+convert(varchar, @r)
end