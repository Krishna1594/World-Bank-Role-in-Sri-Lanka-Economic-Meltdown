# -------Gaining access for file privildges in the host to export results into a .csv format-------
SHOW VARIABLES LIKE 'secure_file_priv';
GRANT FILE ON *.* TO root@localhost;
# -------------------------------------------------------------------------------------------------
USE worldbankdata;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/IDA_Statement.csv' INTO TABLE ida_statements
  FIELDS TERMINATED BY ','
  ENCLOSED BY '"'   -- Enclosed by double quotes
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES;

# Making changes to EOP column: Formatting as Datetime  
#-- Step 1: Add a new column to temporarily store the converted datetime values
ALTER TABLE ida_statements
ADD COLUMN EOP_temp DATETIME;

#-- Step 2: Update the new column with the converted datetime values
UPDATE ida_statements
SET EOP_temp = STR_TO_DATE(EOP, '%m/%d/%Y %H:%i');

#-- Step 3: Drop the original varchar column
ALTER TABLE ida_statements
DROP COLUMN EOP;

#-- Step 4: Rename the temporary column to the original column name
ALTER TABLE ida_statements
CHANGE COLUMN EOP_temp EOP DATETIME;

# Update Tables with Double in required columns
ALTER TABLE ida_statements
MODIFY COLUMN Original_P_amt DOUBLE;

