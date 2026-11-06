/*
DML - Data Manuplation Language

DML is a subset of SQL used to insert, retrieve, update, and delete data stored in database tables without changing their structure.

Command : Insert, update, delete, select
*/

/*
INSERT

Adding the new row of data in table
*/

INSERT INTO departments(department) 
VALUES ('Sales'),('support'),('warehouse')



/*
UPDATE

Modifies existing records in a database table.
*/

UPDATE products
SET stock_quantity = 220
WHERE product_id = 'e85af84b-22e1-5d53-bdf8-cfff74ff3c4e'

/*
DELETE

Removes existing records (rows) from a database table.
*/

DELETE products
WHERE product_id = 'e85af84b-22e1-5d53-bdf8-cfff74ff3c4e'
