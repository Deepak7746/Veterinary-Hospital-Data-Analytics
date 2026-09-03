-- ============================================
-- Veterinary Hospital Data Analytics
-- SQL Analysis Queries
-- Author: R. Deepak
-- ============================================

USE veterinary_analytics;

-- 1. Check Total Records
SELECT COUNT(*) AS Total_Rows
FROM veterinary_records;


-- 2. View Sample Records
SELECT *
FROM veterinary_records
LIMIT 10;


-- 3. Total Cases
SELECT COUNT(*) AS Total_Cases
FROM veterinary_records;


-- 4. Cases by Animal Type
SELECT
    Animal_Type,
    COUNT(*) AS Total_Cases
FROM veterinary_records
GROUP BY Animal_Type
ORDER BY Total_Cases DESC;


-- 5. Disease Analysis
SELECT
    Disease,
    COUNT(*) AS Total_Cases
FROM veterinary_records
GROUP BY Disease
ORDER BY Total_Cases DESC;


-- 6. Total Treatment Cost
SELECT
    SUM(Treatment_Cost) AS Total_Treatment_Cost
FROM veterinary_records;


-- 7. Average Treatment Cost
SELECT
    ROUND(AVG(Treatment_Cost), 2) AS Average_Treatment_Cost
FROM veterinary_records;


-- 8. Treatment Cost by Disease
SELECT
    Disease,
    SUM(Treatment_Cost) AS Total_Cost
FROM veterinary_records
GROUP BY Disease
ORDER BY Total_Cost DESC;


-- 9. Monthly Cases Trend
SELECT
    DATE_FORMAT(Visit_Date, '%Y-%m') AS Month,
    COUNT(*) AS Total_Cases
FROM veterinary_records
GROUP BY DATE_FORMAT(Visit_Date, '%Y-%m')
ORDER BY Month;


-- 10. Treatment Outcome Analysis
SELECT
    Outcome,
    COUNT(*) AS Total_Patients
FROM veterinary_records
GROUP BY Outcome
ORDER BY Total_Patients DESC;


-- 11. Doctor-wise Cases
SELECT
    Doctor,
    COUNT(*) AS Total_Cases
FROM veterinary_records
GROUP BY Doctor
ORDER BY Total_Cases DESC;


-- 12. Cases by Treatment Type
SELECT
    Treatment,
    COUNT(*) AS Total_Cases
FROM veterinary_records
GROUP BY Treatment
ORDER BY Total_Cases DESC;


-- 13. Location-wise Cases
SELECT
    Location,
    COUNT(*) AS Total_Cases
FROM veterinary_records
GROUP BY Location
ORDER BY Total_Cases DESC;


-- 14. Average Treatment Days by Disease
SELECT
    Disease,
    ROUND(AVG(Treatment_Days), 2) AS Average_Treatment_Days
FROM veterinary_records
GROUP BY Disease
ORDER BY Average_Treatment_Days DESC;


-- 15. Recovery Rate
SELECT
    ROUND(
        SUM(CASE WHEN Outcome = 'Recovered' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Recovery_Rate_Percentage
FROM veterinary_records;