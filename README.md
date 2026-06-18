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