SELECT Country, ROUND(AVG(Service_charge_rate),2) AS Avg_rate
FROM Latest
WHERE Latest.Country = 'Sri Lanka';