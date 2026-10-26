📌 Project Overview

The goal of this project is to understand sales performance, identify top-performing products, compare store performance, evaluate customer purchasing patterns, and monitor revenue and profitability.

The Power BI report contains four interactive dashboard pages:

🏠 Home: Overall business performance and key performance indicators.

📈 Sales Analysis: Revenue trends, order patterns, payment methods, and sales channels.

🍔 Product Analysis: Product performance, category comparisons, sales volume, and profitability.

🏪 Store Analysis: Store-level revenue, regional comparisons, and store-type performance.

🛠️ Tools & Technologies
Tool	Purpose
Python	Data loading, cleaning, and preparation
Pandas	Data manipulation and quality checks
MySQL	Database creation, relational modeling, and SQL analysis
SQL	Business queries, aggregations, joins, and trend analysis
Power BI	Interactive dashboards and data visualization
DAX	KPI calculations, profit measures, and month-over-month growth
🔄 Project Workflow
1. Data Cleaning and Preparation — Python
Imported datasets using Pandas.
Inspected data types and missing values.
Checked duplicate records and data consistency.
Prepared clean datasets for database loading.
Validated key fields and date columns.
2. Database Development — MySQL
Created a relational database for the project.
Organized sales, products, customers, stores, and offers into tables.
Defined primary and foreign key relationships where appropriate.
Wrote SQL queries to analyze revenue, orders, product performance, and store performance.
3. Data Modeling — Power BI
Connected the cleaned data to Power BI.
Established relationships between fact and dimension tables.
Created a Calendar table for time-based analysis.
Developed DAX measures for business KPIs.
4. Interactive Dashboard Development — Power BI

Built four dashboard pages with interactive visuals, KPI cards, and slicers.

📊 Key Business Metrics

The report focuses on metrics such as:

Total Revenue
Total Orders
Revenue Growth Percentage
Total Customers
Total Quantity Sold
Gross Profit
Average Order Value
Revenue by Product Category
Revenue by Region and Store
Top-Performing Products

Metrics are calculated from the available dataset. Revenue and profit definitions depend on the pricing, cost, and discount assumptions used in the model.

📈 Key Questions Explored
How does revenue change from month to month?
Which product categories contribute the most revenue?
Which products generate the highest sales?
Which regions and stores perform best?
What payment methods and ordering channels do customers use?
How does performance differ across store types?
How do revenue and profit change over time?
📁 Repository Structure

A suggested structure for organizing the project files:

McDonalds-Business-Analytics-2026/

│
├── data/
│   ├── raw/
│   └── cleaned/
│

├── python/
│   └── data_cleaning.ipynb
│
├── sql/
│   ├── create_tables.sql
│   └── business_analysis_queries.sql
│

├── powerbi/
│   └── McDonalds_Business_Analytics.pbix
│

├── screenshots/
│   ├── home_dashboard.png
│   ├── sales_analysis.png
│   ├── product_analysis.png
│   └── store_analysis.png
│

└── README.md

This is a suggested structure. Include only files and folders that exist in your repository.

💡 Skills Demonstrated
Data cleaning and preprocessing
Exploratory data analysis
Relational database design
SQL querying and aggregation
Data modeling and relationships
DAX measures and KPI development
Interactive dashboard design
Business performance analysis
Data storytelling and visualization
🚀 Project Outcome

This project demonstrates an end-to-end analytics workflow, from raw data preparation to interactive business reporting. It showcases how Python, SQL, and Power BI can be combined to support data-driven decision-making.



Your Name

Data Analytics Project | Python • MySQL • Power BI
