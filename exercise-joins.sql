/* joins: select all the computers from the products table: using the products table and the categories table, return the product name and the category name */
SELECT * FROM products AS p LEFT JOIN categories AS c ON p.CategoryID = c.CategoryID WHERE c.Name = 'Computers' 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT p.Name, p.price, r.Rating FROM products AS p LEFT JOIN reviews AS r ON p.ProductID = r.ProductID WHERE r.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.EmployeeID, e.FirstName, e.LastName, SUM(s.Quantity) AS Total FROM employees AS e JOIN sales AS s ON e.EmployeeID = s.EmployeeID GROUP BY e.EmployeeID ORDER BY Total DESC LIMIT 1;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name AS Department, c.Name AS Category FROM categories AS c JOIN departments AS d ON d.DepartmentID = c.DepartmentID WHERE c.Name = 'Appliances' OR c.Name = 'Games';
/* joins: find the product name, total # sold, and total price sold, for Eagles: Hotel California --You may need to use SUM() */
SELECT p.Name, SUM(s.Quantity) AS Total_sold, (SUM(s.Quantity) * p.Price) AS Total_amount FROM sales AS s JOIN products AS p ON s.ProductID = p.ProductID WHERE p.ProductId = 97;


/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT * FROM products AS p JOIN reviews AS r ON p.ProductID = r.ProductID WHERE p.Name = 'Visio TV' AND r.Rating < 2;

-- ------------------------------------------ Extra - May be difficult

/* Your goal is to write a query that serves as an employee sales report. This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
SELECT e.EmployeeID, e.FirstName, e.LastName, s.Quantity, p.Name FROM employees AS e JOIN sales AS s ON e.EmployeeID = s.EmployeeID JOIN products AS p ON s.ProductID = p.ProductID ORDER BY e.EmployeeID;
