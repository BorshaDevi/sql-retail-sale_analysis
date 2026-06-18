# 💰 Retail Sale Analysis PostgreSQL Project

This project focuses on analyzing retail sales data using SQL to uncover meaningful business insights. The analysis includes data cleaning, exploratory data analysis (EDA), and solving real-world business problems through SQL queries.

The project helps understand customer purchasing behavior, sales performance, product category trends, and monthly sales patterns. By working with retail transaction data, this project demonstrates practical SQL skills commonly used in data analytics and business intelligence.

---

## Objectives

1. **Set up a retail sales database:** Create and populate a retail sales database with the provided sales data.  
2. **Data Cleaning:** Identify and remove records with missing or null values.  
3. **Exploratory Data Analysis (EDA):** Perform basic analysis to understand the dataset.  
4. **Business Analysis:** Use SQL to answer business questions and derive insights.

---

##  Database Setup, Data Cleaning & Business Problem Solving using SQL

### 1. Database Setup

- **Database Creation:**  
  The project starts by creating a database named `sql_Retail_sales_Analysis`.

- **Table Creation:**  
  A table named `retail_table` is created to store the sales data. The table includes transaction details like date, time, customer info, product category, quantity, price, COGS, and total sale.

```sql
CREATE TABLE retail_table (
    transactions_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(20),
    age SMALLINT,
    category VARCHAR(50),
    quantity INT,
    price_per_unit FLOAT,
    cogs FLOAT,
    total_sale FLOAT
);
```

### 2. Data Exploration & Cleaning

<h3>Data Exploration</h3>

- **Total Sales Count Record check:**
  Determine total number sales  of records  in the dataset using <code>COUNT</code> function.

- **Unique Customer check:**
  How many customers are unique of record using <code>DISTINCT</code>.

- **Count and Unique Category check:**
  How many category are unique check and count them using <code>COUNT(DISTINCT category)</code>.

```sql
SELECT COUNT(*)  as total_sale FROM retail_table
```
```sql
SELECT COUNT(DISTINCT customer_id) as unique_customers FROM retail_table
```
```sql
SELECT COUNT(DISTINCT category) as category FROM retail_table
```

<h3>Cleaning</h3>

- **Count Record:** 
  Determine total number of records  in the dataset using <code>COUNT</code> function.

- **Check Null Value:**
  Checked for NULL values in the dataset using the <code>WHERE</code> clause and <code>IS NULL</code> condition.

- **Delete Null Value:**  
  Removed rows containing NULL values using the <code>DELETE</code> statement and <code>IS NULL</code> condition.  

```sql
SELECT 
COUNT(*) 
FROM retail_table
```

```sql
SELECT * FROM retail_table
WHERE 
      transactions_id IS NULL
      OR
      sale_date IS NULL
	  OR
	  sale_time IS NULL
	  OR
	  gender IS NULL
	  OR
	  category IS NULL
	  OR
	  quantity	IS NULL 
	  OR
	  cogs IS NULL
	  OR
	  total_sale IS NULL;

```

```sql
DELETE FROM retail_table
WHERE 
      transactions_id IS NULL
      OR
      sale_date IS NULL
	  OR
	  sale_time IS NULL
	  OR
	  gender IS NULL
	  OR
	  category IS NULL
	  OR
	  quantity	IS NULL 
	  OR
	  cogs IS NULL
	  OR
	  total_sale IS NULL;
```

### 3. Data Analysis and Business Problem Solving

## Pro-1: Retrieve all columns for sales made on '2022-11-05'

# Problem:
The business wants to review all transactions that happened on a specific date.

# Solution:
Used date filtering to extract all sales records from 2022-11-05.

# SQL Concept:
- WHERE clause
- Date filtering

---

## Pro-2: Retrieve Clothing transactions where quantity sold is more than 4 in Nov-2022

# Problem:
The business wants to identify high-quantity purchases in the Clothing category during November 2022.

# Solution:
Filtered transactions based on category, quantity, month, and year.

# SQL Concept:
- Filtering
- EXTRACT()
- Multiple conditions

---

## Pro-3: Calculate total sales for each category

# Problem:
The company needs to compare revenue performance across different product categories.

# Solution:
Grouped sales data by category and calculated total revenue.

# SQL Concept:
- SUM()
- GROUP BY

---

## Pro-4: Find average age of customers who purchased items from 'Beauty' category

# Problem:
The business wants to understand customer demographics for Beauty products.

# Solution:
Calculated the average customer age for Beauty category buyers.

# SQL Concept:
- AVG()
- WHERE filtering

---

## Pro-5: Find transactions where total_sale is greater than 1000

# Problem:
The company wants to identify high-value transactions.

# Solution:
Filtered transactions based on total sales amount.

# SQL Concept:
- Conditional filtering

---

## Pro-6: Find number of transactions made by each gender in each category

# Problem:
The business wants to analyze purchasing behavior across gender and product categories.

# Solution:
Counted transactions grouped by category and gender.

# SQL Concept:
- COUNT()
- GROUP BY

---

## Pro-7: Calculate average sale for each month and find best selling month in each year

# Problem:
The business wants to identify seasonal sales trends and the best-performing month.

# Solution:
Calculated monthly average sales and ranked months using window functions.

# SQL Concept:
- RANK()
- Window Function
- Aggregation

---

## Pro-8: Find top 5 customers based on highest total sales

# Problem:
The company wants to identify the highest-value customers.

# Solution:
Calculated total customer spending and ranked customers.

# SQL Concept:
- SUM()
- ORDER BY
- LIMIT

---

## Pro-9: Find number of unique customers who purchased items from each category

# Problem:
The business wants to measure customer reach for each product category.

# Solution:
Counted unique customers per category.

# SQL Concept:
- COUNT(DISTINCT)

---

## Pro-10: Create each shift and number of orders

# Problem:
The business wants to understand order patterns during different times of the day.

# Solution:
Created Morning, Afternoon, and Evening shifts based on sales time.

# SQL Concept:
- CTE
- CASE Statement
- EXTRACT()


<hr></hr>
<h2>Getting Started</h2>
<ul>
<li>Clone the repository:</li>
</ul>

```bash
 git clone https://github.com/BorshaDevi/sql-retail-sale_analysis
```

<h2>Project Structure</h2>

```
Sql-Retail-Sale/
│
├── README.md
├── Retail sale.sql
├── SQL - Retail Sales Analysis_utf .csv

```
<h2>Requirements</h2>
<ul>
<li><strong>SQL Databases:</strong> PostgreSQL (pgAdmin4)</li>
</ul>

<h2>Author</h2>
<p>
<strong>Borsha Devi</strong><br>
Aspiring Data Analyst | SQL | Python | Data Visualization
</p>