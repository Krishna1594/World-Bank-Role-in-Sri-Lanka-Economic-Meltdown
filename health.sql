WITH health AS (
	SELECT *
	FROM Latest AS l
	WHERE l.Country = 'Sri Lanka' 
	AND (
		l.Project_name LIKE '%Health%' 
		OR l.Project_name LIKE '%health%' 
		OR l.Project_name LIKE '%heal%' 
		OR l.Project_name LIKE '%COVID%' 
		OR l.Project_name LIKE '%covid%' 
		OR l.Project_name LIKE '%HEALTH%' 
		OR l.Project_name LIKE '%HEAL%'
		)
)
# Now Lets see how much World bank has given to Sri Lanka to assist in Health Services while Sri Lanka is repaying
SELECT Country, ROUND(SUM(Disbursed_amt),2) AS Given_for_Health
FROM health
GROUP BY Country;