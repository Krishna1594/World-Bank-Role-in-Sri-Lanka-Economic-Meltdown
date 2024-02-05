SELECT Country, ROUND(SUM(Original_P_amt),2) AS OriginalAmount_USD,
ROUND(SUM(Disbursed_amt),2) AS Disbursed_USD
FROM Latest AS l
WHERE l.Country = 'Sri Lanka';