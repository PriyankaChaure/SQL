begin
declare @r int
set @r=dbo.Addition1(20,30)
print 'addition is:'+convert(varchar,@r)
end