-- ==========================================
-- SQL JOINS ASSIGNMENT
-- Name: GRACE KASYOKA KATUI
-- Database: Classic Models
-- ==========================================

-- QUESTION 1: INNER JOIN
-- Retrieve employee details and their office codes.

SELECT
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees AS e
INNER JOIN offices AS o
    ON e.officeCode = o.officeCode;


-- QUESTION 2: LEFT JOIN
-- Retrieve product names, vendors and product lines.

SELECT
    p.productName,
    p.productVendor,
    pl.productLine
FROM products AS p
LEFT JOIN productlines AS pl
    ON p.productLine = pl.productLine;


-- QUESTION 3: RIGHT JOIN
-- Retrieve the first 10 orders and their customer numbers.

SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
ORDER BY o.orderNumber ASC
LIMIT 10;