-- create teh database (if it doesn't already exist)
CREATE DATABASE sample_db;

-- use the database
\c sample_db;

-- create the table
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    age INTEGER NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- add a constraint for email format
ALTER TABLE customers ADD CONSTRAINT email_format_check CHECK (email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$');
