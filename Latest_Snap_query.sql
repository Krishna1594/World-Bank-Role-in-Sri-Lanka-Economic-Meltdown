CREATE TEMPORARY TABLE Latest AS (
    SELECT i.*
    FROM ida_statements AS i
    JOIN (
        SELECT Credit_num, MAX(EOP) AS Recentdate
        FROM ida_statements
        GROUP BY Credit_num
    ) AS r ON i.Credit_num = r.Credit_num AND i.EOP = r.Recentdate
);

#------------Viewing Table---------------
SELECT *
FROM Latest
ORDER BY Country ASC;
#----------------------------------------

SELECT *
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/LatestSnap_IDA.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
FROM Latest
ORDER BY Country;


#DROP TEMPORARY TABLE Latest;