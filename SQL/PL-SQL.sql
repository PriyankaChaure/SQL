use prachi

begin
declare @a int
declare @b int
declare @c int
set @a=10
set @b=20
set @c=@a+@b
print 'addition is:'+convert(varchar,@c)
end


begin
declare @x int
declare @y int
declare @z int
set @x=45
set @y=21
set @z=@x+@y
if @z%2=0
begin
print convert(varchar,@z)+'is even number'
end 
else
begin
 print convert(varchar,@z)+'is odd number'
end
end

begin
declare @i int
set @i=0
while @i<10
begin
print 'value of i is:'+convert(varchar,@i)
set @i=@i+1
end
end

select * from emptbl

begin
declare @ei varchar(20)
declare @mn varchar(20)
declare @sal decimal(10,2)
select @ei=emailid,@mn=mono,@sal=salary from emptbl
where empid=6
print 'email id:'+@ei
print 'mobile no:'+@mn
print 'salary:'+convert(varchar,@sal)
end

begin
declare @sti decimal(10,2)
select @sti=salary from emptbl
where empid=3
if @sti%2=0
begin
print convert(varchar,@sti)+'salary is even'
end
else
begin
print convert(varchar,@sti)+'salary is odd'
end
end

begin
declare @em varchar(20)
declare @sa decimal(10,2)
select @em=emailid,@sa=salary from emptbl
while @em = Null
begin
print 'emailid:'+@em
print 'salary:'+convert(varchar,@sa)
end
end