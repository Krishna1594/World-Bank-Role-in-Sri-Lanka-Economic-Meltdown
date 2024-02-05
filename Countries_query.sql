SELECT Country, Count(*) AS num_transc # each row here means number of transactions from a country
FROM worldbankdata.ida_statements AS IDAs
GROUP BY Country
ORDER BY Country ASC;