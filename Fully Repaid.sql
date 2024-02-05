SELECT EOP, Country, Project_name, Original_P_amt, IDA_dues, Credit_stat
FROM Latest
WHERE Latest.Country = 'Sri Lanka' AND Latest.Credit_stat = 'Fully Repaid';