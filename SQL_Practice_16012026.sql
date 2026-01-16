-- ================================
-- Create Claims Table
-- ================================
CREATE TABLE claims (
    claim_id INTEGER,
    product TEXT,
    customer_age INTEGER,
    claim_amount REAL,
    claim_status TEXT
);

-- ================================
-- Insert Sample Data
-- ================================
INSERT INTO claims VALUES (1, 'Health', 25, 1200, 'Approved');
INSERT INTO claims VALUES (2, 'Life', 40, 5000, 'Approved');
INSERT INTO claims VALUES (3, 'Health', 70, 3000, 'Rejected');
INSERT INTO claims VALUES (4, 'Car', 30, 1500, 'Approved');
INSERT INTO claims VALUES (5, 'Health', 60, 2000, 'Approved');
INSERT INTO claims VALUES (6, 'Car', 22, 800, 'Rejected');
INSERT INTO claims VALUES (7, 'Life', 55, 7000, 'Approved');
INSERT INTO claims VALUES (8, 'Health', 45, 1800, 'Approved');

-- ================================
-- View All Claims
-- ================================
SELECT * FROM claims;

-- ================================
-- Select Specific Columns
-- ================================
SELECT product, claim_amount FROM claims;

-- ================================
-- Filter Data (WHERE)
-- ================================
SELECT * 
FROM claims
WHERE product = 'Health';

-- ================================
-- Aggregations
-- ================================
SELECT COUNT(*) AS total_claims FROM claims;

SELECT SUM(claim_amount) AS total_claim_amount FROM claims;

SELECT AVG(claim_amount) AS average_claim_amount FROM claims;

-- ================================
-- Grouping and Analysis
-- ================================
SELECT product, COUNT(*) AS total_claims
FROM claims
GROUP BY product
ORDER BY total_claims DESC;

SELECT product, SUM(claim_amount) AS total_cost
FROM claims
GROUP BY product
ORDER BY total_cost DESC;

SELECT product, AVG(claim_amount) AS avg_claim
FROM claims
GROUP BY product;

SELECT customer_age, AVG(claim_amount) AS avg_claim_amount
FROM claims
GROUP BY customer_age
ORDER BY customer_age;

-- ================================
-- Create Customers Table
-- ================================
CREATE TABLE customers (
    customer_id INTEGER,
    name TEXT,
    age INTEGER
);

-- ================================
-- Insert Customers
-- ================================
INSERT INTO customers VALUES (1, 'John', 25);
INSERT INTO customers VALUES (2, 'Mary', 40);
INSERT INTO customers VALUES (3, 'Peter', 70);

-- ================================
-- Join Claims and Customers
-- ================================
SELECT customers.name, customers.age, claims.claim_amount
FROM customers
JOIN claims ON customers.age = claims.customer_age;
