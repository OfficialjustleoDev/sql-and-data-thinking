# Python for Data Science – Day 2: SQL + Data Thinking

## 📌 Description  
Built a practical SQL dataset using SQLite to simulate insurance claims data and practiced core SQL queries to extract insights. This project focuses on developing data thinking skills by translating real-world business questions into SQL queries.

## 🛠️ Technologies Used  
- SQLite  
- SQL (SELECT, WHERE, GROUP BY, COUNT, SUM, AVG, JOIN)  
- Windows PowerShell  
- SQLite CLI

## ⚙️ Features  
- Creates and populates a `claims` table with realistic insurance data  
- Performs filtering using `WHERE`  
- Aggregates data using `COUNT`, `SUM`, and `AVG`  
- Groups data by product and customer age  
- Sorts results using `ORDER BY`  
- Creates and joins a `customers` table to demonstrate `JOIN` operations  

## 🧱 Database Setup

```sql
CREATE TABLE claims (
    claim_id INTEGER,
    product TEXT,
    customer_age INTEGER,
    claim_amount REAL,
    claim_status TEXT
);

INSERT INTO claims VALUES (1, 'Health', 25, 1200, 'Approved');
INSERT INTO claims VALUES (2, 'Life', 40, 5000, 'Approved');
INSERT INTO claims VALUES (3, 'Health', 70, 3000, 'Rejected');
INSERT INTO claims VALUES (4, 'Car', 30, 1500, 'Approved');
INSERT INTO claims VALUES (5, 'Health', 60, 2000, 'Approved');
INSERT INTO claims VALUES (6, 'Car', 22, 800, 'Rejected');
INSERT INTO claims VALUES (7, 'Life', 55, 7000, 'Approved');
INSERT INTO claims VALUES (8, 'Health', 45, 1800, 'Approved');
