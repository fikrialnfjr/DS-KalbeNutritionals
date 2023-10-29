-- Query Task 1
SELECT 
    "Marital Status", 
    AVG(c."Age") AS Average_Age
FROM 
    kalbe."Customer" c
GROUP BY 
    "Marital Status"

-- Query Task 2
SELECT 
    "Gender", 
    AVG(c."Age") AS Average_Age
FROM 
    kalbe."Customer" c
GROUP BY 
    "Gender"

-- Query Task 3
SELECT 
    s."StoreName", 
    SUM(t."Qty") AS Total_Quantity
FROM 
    kalbe."Store" s
JOIN 
    kalbe."Transaction" t ON s."StoreID"  = t."StoreID"
GROUP BY 
    s."StoreName"
ORDER BY 
    Total_Quantity DESC
LIMIT 1;

--Query Task 4
SELECT 
    p."Product Name", 
    SUM(t."TotalAmount") AS Total_Amount
FROM 
    kalbe."Product" p 
JOIN 
    kalbe."Transaction" t ON p."ProductID" = t."ProductID"
GROUP BY 
    p."Product Name"
ORDER BY 
    Total_Amount DESC
LIMIT 1;

