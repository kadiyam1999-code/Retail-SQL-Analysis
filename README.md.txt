# Retail SQL Analysis Project

## 📌 Overview
This project analyzes retail transactions using SQL, CTE, and Window Functions.

## 🗂 Tables Used
### customers
- customer_id (PK)
- customer_name
- customer_city

### products
- product_id (PK)
- product_name
- category
- price

### transactions
- transaction_id (PK)
- customer_id (FK)
- product_id (FK)
- quantity
- sale_date

## 📊 ERD Structure
CUSTOMERS (1) → (∞) TRANSACTIONS  
PRODUCTS (1) → (∞) TRANSACTIONS

## 🧠 Key Queries
- Full Sales Report (JOIN)
- Monthly Revenue (CTE)
- Customer Ranking (RANK)
- Product Ranking (DENSE_RANK)

## 📈 Insights
- Electronics generate most revenue
- Nag & Surya are top spenders
- Revenue increases month-to-month
- Hyderabad & Mumbai contribute strong revenue

## 📁 Files
- retail_sql_project.sql
- advanced_queries.sql
- erd_diagram.png
- documentation.pdf
