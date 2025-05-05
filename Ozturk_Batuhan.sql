--Batuhan Ozturk
--1
select City, count(EmployeeID) as [EmployeeCount]
from Employees
group by City
having COUNT(EmployeeID) > 1

--2
select CategoryID, 
		max(UnitPrice) as [Max Unit Price],
		min(UnitPrice) as [Min Unit Price]
from Products
group by CategoryID

--3
select OrderDate, count(OrderID) as [Totaal Order]
from Orders
where year(OrderDate) = 1998
group by OrderDate
having COUNT(OrderID) > 3

--4
select Country, count(SupplierID) as [Leveranciers]
from Suppliers
where Country in ('Japan' , 'USA')
group by Country

--5
select e1.FirstName, e1.LastName, e1.ReportsTo, e2.FirstName as baasNaam, e2.LastName as baasFNaam
from Employees e1
left join Employees e2 on e1.EmployeeID = e2.ReportsTo