CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  customer_name VARCHAR(100),
  region VARCHAR(50)
  );
CREATE TABLE products (
   product_id SERIAL PRIMARY KEY,
   product_name VARCHAR(100),
   category VARCHAR(50)
   );
CREATE TABLE orders (
   order_id SERIAL PRIMARY KEY,
   order_date DATE,
   customer_id INT references
 customers(customer_id),
   product_id INT references
 products(product_id),
     sales NUMERIC(10,2)
     );
     
INSERT INTO customers(customer_name, region) 
values
 ('john doe','west'),
 ('Amina Belo','East'),
 ('Micheal smith','South'),
 ('grace nkem','ceentral');
 
 INSERT INTO products (product_name, category)
 values
 ('office chair','furniture'),
 ('laptopstand','technology'),
 ('printer paper','office supplies'),
 ('desk lam','furniture');
INSERT INTO orders (order_date, customer_id,product_id,sales)
values
 ('2024-01-10',1,1,120.00),
 ('2024-01-12',2,2,75.50),
 ('2024-02-05',4,4,64.00),
 ('2024-03-01',1,2,80.00);
 
 
 
 select
   DATE_TRUNC('month',order_date) AS MONTH,
   sum(sales) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;


SELECT TO_CHAR(order_date, 'YYY-MM')
AS month,
  sum(sales) as total_sales
  FROM orders
  GROUP BY month
  ORDER BY month;

---Who are highest value customers?

SELECT
c.customer_name,
SUM(O.sales) AS total_spent
FROM orders O
JOIN customers c 
  on o.customer_id=c.customer_id
  GROUP BY c.customer_name
  ORDER BY total_Spent DESC;


---which product generates the best revenue?
SELECT 
 p.product_name,
 SUM(O.sales) AS total_sales
 FROM orders o
 JOIN products p
  ON o.product_id=p.product_id
 GROUP BY p.product_name
 ORDER BY total_sales DESC;

---which category performs best?

SELECT
  p. category,
  SUM(o.sales) AS category_sales 
FROM orders o 
JOIN products p 
  ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY category_sales DESC;

