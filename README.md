
# RETAIL SALES CUSTOMER INSIGHTS ANALYSIS (SQL)
## PROJECT OVERVIEW	
This project analyzes retail sales data using postgreSQL to uncover key business insights such as top customers, best-selling products, sales trends and category performance.
The goal is to demonstrate practical SQL skills applied to real-world business scenarios.

## Tools Used
•	PostgreSQL
•	Online postgreSQL editor(onecompiler)
•	SQL

## Database Structure
The database was designed using a relational model with three tables;
###	Customers
•	Customer_id(primary key)
•	Customer_name
•	Region

###	Products
•	Product_id(primary key)
•	Product_name
•	Category

###	Orders
•	Order_id(primary key)
•	Order_date
•	Customer_id(foreign key)
•	Product_id(foreign key)
•	Sales
This structure reflects a real retail business database and supports meaningful analysis using joins.

## Business Questions Answered 
	The project answered the following key business questions:
	**Trend Analysis**: What are the monthly sales trend?
	**Customer Insights**: Who are the highest-valued customers?
 **Product performance**:	Which product and category generates the most revenue?


## Key SQL Concepts Demonstrated
**Data Filtering**:	`SELECT`,`WHERE`
**Data Organization**:`GROUP BY`,`ORDER BY`
**Aggregations**: `SUM`(),`AVG`()
**Joins**:`INNER JOIN` for relational data retrieval
**Time-Series Analysis**:	Date functions (DATE_TRUNC,TO_CHAR)
**	Relational database design**: Normalization and Primary/Foreign key relationships

## Key Insights
• Seasonality:	January recorded the highest sales, indicating strong early-year performance.
• Customer Loyalty:	A small group of customers contributed the largest share of revenue, highlighting opportunities for customer retention.
• Top Product:	Laptop stand emerged as the top-selling product.
• Category Growth:	The furniture category generated higher revenue than technology, suggesting a strategic focus area.

##Example of SQL Query

```sql
SELECT
    c.customer_name,
    SUM(O.sales) AS total_spent
FROM orders O
JOIN customers c 
  on o.customer_id=c.customer_id
  GROUP BY c.customer_name
  ORDER BY total_spent DESC;
```

Insight: identifies top-spending customers to support targeted marketing and loyalty strategies.

## Conclusion
This project demonstrates the ability to:
•	Design a relational database
•	Write clean, readable SQL queries
•	Translate raw data into actionable insights
It reflects how SQL used in real data analyst roles.
### Author
PROSPER NGWIGEH
**Skills: SQL(PostgreSQL), Data Analysis****Connect: [LinkedIn Profile] (http://www.linkedin.com/in/prosper-ngwigeh-82ba9339b)

## How To Run This Project
**open the editor: Go to onecompilerPostgreSQL
**paste the schema: copy the code from the queries.sql file in this repository and paste it into the editor to create the tables.
**Insert Data: copy the INSERT INTO statement from the queries.sql file to populate the tables.
**Run Analysis: Copy any query from the example of SQL Query section above to see the results instantly.





