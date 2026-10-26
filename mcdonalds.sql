create database mcdonalds;
use mcdonalds;
ALTER TABLE stores MODIFY COLUMN Store_ID VARCHAR(50) NOT NULL,
ADD PRIMARY KEY (Store_ID);
ALTER TABLE offers MODIFY COLUMN Offer_ID VARCHAR(50) NOT NULL,
ADD PRIMARY KEY (Offer_ID);
ALTER TABLE products MODIFY COLUMN Product_ID VARCHAR(50) NOT NULL,
ADD PRIMARY KEY (Product_ID);
ALTER TABLE customers MODIFY COLUMN customer_ID VARCHAR(50) NOT NULL,
ADD PRIMARY KEY (customer_ID);
ALTER TABLE sales
    MODIFY COLUMN offer_id VARCHAR(50) NOT NULL,
    MODIFY COLUMN customer_id VARCHAR(50) NOT NULL,
    MODIFY COLUMN product_id VARCHAR(50) NOT NULL,
    MODIFY COLUMN store_id VARCHAR(50) NOT NULL,
    ADD CONSTRAINT fk_sales_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),
    ADD CONSTRAINT fk_sales_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id),
    ADD CONSTRAINT fk_sales_store
        FOREIGN KEY (store_id)
        REFERENCES stores(store_id),
    ADD CONSTRAINT fk_sales_offer
        FOREIGN KEY (offer_id)
        REFERENCES offers(offer_id);
        
SELECT
    SUM(s.quantity * p.unit_price) AS total_revenue
FROM sales s
JOIN products p
    ON s.product_id = p.product_id;

    SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM sales;

SELECT
    DATE_FORMAT(s.order_date, '%Y-%m') AS sales_month,
    SUM(s.quantity * p.unit_price) AS revenue
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY DATE_FORMAT(s.order_date, '%Y-%m')
ORDER BY sales_month;

SELECT
    p.product_name,
    SUM(s.quantity) AS units_sold,
    SUM(s.quantity * p.unit_price) AS revenue
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY revenue DESC
LIMIT 10;

SELECT
    st.store_id,
    st.city,
    st.region,
    SUM(s.quantity * p.unit_price) AS revenue
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
JOIN stores st
    ON s.store_id = st.store_id
GROUP BY st.store_id, st.city, st.region
ORDER BY revenue DESC;

SELECT
    p.category,
    SUM(s.quantity * p.unit_price) AS revenue
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

SELECT
    payment_mode,
    SUM(s.quantity * p.unit_price) AS revenue,
    COUNT(DISTINCT s.order_id) AS total_orders
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY payment_mode
ORDER BY revenue DESC;

SELECT
    order_channel,
    SUM(s.quantity * p.unit_price) AS revenue
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY order_channel
ORDER BY revenue DESC;

SELECT
    c.loyalty_member,
    COUNT(DISTINCT s.order_id) AS total_orders,
    SUM(s.quantity * p.unit_price) AS revenue
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
JOIN customers c
    ON s.customer_id = c.customer_id
GROUP BY c.loyalty_member;

SELECT
    o.offer_name,
    o.discount_pct,
    COUNT(DISTINCT s.order_id) AS total_orders,
    SUM(s.quantity * p.unit_price) AS revenue_before_discount
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
JOIN offers o
    ON s.offer_id = o.offer_id
GROUP BY o.offer_id, o.offer_name, o.discount_pct
ORDER BY revenue_before_discount DESC;

SELECT
    o.offer_name,
    o.discount_pct,
    COUNT(DISTINCT s.order_id) AS total_orders,
    SUM(s.quantity * p.unit_price) AS revenue_before_discount
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
JOIN offers o
    ON s.offer_id = o.offer_id
GROUP BY o.offer_id, o.offer_name, o.discount_pct
ORDER BY revenue_before_discount DESC;