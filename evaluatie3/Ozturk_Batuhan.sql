--Batuhan Ozturk

--1
select ProductName 
from Products
where ProductID not in(select ProductID
						from [Order Details]
						join Orders on Orders.OrderID = [Order Details].OrderID
						where YEAR(OrderDate) = '1996')

--2
select count(distinct city) as [aantal verschillende steden]
from Employees

--3
--a
select FirstName, LastName
from Employees
where EmployeeID in
					(select EmployeeID
					from Orders
					where CustomerID = 'BOLID')
--b
select FirstName, LastName
from Employees
join Orders on Orders.EmployeeID = Employees.EmployeeID
where CustomerID = 'BOLID'


--4
select ProductName
from Products 
join [Order Details] on Products.ProductID = [Order Details].ProductID
join Orders on Orders.OrderID = [Order Details].OrderID
join Categories on Categories.CategoryID = Products.CategoryID
where Categories.CategoryName = 'Confections'
and Orders.ShippedDate IS NULL

--5
select FirstName, LastName
from Employees
join Orders on Orders.EmployeeID = Employees.EmployeeID
where OrderDate = 
		(select max(OrderDate)
		from Orders)