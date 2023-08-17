/*
This code creates a base table of dummy data for querying in SQL.
*/

-- Create a table
DROP TABLE IF EXISTS dummy_data;
CREATE TEMP TABLE dummy_data 
AS (
	id			INT,
	item_name	VARCHAR(100),
	price		DECIMAL(10,2)
);

-- Insert values into the table
INSERT INTO dummy_data
VALUES
	(1, 'pencil', 0.10),
	(2, 'pen', 0.15),
	(3, 'marker', 0.17),
	(4, 'eraser', 0.20),
	(5, 'paperclip', .02)
;