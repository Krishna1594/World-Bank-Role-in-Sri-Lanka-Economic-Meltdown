WITH agri AS (
	SELECT *
	FROM Latest AS l
	WHERE l.Country = 'Sri Lanka' 
	AND (
		l.Project_name LIKE '%agri%' 
		OR l.Project_name LIKE '%Agri%' 
		OR l.Project_name LIKE '%Irrig%' 
		OR l.Project_name LIKE '%IRRIG%' 
		OR l.Project_name LIKE '%CROPS%' 
		OR l.Project_name LIKE '%IRRIG.%' 
		OR l.Project_name LIKE '%TEA%'
		)
)
# Now Lets see how much World bank has given to Sri Lanka to assist in Agriculture while Sri Lanka is repaying
SELECT Country, ROUND(SUM(Disbursed_amt),2) AS Given_for_agri
FROM agri
GROUP BY Country;


