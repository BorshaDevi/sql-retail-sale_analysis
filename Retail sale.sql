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
SELECT * 
FROM retail_table
LIMIT 10
;

SELECT 
COUNT(*) 
FROM retail_table

-- Data cleaning
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

-- Data Explaration

-- How many sales we have?
SELECT COUNT(*)  as total_sale FROM retail_table

-- How many uninqe customers we have?
SELECT COUNT(DISTINCT customer_id) as uninqe_customers FROM retail_table

-- How many uninqe category we have?

SELECT COUNT(DISTINCT category) as category FROM retail_table

SELECT DISTINCT category as category FROM retail_table

-- Data Analysis or Business key problems and answers

-- pro-1: Write a SQL query to retrieve all columns for sales made on '2022-11-05' 
SELECT * FROM retail_table
WHERE sale_date ='2022-11-05'

-- pro-2: Write a SQL query to retrieve all transactions where the category is 'Clothing' 
-- and the quantity sold is more than 4 in the month of Nov-2022

SELECT *
FROM retail_table
WHERE category ='Clothing'
AND quantity >=4
AND EXTRACT (MONTH FROM sale_date)=11
AND EXTRACT (YEAR FROM sale_date)=2022

-- SELECT category , SUM (quantity) as total_quantity
-- FROM retail_table
-- WHERE category ='Clothing'
-- AND TO_CHAR(sale_date , 'YYYY-MM')='2022-11' 
-- GROUP BY 1

-- pro-3: Write a SQL query to calculate the total sales (total_sales) for each category.
SELECT category ,
SUM(total_sale) as category_total_sale,
COUNT(quantity)
FROM retail_table
GROUP BY category

-- pro-4: Write a SQL query to find the average age of customers who purchased items from 
-- the 'Beauty' category.

SELECT ROUND(AVG(age),2) AS avg_age 
FROM retail_table
WHERE category='Beauty'

-- pro-5: Write a SQL query to find all transactions  where the total_sale is greater than 1000.
SELECT * FROM retail_table
WHERE total_sale >1000

-- pro-6: Write a SQL query to find the total number of transactons (transactons_id) made by 
-- each gender in each category.

SELECT 
category,
gender,
COUNT(transactions_id) as id_
FROM retail_table
GROUP BY gender,category
ORDER BY 1

-- pro-7: Write a SQL query to calculate the average sale for each month.Find out best selling month in each year.
SELECT
year,
month,
avg_sale
FROM
(
SELECT 
EXTRACT (YEAR FROM sale_date) as year,
EXTRACT (MONTH FROM sale_date) as month,
AVG(total_sale) as avg_sale,
RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY AVG(total_sale) DESC) AS rank
FROM retail_table
GROUP BY 1,2
) AS T1
WHERE rank=1
-- ORDER BY 1,3 DESC

-- pro-8: Write a SQl query to find the top 5 customers based on the highest total sales.
SELECT 
customer_id,
SUM(total_sale)as total_sale_sum
FROM retail_table
GROUP BY 1
ORDER BY total_sale_sum DESC
LIMIT 5


-- SELECT
-- customer_id,
-- total_sale_sum
-- FROM
-- (
-- SELECT 
-- customer_id,
-- SUM(total_sale) as total_sale_sum,
-- ROW_NUMBER()OVER(ORDER BY SUM(total_sale) DESC ) as rank
-- FROM retail_table
-- GROUP BY customer_id
-- )
-- WHERE rank<=5

-- pro-9:Write a SQl query to find the number of unique customers who purchased items from each category.
SELECT category, 
COUNT(DISTINCT customer_id) as unique_cst
FROM retail_table
GROUP BY 1

-- pro-10:Write a SQL query to create each shift and number of orders 
-- (Example Morning<12,afternoon between 12 & 17 , Evening >17)

WITH hourly_sale 
AS
(
SELECT *,
      CASE 
	    WHEN EXTRACT(HOUR FROM sale_time) <12 THEN 'Morning'
	    WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
	  END as shift
FROM retail_table
)
SELECT shift , COUNT(shift) as total_orders FROM hourly_sale
GROUP BY shift

-- Project END.


