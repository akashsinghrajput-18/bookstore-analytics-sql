# 📚 Bookstore Analytics using SQL (MySQL)

## Project Overview
This project demonstrates how SQL can be used to analyze a retail bookstore’s data and extract meaningful business insights.

The focus of this project is **practical SQL-based data analysis**, not theory.

As a fresher, this project helped me:
- Work with a **relational database**
- Write **clean and structured SQL queries**
- Solve **real-world business problems** using SQL

The project is implemented using **MySQL** and executed in **MySQL Workbench**.

---

## Tools & Technologies
- **Database:** MySQL  
- **Language:** SQL  
- **Environment:** MySQL Workbench  

---

## Database Schema
The database consists of **four tables** connected using primary and foreign keys.

### 1. Books
Stores book-level information and inventory.
- `book_id` (Primary Key)
- `title`
- `genre`
- `price`
- `stock`

### 2. Customers
Stores customer details.
- `customer_id` (Primary Key)
- `name`
- `city`
- `signup_date`

### 3. Orders
Stores purchase transactions.
- `order_id` (Primary Key)
- `customer_id` (Foreign Key)
- `book_id` (Foreign Key)
- `quantity`
- `order_date`

### 4. MarketingSpend
Stores customer acquisition cost.
- `spend_id` (Primary Key)
- `customer_id` (Foreign Key)
- `spend_amount`

---

## Project Structure
```text
bookstore-analytics/
│
├── 01_schema.sql              # Database schema (tables & relationships)
├── 02_data.sql                # Sample data insertion
├── 03_sales_analysis.sql      # Revenue and best-selling books
├── 04_customer_analysis.sql   # RFM and churn analysis
├── 05_marketing_analysis.sql  # Marketing ROI analysis
├── 06_inventory_analysis.sql  # Low stock alerts
├── 07_books_together.sql      # Books frequently bought together
└── README.md


##Key Analyses Performed

1.Identified best-selling books based on total revenue
2.Calculated average order value (AOV)
3.Found repeat customers using order frequency
4.Detected churned customers based on last purchase date
5.Performed RFM analysis (Recency, Frequency, Monetary)
6.Evaluated marketing ROI by comparing revenue vs acquisition cost
7.Identified low-stock books for inventory planning
8.Analyzed books frequently bought together
9.Tracked monthly revenue trends

##How to Run the Project

1.Open MySQL Workbench
2.Execute 01_schema.sql to create tables
3.Execute 02_data.sql to insert sample data
4.Run analysis files (03 to 07) individually to view results

Conclusion:
This project shows how SQL can be used to transform raw transactional data into actionable business insights.
It reflects my ability as a fresher to work with real datasets, write analytical queries, and think from a business perspective.
