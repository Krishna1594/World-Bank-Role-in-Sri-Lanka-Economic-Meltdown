SELECT 
    country,
    SUM(CASE WHEN s.credit_stat = 'Fully Repaid' THEN 1 ELSE 0 END) AS Fully_Repaid,
    SUM(CASE WHEN s.credit_stat = 'Repaying' THEN 1 ELSE 0 END) AS Repaying,
    SUM(CASE WHEN s.credit_stat = 'Fully Cancelled' THEN 1 ELSE 0 END) AS Fully_Cancelled,
    SUM(CASE WHEN s.credit_stat = 'Effective' THEN 1 ELSE 0 END) AS Effective,
    SUM(CASE WHEN s.credit_stat = 'Disbursing&Repaying' THEN 1 ELSE 0 END) AS Disbursing_Repaying,
    SUM(CASE WHEN s.credit_stat = 'Fully Disbursed' THEN 1 ELSE 0 END) AS Fully_Disbursed,
    SUM(CASE WHEN s.credit_stat = 'Terminated' THEN 1 ELSE 0 END) AS Terminated_num,
    SUM(CASE WHEN s.credit_stat = 'Disbursing' THEN 1 ELSE 0 END) AS Disbursing,
    SUM(CASE WHEN s.credit_stat = 'Signed' THEN 1 ELSE 0 END) AS Signed,
    SUM(CASE WHEN s.credit_stat = 'Approved' THEN 1 ELSE 0 END) AS Approved,
    SUM(CASE WHEN s.credit_stat = 'Repaid' THEN 1 ELSE 0 END) AS Repaid,
    SUM(CASE WHEN s.credit_stat = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled,
    SUM(CASE WHEN s.credit_stat = 'Disbursed' THEN 1 ELSE 0 END) AS Disbursed,
    SUM(CASE WHEN s.credit_stat = 'Negotiated' THEN 1 ELSE 0 END) AS Negotiated,
    SUM(CASE WHEN s.credit_stat = 'Draft' THEN 1 ELSE 0 END) AS Draft,
    SUM(IDA_dues) AS Amt
FROM worldbankdata.ida_statements AS s
WHERE Year(EOP) = 2023
GROUP BY 
    Country
ORDER BY Amt DESC;