WITH Econom_Finan AS (
	SELECT *
	FROM Latest AS l
	WHERE l.Country = 'Sri Lanka' 
	AND (
		l.Project_name LIKE '%ECONOM%' 
        OR l.Project_name LIKE '%ECO.%'
		OR l.Project_name LIKE '%Econom%' 
		OR l.Project_name LIKE '%econom%' 
        OR l.Project_name LIKE '%DFCC%'
		OR l.Project_name LIKE '%FINAN%' 
		OR l.Project_name LIKE '%finan%' 
		OR l.Project_name LIKE '%Finan%' 
		OR l.Project_name LIKE '%FIN%'
        OR l.Project_name LIKE '%IDP%'
        OR l.Project_name LIKE '%Competi%'
        OR l.Project_name LIKE '%Bank%'
        OR l.Project_name LIKE '%bank%'
        OR l.Project_name LIKE '%PRSC%'
		)
)
# Now Lets see how much World bank has given to Sri Lanka to assist in Economic & Finance while Sri Lanka is repaying
SELECT Country, ROUND(SUM(Disbursed_amt),2) AS EF
FROM Econom_Finan
GROUP BY Country;