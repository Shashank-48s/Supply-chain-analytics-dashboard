SELECT * FROM supply_chain LIMIT 10;

-- Total revenue
SELECT SUM("Revenue generated") AS Total_Revenue FROM supply_chain;

-- Top 5 products by revenue
SELECT "Product type", SUM("Revenue generated") AS Total_Revenue
FROM supply_chain
GROUP BY "Product type"
ORDER BY Total_Revenue DESC
LIMIT 5;

-- Avg manufacturing and shipping time
SELECT 
    AVG("Manufacturing lead time") AS Avg_Manufacturing_Lead,
    AVG("Shipping times") AS Avg_Shipping_Time
FROM supply_chain;


-- Defect rate by supplier
SELECT "Supplier name", AVG("Defect rates") AS Avg_Defect_Rates
FROM supply_chain
GROUP BY "Supplier name"
ORDER BY Avg_Defect_Rates DESC;

SELECT "Transportation mode", COUNT(*) AS Usage_Count
FROM supply_chain
GROUP BY "Transportation mode";