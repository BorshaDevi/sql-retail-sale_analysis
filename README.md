<h1>💰Retail Sale Analysis PostgreSQL Project</h1>
<p>This project focuses on analyzing retail sales data using SQL to uncover meaningful business insights. The analysis includes data cleaning, exploratory data analysis (EDA), and solving real-world business problems through SQL queries.

The project helps understand customer purchasing behavior, sales performance, product category trends, and monthly sales patterns. By working with retail transaction data, this project demonstrates practical SQL skills commonly used in data analytics and business intelligence.</p>
<hr></hr>

<h2>Objectives</h2>
<ol>
<li><strong>Set up a retail sales database:</strong>Create and populate a retail sales database with the provided sales data.</li>
<li><strong>Data Cleaning: </strong>Identify and remove any records with missing or null values.</li>
<li><strong>Exploratory Data Analysis (EDA):</strong> Perform basic exploratory data analysis to understand the dataset.</li>
<li><strong>Business Analysis:</strong>Use SQL to answer specific business questions and derive insights from the sales data.</li>
</ol>

<h2>Database Setup,Data Cleaning & Business Problem Solving using SQL</h2>
<h3>1. Database Setup</h3>
<ul>
<li><strong>Database Creation:</strong>The project starts by creating a database named<code>sql_Retail_sales_Analysis<code></li>
<li><strong></strong>A table named <code>retail_table</code>is created to store the sales data. The table structure includes columns for transaction ID, sale date, sale time, customer ID, gender, age, product category, quantity sold, price per unit, cost of goods sold (cogs), and total sale amount.</li>
</ul>

```bash
Create Table retail_table
(     
    transactions_id INT PRIMARY KEY	,	
    sale_date DATE,	
    sale_time TIME,	
    customer_id INT,	
    gender VARCHAR(20),	
    age	SMALLINT,
    category VARCHAR (50),	
    quantity INT,	
    price_per_unit	FLOAT,
    cogs FLOAT,	
    total_sale FLOAT
);

```

<h2>Getting Started</h2>
<ul>
<li>Clone the repository:</li>

```bash
git clone https://github.com/BorshaDevi/sql-retail-sale_analysis
```

</ul>

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