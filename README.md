# Walmart Sales Data Analysis Project

## About

This project aims to explore the Walmart Sales data to understand top performing branches and products, sales trend of of different products, customer behaviour. The aims is to study how sales strategies can be improved and optimized. The dataset was obtained from the [Kaggle Walmart Sales Forecasting Competition](https://www.kaggle.com/c/walmart-recruiting-store-sales-forecasting).

"In this recruiting competition, job-seekers are provided with historical sales data for 45 Walmart stores located in different regions. Each store contains many departments, and participants must project the sales for each department in each store. To add to the challenge, selected holiday markdown events are included in the dataset. These markdowns are known to affect sales, but it is challenging to predict which departments are affected and the extent of the impact." [source](https://www.kaggle.com/c/walmart-recruiting-store-sales-forecasting)

## Business Questions To Answer

### Generic Question
- **1. How many unique cities does the data have?** 
- **2. In which city is each branch?** 

### Product
- **1. How many unique product lines does the data have?** 
- **2. What is the most common payment method?** 
- **3. What is the most selling product line?** 
- **4. What is the total revenue by month?**
- **5. What month had the largest COGS?**
- **6. What product line had the largest revenue?**
- **7. What is the city with the largest revenue?**
- **8. What product line had the largest VAT?**
- **9. Fetch each product line and add a column to those product line showing "Good", "Bad". Good if its greater than average sales**
- **10. Which branch sold more products than average product sold?**
- **11. What is the most common product line by gender?**
- **12. What is the average rating of each product line?**
  
### Sales
- **1. Number of sales made in each time of the day per weekday** 
- **2. Which of the customer types brings the most revenue?** 
- **3. Which city has the largest tax percent/ VAT (Value Added Tax)?** 
- **4. Which customer type pays the most in VAT?**
  
### Customer
- **1. How many unique customer types does the data have?** 
- **2. How many unique payment methods does the data have?** 
- **3. What is the most common customer type?** 
- **4. Which customer type buys the most?** 
- **5. What is the gender of most of the customers?** 
- **6. What is the gender distribution per branch?** 
- **7. Which time of the day do customers give most ratings?**
- **8. Which time of the day do customers give most ratings per branch?**
- **9. Which day fo the week has the best avg ratings?**
- **10. Which day of the week has the best average ratings per branch?**

- ## Revenue And Profit Calculations

$ COGS = unitsPrice * quantity $

$ VAT = 5\% * COGS $

$VAT$ is added to the $COGS$ and this is what is billed to the customer.

$ total(gross_sales) = VAT + COGS $

$ grossProfit(grossIncome) = total(gross_sales) - COGS $

**Gross Margin** is gross profit expressed in percentage of the total(gross profit/revenue)

$ \text{Gross Margin} = \frac{\text{gross income}}{\text{total revenue}} $

<u>**Example with the first row in our DB:**</u>

**Data given:**

- $ \text{Unite Price} = 45.79 $
- $ \text{Quantity} = 7 $

$ COGS = 45.79 * 7 = 320.53 $

$ \text{VAT} = 5\% * COGS\\= 5\%  320.53 = 16.0265 $

$ total = VAT + COGS\\= 16.0265 + 320.53 = $336.5565$

$ \text{Gross Margin Percentage} = \frac{\text{gross income}}{\text{total revenue}}\\=\frac{16.0265}{336.5565} = 0.047619\\\approx 4.7619\% $
