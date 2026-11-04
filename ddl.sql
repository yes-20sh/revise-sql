/*
DDL - Data Definition language

1) DDL is a group of SQL commands used to create, modify, and delete the structure of database objects like tables, schemas, and databases

Commands :  CREATE DROP ALTER TRUNCATE
*/

/*
CREATE

create database objects such as databases, tables, schemas, indexes, views, and types.

CREATE DATABASE – Creates a new database.
CREATE SCHEMA – Creates a new schema.
CREATE TABLE – Creates a new table.
CREATE TYPE – Creates a custom data type.
CREATE INDEX – Creates an index to improve query performance.
CREATE VIEW – Creates a virtual table based on a SQL query.
CREATE UNIQUE INDEX – Creates an index that prevents duplicate values.
*/

-- C1) creating databse
CREATE DATABASE revise_sql;                    

-- C2) creating table in database
CREATE TABLE departments(
    department_id UUID PRIMARY KEY DEFAULT gen_random_UUID(),
    department VARCHAR(50)
)

-- C3) creating type as ENUM
CREATE TYPE empl_status as ENUM (
    'ACTIVE',
    'ON_LEAVE',
    'TERMINATE'
)

-- C4) creating table 
CREATE TABLE employees (
    employee_id UUID PRIMARY KEY DEFAULT gen_random_UUID(),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    phone_number VARCHAR(20),
    bio TEXT,
    job_title VARCHAR(50) NOT NULL,
    salary INT NOT NULL CHECK (salary > 0),
    is_active BOOLEAN DEFAULT TRUE,
    hire_date DATE NOT NULL,
    last_login TIMESTAMP,
    employee_status empl_status NOT NULL DEFAULT 'ACTIVE',
    create_at TIMESTAMP NOT NULL DEFAULT now(),
    department_id UUID REFERENCES departments(department_id), -- foreign key
    manager_id UUID REFERENCES employees(employee_id) -- self reference foreign key
) 


/*
ALTER

ALTER modifies the existing structure of a database object. It can add, modify, rename, or remove parts of that structure.

ADD COLUMN – Add a column
DROP COLUMN – Delete a column
RENAME COLUMN – Rename a column
ALTER COLUMN TYPE – Change data type
SET DEFAULT – Set default value
DROP DEFAULT – Remove default
SET NOT NULL – Make column mandatory
DROP NOT NULL – Allow NULL
ADD CONSTRAINT – Add constraint
DROP CONSTRAINT – Remove constraint
RENAME TO – Rename table/schema
*/

-- A1) add
ALTER TABLE employees
ADD COLUMN internal_note VARCHAR(100) NOT NULL DEFAULT ('N/A')

-- A2) rename
ALTER TABLE employees
RENAME COLUMN internal_note TO hr_note

-- A3) drop
ALTER TABLE employees
DROP COLUMN hr_note


/*
TRUNCATE

TRUNCATE removes all existing records (rows) from a table but preserve its table structure, columns, constraints, and indexes.
*/

TRUNCATE TABLE employees;


/*
DROP

permanently remove database objects such as databases, schemas, tables, indexes, views, and custom types along with their associated structure.

DROP DATABASE – Deletes an existing database.
DROP SCHEMA – Deletes an existing schema.
DROP TABLE – Deletes an existing table and its data.
DROP TYPE – Deletes an existing custom data type.
DROP INDEX – Deletes an existing index.
DROP VIEW – Deletes an existing view.
DROP FUNCTION – Deletes an existing function.
DROP TRIGGER – Deletes an existing trigger
*/

DROP TABLE employees;