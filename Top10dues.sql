SELECT Country, SUM(Disbursed_amt) AS Amt, SUM(IDA_dues) AS Tot_dues
FROM Latest
GROUP BY Country
ORDER BY Tot_dues DESC LIMIT 20;