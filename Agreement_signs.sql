UPDATE Latest
SET SigningAgreement_date = STR_TO_DATE(SigningAgreement_date, '%m/%d/%Y %H:%i');
ALTER TABLE Latest
MODIFY COLUMN Disbursed_amt DOUBLE;

SELECT *
FROM Latest
WHERE Latest.Country = 'Sri Lanka'
ORDER BY SigningAgreement_date DESC;