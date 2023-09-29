/*
This SQL script queries the column "your_column" from the table "your_table" and produces a row for each distinct value contained in your_column.
This is used to ensure that each value is represented in the pulled data.

For example, if your_table was a table of car models and the values had a few rows of Civics, Corvettes, and Mustangs, one row of each would be in the final output.
*/

WITH RankedRows AS (
  SELECT
    *,
    ROW_NUMBER() OVER (PARTITION BY your_column ORDER BY RANDOM()) AS rn
  FROM
    your_table
)
SELECT
  *
FROM
  RankedRows
WHERE
  rn = 1;