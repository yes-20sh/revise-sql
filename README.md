# revise-sql

A structured SQL learning repository focused on relational database concepts, query writing, and practical data operations. This project covers the fundamentals of SQL, including schema creation, data manipulation, querying, joins, aggregation, advanced functions, and optimization techniques.

## Overview

This repository is designed for learners who want to understand and revise SQL in a practical, example-driven way. It includes scripts for creating tables, inserting data, querying information, and analyzing results using advanced SQL features.

The content is organized into focused SQL topics so that beginners and intermediate learners can study each concept independently and build from the basics to more complex database logic.

## Topics Covered

- DDL: CREATE, ALTER, DROP, TRUNCATE
- DML: INSERT, UPDATE, DELETE
- DQL: SELECT, WHERE, DISTINCT, ORDER BY, LIMIT, OFFSET
- Filtering: AND, OR, IN, LIKE, IS, COALESCE
- Aggregation: COUNT, SUM, AVG, MIN, MAX, GROUP BY, HAVING
- Joins: INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, CROSS JOIN
- Subqueries and derived tables
- Common Table Expressions (CTEs)
- UNION and UNION ALL
- Window functions
- Indexes
- Practice database setup and sample data

## Repository Structure

- `README.md` — project overview and documentation
- `ddl.sql` — Data Definition Language examples
- `dml.sql` — Data Manipulation Language examples
- `dql.sql` — Data Query Language and filtering examples
- `joins.sql` — join examples and relationship queries
- `aggregation.sql` — aggregate functions and grouped results
- `sub_query.sql` — subquery examples
- `cte.sql` — Common Table Expressions
- `union.sql` — UNION and UNION ALL examples
- `window_function.sql` — window function examples
- `index.sql` — index creation and usage example
- `practise/ddl_pract.sql` — practice schema creation files
- `practise/dml_pract.sql` — sample data insertion exercises

## Learning Flow

A suggested learning path:

1. `ddl.sql`
2. `dml.sql`
3. `dql.sql`
4. `joins.sql`
5. `aggregation.sql`
6. `sub_query.sql`
7. `cte.sql`
8. `union.sql`
9. `window_function.sql`
10. `index.sql`

## Example Focus Areas

This repository helps users learn how to:

- create and modify database tables
- insert, update, and delete records
- fetch and filter data from relational tables
- combine data across tables using joins
- summarize records using aggregate functions
- structure queries using subqueries and CTEs
- analyze data with window functions
- improve query efficiency with indexes

## Notes

The SQL examples in this repository are primarily PostgreSQL-oriented and include features such as UUIDs, ENUM types, and functions like `gen_random_UUID()` and `CURRENT_DATE`. The examples are useful for learning SQL patterns and can be adapted to other relational database systems with minor syntax adjustments.

## Purpose

The goal of this project is to provide a clean and practical SQL revision resource for students, beginners, and anyone looking to strengthen their database and query-writing skills through hands-on examples.