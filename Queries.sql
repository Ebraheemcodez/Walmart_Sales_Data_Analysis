-- _______Generic_______

-- How many unique cities does the data have?

SELECT
	DISTINCT City
FROM
	sales;
    
-- In which city is each branch?

SELECT
	DISTINCT City,
    Branch
FROM
	sales;


-- _______Product_______

-- How many unique product lines does the data have?

SELECT 
	DISTINCT Product_line
FROM
	sales;
    
-- What is the most common payment method?

SELECT 
	COUNT(quantity) as count_qty,
    Payment
FROM
	sales
GROUP BY 
	Payment
ORDER BY 
	count_qty DESC;
    
-- What is the most selling product line?

SELECT
	SUM(quantity) as sum_qty,
    product_line
FROM
	sales
GROUP BY
	product_line
ORDER BY 
	sum_qty DESC;

-- What is the total revenue by month?

SELECT
	month_name AS month,
    SUM(total) AS total_revenue
FROM
	sales
GROUP BY 
	month
ORDER BY	
	total_revenue;

-- What month had the largest COGS?

SELECT
	month_name AS month,
    SUM(cogs) AS total_cogs
FROM
	sales
GROUP BY
	month
ORDER BY
	total_cogs DESC;
    
-- What product line had the largest revenue?

SELECT
	product_line,
    SUM(Total) AS revenue
FROM
	sales
GROUP BY
	product_line
ORDER BY
	revenue DESC;
    
-- What is the city with the largest revenue?

SELECT
	city,
    branch,
    SUM(total) AS revenue
FROM
	sales
GROUP BY
	city, 
    Branch
ORDER BY
	revenue DESC;
    
-- What product line had the largest VAT?

SELECT
	product_line,
    AVG(Tax_Pct) AS avg_VAT
FROM
	sales
GROUP BY
	product_line
ORDER BY 
	avg_VAT DESC;

-- Fetch each product line and add a column to those product 
-- line showing "Good", "Bad". Good if its greater than average sales

SELECT 
	AVG(quantity) AS avg_qnty
FROM sales;

SELECT
	product_line,
	CASE
		WHEN AVG(quantity) > 6 THEN "Good"
        ELSE "Bad"
    END AS remark
FROM sales
GROUP BY product_line;

-- Which branch sold more products than average product sold?

SELECT 
	branch, 
    SUM(quantity) AS qnty
FROM sales
GROUP BY branch
HAVING SUM(quantity) > (SELECT AVG(quantity) FROM sales);

-- What is the most common product line by gender?

SELECT
	gender,
    product_line,
    COUNT(gender) AS total_cnt
FROM sales
GROUP BY gender, product_line
ORDER BY total_cnt DESC;

-- What is the average rating of each product line?

SELECT
	ROUND(AVG(rating), 2) as avg_rating,
    product_line
FROM sales
GROUP BY product_line
ORDER BY avg_rating DESC;

-- _______Sales_________

-- Number of sales made in each time of the day per weekday
-- Which of the customer types brings the most revenue?
-- Which city has the largest tax percent/ VAT (Value Added Tax)?
-- Which customer type pays the most in VAT?

-- _______Customer______

-- How many unique customer types does the data have?
-- How many unique payment methods does the data have?
-- What is the most common customer type?
-- Which customer type buys the most?
-- What is the gender of most of the customers?
-- What is the gender distribution per branch?
-- Which time of the day do customers give most ratings?
-- Which time of the day do customers give most ratings per branch?
-- Which day fo the week has the best avg ratings?
-- Which day of the week has the best average ratings per branch?
