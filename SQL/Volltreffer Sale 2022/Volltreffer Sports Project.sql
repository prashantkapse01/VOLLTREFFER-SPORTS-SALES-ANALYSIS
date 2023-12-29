# This analysis delves into the sales data of Volltreffer Sports' E-commerce platform for the year 2022. 
# The primary objective is to extract actionable insights to inform decision-making processes.
# Enhance the overall performance of the organization.

USE Prashant;
SELECT * FROM volltreffer_data;

DESCRIBE volltreffer_data;

SELECT DATE(date)
from volltreffer_data;

# Monthly Sales Analysis
SELECT MONTHNAME(Date) AS MONTH_SALE,SUM(Amount) AS SALE
FROM volltreffer_data
GROUP BY MONTH_SALE
ORDER BY SALE DESC;

SELECT MONTH(Date)
from volltreffer_data;

# AVG-MAX-MIN Sales
SELECT ROUND(AVG(Amount),2) AS Average,
MAX(Amount) AS Maximum,
MIN(Amount) AS Minimum
FROM volltreffer_data;

# Channel Sales Analysis
SELECT Channel,SUM(Amount)
FROM volltreffer_data
GROUP BY Channel
ORDER BY SUM(Amount) DESC;

# STATE-wise Sales Analysis
SELECT `Ship-State`,SUM(Amount),Category
FROM volltreffer_data
GROUP BY `Ship-State`,Category
ORDER BY SUM(Amount) DESC;

# City-wise Sales Analysis
SELECT `Ship-City`,SUM(Amount)
FROM volltreffer_data
GROUP BY `Ship-City`
ORDER BY SUM(Amount) DESC;

# Best-selling Category Analysis
SELECT Category,SUM(Amount)
FROM volltreffer_data
GROUP BY Category
ORDER BY SUM(Amount) DESC;

# Size-wise & Category sales Analysis
SELECT Size,Category,COUNT(*) AS COUNT
FROM volltreffer_data
GROUP BY Size,Category
ORDER BY COUNT DESC;

# Gender-wise sales Analysis
SELECT Gender,Count(*) AS COUNT
FROM volltreffer_data
GROUP BY Gender 
ORDER BY COUNT DESC;

#Gender and Category Sales Overview
SELECT Gender,Category,COUNT(*) AS COUNT
FROM volltreffer_data
GROUP BY Gender,Category
ORDER BY COUNT DESC;

# Delivery Status Analysis
SELECT Status,SUM(Amount)
FROM volltreffer_data
GROUP BY Status
ORDER BY SUM(Amount) DESC;

# Age-wise sales Analysis
SELECT `Age Group`,SUM(Amount)
FROM volltreffer_data
GROUP BY `Age Group`
ORDER BY SUM(Amount) DESC;









