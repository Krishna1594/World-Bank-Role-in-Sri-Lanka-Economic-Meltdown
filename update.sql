-- Step 1: Add a new column to temporarily store the converted datetime values
ALTER TABLE ida_statements
ADD COLUMN EOP_temp DATETIME;

-- Step 2: Update the new column with the converted datetime values
UPDATE ida_statements
SET EOP_temp = STR_TO_DATE(EOP, '%m/%d/%Y %H:%i');

-- Step 3: Drop the original varchar column
ALTER TABLE ida_statements
DROP COLUMN EOP;

-- Step 4: Rename the temporary column to the original column name
ALTER TABLE ida_statements
CHANGE COLUMN EOP_temp EOP DATETIME;