WITH natural_disas AS (
    SELECT *
    FROM Latest AS l
    WHERE l.Country = 'Sri Lanka' 
    AND (
        (l.Project_name LIKE '%CLIMATE%' OR l.Project_name LIKE '%climate%' OR l.Project_name LIKE '%Climate%')
        AND (l.Project_name NOT LIKE '%Climate Smart%')
        OR (l.Project_name LIKE '%TSUNAMI%' OR l.Project_name LIKE '%tsunami%' OR l.Project_name LIKE '%Tsunami%')
        OR (l.Project_name LIKE '%FLOODS%' OR l.Project_name LIKE '%Floods%' OR l.Project_name LIKE '%floods%')
    )
)
SELECT Country, ROUND(SUM(Disbursed_amt),2) AS disas_amt
FROM natural_disas
GROUP BY Country;