--1
SELECT DISTINCT CITY
FROM Customers
WHERE City IN (SELECT City FROM Employees)

--2a

SELECT DISTINCT CITY
FROM CUSTOMERS 
WHERE CITY NOT IN (SELECT CITY FROM EMPLOYEES)

--2B
select distinct c.city 
from Customers c, Employees e 
where c.City <> e.city;

--3
select p.productname , sum(od.quantity) [total order Quantities]
from Products p inner join [Order Details] od
on od.ProductID = p.ProductID 
group by p.productname

--4
select  b.city , sum(p.ProductID) [total products]
from Products p inner join dbo.[Order Details] od
on od.ProductID = p.ProductID inner join Orders a 
on a.OrderID = od.OrderID inner join Customers b
on b.CustomerID = a.CustomerID
group by b.City;


--5a
select city 
from Customers 
group by city 
having count(customerid) = 2
union
select city 
from Customers 
group by city
having count(customerid) > 2;
--5b.
select city 
from Customers 
where city in (select city
from Customers 
group by city
having count(customerid) >= 2);

--6
select c..city , count(distinct p.ProductID) [total products]
from Products p inner join dbo.[Order Details] od
on od.ProductID = p.ProductID inner join Orders a 
on a.OrderID = od.OrderID inner join Customers c 
on c.CustomerID = a.CustomerID 
group by c.City 
having count(distinct p.productid) >= 2

--7
select distinct c.CompanyName,c.CustomerID ,c.City ,o.ShipCity
from Orders o
inner join Customers c  on c.CustomerID = o.CustomerID 
where c.City <> o.ShipCity

--8
select top 5  p.productname, avg(p.UnitPrice) [Average price], c.city 
from Products p inner join [Order Details] od on od.ProductID = p.ProductID 
inner join Orders o on o.OrderID = od.OrderID
inner join Customers c  on c.CustomerID = o.CustomerID 
group by p.ProductName, c.city 
order by sum(od.quantity) desc 

--9a
select city from customers where city  in (select city  from customers a left join orders b on a.customerid =
b.customerid  and b.employeeid in (select employeeid from orders) group by a.city having count(orderid) = 0) 
--9b

select a.city , count(orderid) from customers a left join orders b on a.customerid  = b.customerid 
left join employees c on c.EmployeeID = b.EmployeeID  group by a.city having count(orderid) =0 

--10
select distinct  b.city from orders a inner join customers b on a.CustomerID = b.CustomerID where
b.city in (select top 1 d.city  from 
dbo.Products b inner join dbo.[Order Details] a
on a.ProductID = b.ProductID inner join dbo.Orders c on c.OrderID = a.OrderID
inner join dbo.Customers d  on d.CustomerID = c.CustomerID group by d.City order by count(c.orderid) desc)
and 
b.city in (select top 1 d.city  from 
dbo.Products b inner join dbo.[Order Details] a
on a.ProductID = b.ProductID inner join dbo.Orders c on c.OrderID = a.OrderID
inner join dbo.Customers d  on d.CustomerID = c.CustomerID group by d.City order by count(a.ProductID) desc)

--11 Use the group by to find duplicates , then use the delete statements 