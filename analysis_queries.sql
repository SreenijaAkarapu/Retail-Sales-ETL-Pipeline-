-- Preview Products Table
SELECT * FROM products
LIMIT 5;

-- Preview Orders Table
SELECT * FROM orders
LIMIT 5;

-- 1. Total Number of Products
SELECT COUNT(*) AS total_products
FROM products;

-- 2. Total Number of Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- 3. Total Sales
SELECT SUM(sales) AS total_sales
FROM orders;

-- 4. Average Profit
SELECT AVG(profit) AS average_profit
FROM orders;

-- 5. Highest Sale
SELECT MAX(sales) AS highest_sale
FROM orders;

-- 6. Sales by Region
SELECT
    region,
    SUM(sales) AS total_sales
FROM orders
GROUP BY region
ORDER BY total_sales DESC;

-- 7. Orders by Market
SELECT
    market,
    COUNT(*) AS total_orders
FROM orders
GROUP BY market
ORDER BY total_orders DESC;

-- 8. Top 10 Products by Sales
SELECT
    p.product_name,
    SUM(o.sales) AS total_sales
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 10;

-- 9. Sales by Category
SELECT
    category,
    SUM(sales) AS total_sales
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY category
ORDER BY total_sales DESC;

-- 10. Profit by Category
SELECT
    p.category,
    ROUND(SUM(o.profit), 2) AS total_profit
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_profit DESC;

-- 11. Average Discount by Market
SELECT
    market,
    ROUND(AVG(discount), 2) AS avg_discount
FROM orders
GROUP BY market
ORDER BY avg_discount DESC;

-- 12. Top 5 Most Profitable Products
SELECT
    p.product_name,
    ROUND(SUM(o.profit), 2) AS total_profit
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_profit DESC
LIMIT 5;

-- 13. Sales and Profit by Category
SELECT
    p.category,
    SUM(o.sales) AS total_sales,
    ROUND(SUM(o.profit), 2) AS total_profit
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;

-- 14. Regions with More Than 5000 Orders
SELECT
    region,
    COUNT(*) AS total_orders
FROM orders
GROUP BY region
HAVING COUNT(*) > 5000
ORDER BY total_orders DESC;

-- 15. Count of Unique Countries
SELECT
    COUNT(DISTINCT country) AS total_countries
FROM orders;

-- 16. Order Status Using CASE
SELECT
    order_id,
    profit,
    CASE
        WHEN profit > 0 THEN 'Profitable'
        ELSE 'Loss'
    END AS order_status
FROM orders
LIMIT 10;

-- 17. Profitable vs Loss Orders
SELECT
    CASE
        WHEN profit > 0 THEN 'Profitable'
        ELSE 'Loss'
    END AS order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status;
