SELECT 
    E.FirstName, 
    E.LastName, 
    E.Salary 
FROM 
    Employees AS E
JOIN
    Departments AS D ON E.DepartmentID = D.DepartmentID
WHERE
    D.DepartmentName = 'Sales' AND E.Salary > 60000
ORDER BY
    E.LastName ASC;

/* Count the total number of products for each CategoryName. Display the CategoryName and the NumberOfProducts. Order the results by NumberOfProducts in descending order. */

SELECT
    C.CategoryName,
    Count(P.ProductID) AS NumberOfProducts   
FROM Products AS P
JOIN
    Categories AS C ON P.CategoryID = C.CategoryID
GROUP BY 
    CategoryName
ORDER BY 
    NumberOfProducts DESC;


/* 
Find Orders in a Specific Date Range with High Total Amount:
Find the OrderID, OrderDate, and TotalAmount for all orders placed between '2025-01-01' and '2025-03-31' (inclusive) where the TotalAmount is greater than 500. Order the results by TotalAmount in descending order. */

SELECT O.OrderID, O.OrderDate, O.TotalAmount
FROM Orders AS O
BETWEEN 
    '2025-01-01' AND '2025-03-31'
WHERE
    TotalAmount > 500
ORDER BY
    TotalAmount DESC;


/* 

Employees Not in 'HR' or 'Marketing':

Retrieve the FirstName, LastName, and DepartmentName for all employees who are not in the 'HR' or 'Marketing' departments. Order the results by DepartmentName then LastName. */

SELECT
    E.FirstName, 
    E.LastName,
FROM
    Employees AS E
JOIN
    Departments AS D ON E.DepartmentID = D.DepartmentID
WHERE
    D.DepartmentName NOT IN ('HR', 'Marketing')
ORDER BY
    D.DeparmentName,
    E.LastName ASC

/* 
Departments with Average Salary Above a Threshold:

Calculate the average Salary for each DepartmentName. Only show departments where the average salary is greater than 70,000. */

SELECT
    D.DepartmentName,
    AVG(E.Salary) AS AverageSalary
FROM
    Deparments as D
JOIN
    Employees AS E ON D.DepartmentID = E.DepartmentID
GROUP BY
    D.DepartmentName
HAVING
    AVG(E.Salary) > 70000



/* Products with Stock Below Average:

Find the ProductName and StockQuantity of products whose StockQuantity is less than the overall average StockQuantity of all products. */

SELECT
    P.ProductName,
    P.StockQuantity
FROM
    Products as P
WHERE
    P.StockQuantity < (SELECT AVG(StockQuantity) FROM Products)


/* Customers Who Placed Orders in 2024 (using EXISTS):

Select the unique CustomerID from the Orders table for customers who placed at least one order in the year 2024. Use the EXISTS operator in a subquery. */

SELECT
    O.CustomerID
FROM
    Orders as O
WHERE
    EXISTS (
        SELECT 
            * 
        FROM 
            Orders 
        WHERE 
            O.CustomerID = Orders.CustomerID 
        AND 
            YEAR(Orders.OrderDate) = 2024)

/* Total Sales Per Product Category:

Calculate the total sales amount for each product CategoryName. The total sales for a product is Quantity * UnitPrice from OrderDetails. */

SELECT
    C.CategoryName,
    SUM(OD.Quantity * OD.UnitPrice) AS TotalSales
FROM
    Categories as C
JOIN
    Products AS P ON C.CategoryID = P.CategoryID
JOIN
    OrderDetails as OD ON P.ProductId = OD.ProductID
GROUP BY
    C.CategoryName


/* Employees Hired After a Specific Date and Their Department Location:

Retrieve the FirstName, LastName, HireDate, and Location for all employees hired after '2023-01-01'. Use a subquery in the SELECT clause to get the Location. */

Employees
Departments

SELECT
    E.FirstName, 
    E.LastName, 
    E.HireDate,
    (SELECT D.Location FROM Departments WHERE D.DepartmentID = E.DepartmentID) as DepartmentLocation
FROM
    Employees as E
WHERE
    E.HireDate > '2023-01-01'
ORDER BY
    E.HireDate

/* 
Products with Price Higher Than Their Category's Average Price:

Find the ProductName, Price, and CategoryName for products whose Price is higher than the average Price of products within their own Category. */

Products
Categories

SELECT
    P.ProductName.
    P.Price,
    C.CategoryName
FROM
    Products AS P
JOIN
    Categories AS C ON C.CategoryID = P.CategoryID
WHERE
    P.Price > (SELECT AVG(Price) FROM Products WHERE Products.CategoryID)
ORDER BY
    C.CategoryName,
    P.Price DESC;