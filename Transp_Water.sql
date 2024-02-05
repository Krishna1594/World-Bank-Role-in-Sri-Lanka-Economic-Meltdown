WITH Transp_water AS (
	SELECT *
	FROM Latest AS l
	WHERE l.Country = 'Sri Lanka' 
	AND (
		l.Project_name LIKE '%KMTT%' 
		OR l.Project_name LIKE '%IWWR%' 
		OR l.Project_name LIKE '%transp%' 
		OR l.Project_name LIKE '%Transp%' 
		OR l.Project_name LIKE '%TRANSP%' 
		OR l.Project_name LIKE '%Water%' 
		OR l.Project_name LIKE '%WATER%'
        OR l.Project_name LIKE '%water%'
		)
)
# Now Lets see how much World bank has given to Sri Lanka to assist in Transportation & Water while Sri Lanka is repaying
SELECT Country, ROUND(SUM(Disbursed_amt),2) AS TW
FROM Transp_water
GROUP BY Country;