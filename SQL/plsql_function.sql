create function Addition(@a int , @b int)
returns int
as
begin
declare @c int
set @c=@a+@b
return @c
end