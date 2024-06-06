create proc docube(@a int)
as 
begin
declare @c int
set @c=@a*@a*@a
print 'cube is:'+convert(varchar, @c)
end
-------------calling-------------
execute docube 4 