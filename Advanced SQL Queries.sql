-- Advanced SQL Queries (CTE & Window Functions)

-- 1. Monthly Revenue using CTE
WITH monthly_sales AS (
    SELECT 
        DATE_FORMAT(t.sale_date, '%Y-%m') AS month,
        SUM(t.quantity * p.price) AS revenue
    FROM transactions t
    JOIN products p ON t.product_id = p.product_id
    GROUP BY month
)
SELECT *
FROM monthly_sales
ORDER BY month;

-- 2. Customer Ranking using RANK()
SELECT 
    c.customer_name,
    SUM(t.quantity * p.price) AS total_spent,
    RANK() OVER (ORDER BY SUM(t.quantity * p.price) DESC) AS customer_rank
FROM transactions t
JOIN customers c ON t.customer_id = c.customer_id
JOIN products p ON t.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY customer_rank;

-- 3. Product Ranking using DENSE_RANK()
SELECT 
    p.product_name,
    SUM(t.quantity) AS total_units_sold,
    DENSE_RANK() OVER (ORDER BY SUM(t.quantity) DESC) AS product_rank
FROM transactions t
JOIN products p ON t.product_id = p.product_id
GROUP BY p.product_name
ORDER BY product_rank;
