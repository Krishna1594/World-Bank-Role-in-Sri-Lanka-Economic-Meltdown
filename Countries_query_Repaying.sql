SELECT Country, Count(Credit_stat) AS num_stat, Credit_stat  # each row here means number of transactions from a country
FROM worldbankdata.ida_statements AS IDAs
WHERE IDAs.Credit_stat = 'Repaying'
GROUP BY Country
ORDER BY num_stat DESC;