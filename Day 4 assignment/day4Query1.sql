--1
create view view_product_order_SolaAdebayo as 
select p.ProductName, Count(od.Quantity) QuantityCount 
from Products p 
inner join[Order Details] od on od.ProductID = p.ProductID
group by p.ProductName;

--2
alter proc spProductOrderQuant2
@id int,
@total int out
as 
begin
 select @id = view_product_quantity_order_solaadebayo.ProductID,@total = 
view_product_quantity_order_solaadebayo.QuantityCount from 
view_product_quantity_order_solaadebayo
where view_product_quantity_order_solaadebayo.ProductID = @id
end
declare @id int, @total int
exec spProductOrderQuant2 2, @total out
print @total

--3
ALTER PROC sp_Product_Order_City_solaAdebayo
@ProductName NVARCHAR(50)
AS
BEGIN
SELECT TOP 5 ShipCity,SUM(Quantity) FROM [Order Details] OD JOIN Products P ON P.ProductID = OD.ProductID JOIN Orders O ON O.OrderID = OD.OrderID
WHERE ProductName=@ProductName
GROUP BY ProductName,ShipCity
ORDER BY SUM(Quantity) DESC
END


EXEC sp_Product_Order_City_solaAdebayo as Queso Cabrales

--4
 create table people_solaAdebayo(id int,name char(20),cityid int)
create table city_solaAdebayo(cityid int,city char(20))
insert into people_solaAdebayo(id,name,cityid)values(1,'Aaron Rodgers',2)
insert into people_solaAdebayo(id,name,cityid)values(2,'Russell Wilson',1)
insert into people_solaAdebayo(id,name,cityid)values(3,'Jody Nelson',2)
insert into city_solaAdebayo(cityid,city)values(1,'Settle')
insert into city_solaAdebayo(cityid,city)values(2,'Green Bay')
create view Packers_olatunde_solaAdebayo as
select p.id, p.name from people_solaAdebayo p inner join city_solaAdebayo c on p.cityid=c.cityid 
where c.city='Green bay'
begin tran 
rollback 
drop table people_solaAdebayo
drop table city_solaAdebayo
drop view Packers_olatunde_solaAdebayo
--5
ALTER PROC sp_birthday_employee_solaAdebayo
AS
BEGIN
SELECT * INTO #EmployeeTemp
FROM Employees WHERE DATEPART(MM,BirthDate) = 02
SELECT * FROM #EmployeeTemp
END
--6 Use union to check if the data is the same as the two tables together