SELECT EOP, Country, Borrower, Project_name, Original_P_amt, Credit_stat
FROM Latest
WHERE Latest.Country = 'Sri Lanka'
ORDER BY Original_P_amt DESC LIMIT 10;