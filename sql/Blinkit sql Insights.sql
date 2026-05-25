CREATE DATABASE blinkit;
USE blinkit;
SELECT * FROM blinkitsales;

-- 1. KPI Cards Query
-- Total Sales + Avg Sales + Avg Rating + Total Items
SELECT 
    ROUND(SUM(Sales)/1000000,2) AS Total_Sales_Million,
    ROUND(AVG(Sales),2) AS Avg_Sales,
    ROUND(AVG(Rating),1) AS Avg_Rating,
    COUNT(*) AS No_Of_Items
FROM blinkit_data;

-- 2. Outlet Establishment Trend
SELECT
    `Outlet Establishment Year`,
    ROUND(SUM(Sales)/1000,2) AS Total_Sales_K
FROM blinkit_data
GROUP BY `Outlet Establishment Year`
ORDER BY `Outlet Establishment Year`;
-- Fat Content Analysis
SELECT
    `Item Fat Content`,
    ROUND(SUM(Sales)/1000,2) AS Total_Sales_K
FROM blinkit_data
GROUP BY `Item Fat Content`;

-- Fat by Outlet Tier
SELECT
    `Outlet Location Type`,
    `Item Fat Content`,
    ROUND(SUM(Sales)/1000000,2) AS Total_Sales_M
FROM blinkit_data
GROUP BY 
    `Outlet Location Type`,
    `Item Fat Content`
ORDER BY Total_Sales_M DESC;

-- 5. Item Type Analysis
SELECT
    `Item Type`,
    ROUND(SUM(Sales)/1000000,2) AS Total_Sales_M
FROM blinkit_data
GROUP BY `Item Type`
ORDER BY Total_Sales_M DESC;

-- 6. Outlet Size Analysis
SELECT
    `Outlet Size`,
    ROUND(SUM(Sales)/1000,2) AS Total_Sales_K
FROM blinkit_data
GROUP BY `Outlet Size`;

-- 7. Outlet Location Analysis
SELECT
    `Outlet Location Type`,
    ROUND(SUM(Sales)/1000,2) AS Total_Sales_K
FROM blinkit_data
GROUP BY `Outlet Location Type`
ORDER BY Total_Sales_K DESC;

-- 8. Outlet Type Table
SELECT
    `Outlet Type`,
    ROUND(SUM(Sales)/1000,2) AS Total_Sales_K,
    COUNT(*) AS No_Of_Items,
    ROUND(AVG(Sales),2) AS Avg_Sales,
    ROUND(AVG(Rating),1) AS Avg_Rating,
    ROUND(AVG(`Item Visibility`),2) AS Item_Visibility
FROM blinkit_data
GROUP BY `Outlet Type`
ORDER BY Total_Sales_K DESC;
-- 9. Top 5 Item Types
SELECT
    `Item Type`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM blinkit_data
GROUP BY `Item Type`
ORDER BY Total_Sales DESC
LIMIT 5;
-- 10. Best Performing Outlet Type
SELECT
    `Outlet Type`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM blinkit_data
GROUP BY `Outlet Type`
ORDER BY Total_Sales DESC
LIMIT 1;
-- 11. Tier 3 Generates Highest Sales?
SELECT
    `Outlet Location Type`,
    ROUND(SUM(Sales)/1000,2) AS Total_Sales_K
FROM blinkit_data
GROUP BY `Outlet Location Type`
ORDER BY Total_Sales_K DESC;

-- 12. Which Fat Content Sells More?
SELECT
    `Item Fat Content`,
    COUNT(*) AS Total_Items,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM blinkit_data
GROUP BY `Item Fat Content`
ORDER BY Total_Sales DESC;