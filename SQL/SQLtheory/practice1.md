Assume the following simplified database schema:

*****

Employees Table:

EmployeeID (INT, Primary Key)

FirstName (VARCHAR)

LastName (VARCHAR)

DepartmentID (INT)

Salary (DECIMAL)

HireDate (DATE)

Email (VARCHAR)

*****

Departments Table:

DepartmentID (INT, Primary Key)

DepartmentName (VARCHAR)

Location (VARCHAR)

Products Table:

ProductID (INT, Primary Key)

ProductName (VARCHAR)

CategoryID (INT)

Price (DECIMAL)

StockQuantity (INT)

Categories Table:

CategoryID (INT, Primary Key)

CategoryName (VARCHAR)

*****

Orders Table:

OrderID (INT, Primary Key)

CustomerID (INT)

OrderDate (DATE)

TotalAmount (DECIMAL)

*****

OrderDetails Table:

OrderDetailID (INT, Primary Key)

OrderID (INT)

ProductID (INT)

Quantity (INT)

UnitPrice (DECIMAL)

Exercises:

Retrieve Employees by Department and Salary:

Select the FirstName, LastName, and Salary of all employees in the 'Sales' department who earn more than 60,000. Order the results by LastName in ascending order.

Count Products by Category:

Count the total number of products for each CategoryName. Display the CategoryName and the NumberOfProducts. Order the results by NumberOfProducts in descending order.

Find Orders in a Specific Date Range with High Total Amount:

Find the OrderID, OrderDate, and TotalAmount for all orders placed between '2025-01-01' and '2025-03-31' (inclusive) where the TotalAmount is greater than 500. Order the results by TotalAmount in descending order.

Employees Not in 'HR' or 'Marketing':

Retrieve the FirstName, LastName, and DepartmentName for all employees who are not in the 'HR' or 'Marketing' departments. Order the results by DepartmentName then LastName.

Departments with Average Salary Above a Threshold:

Calculate the average Salary for each DepartmentName. Only show departments where the average salary is greater than 70,000.

Products with Stock Below Average:

Find the ProductName and StockQuantity of products whose StockQuantity is less than the overall average StockQuantity of all products.

Customers Who Placed Orders in 2024 (using EXISTS):

Select the unique CustomerID from the Orders table for customers who placed at least one order in the year 2024. Use the EXISTS operator in a subquery.

Total Sales Per Product Category:

Calculate the total sales amount for each product CategoryName. The total sales for a product is Quantity * UnitPrice from OrderDetails.

Employees Hired After a Specific Date and Their Department Location:

Retrieve the FirstName, LastName, HireDate, and Location for all employees hired after '2023-01-01'. Use a subquery in the SELECT clause to get the Location.

Products with Price Higher Than Their Category's Average Price:

Find the ProductName, Price, and CategoryName for products whose Price is higher than the average Price of products within their own Category.