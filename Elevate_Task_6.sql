CREATE TABLE superstore_orders (
    row_id INTEGER,
    order_id TEXT,
    order_date DATE,
    ship_date DATE,
    ship_mode TEXT,
    customer_id TEXT,
    customer_name TEXT,
    segment TEXT,
    country TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    region TEXT,
    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT,
    sales NUMERIC,
    quantity INTEGER,
    discount NUMERIC,
    profit NUMERIC
);


select * from superstore_orders

-- Monthly Revenue and Order Volume Analysis
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(sales) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore_orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month
limit 10



SELECT
    TO_CHAR(order_date, 'YYYY-MM') AS month,
    SUM(sales) AS total_revenue
FROM superstore_orders
GROUP BY month
ORDER BY total_revenue DESC
LIMIT 3;







