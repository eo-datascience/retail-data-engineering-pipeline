# End-to-End REtail Data Engineering Pipeline

## Overview

This project demonstrates an end-to-end data engineering workflow using a real-world online retail dataset.
The goal is to take raw transactional data, clean and validate it, model it into structured tables, load it into a relational database, and run analytical queries efficiently.

The project focuses on data reliability, structure, and performance, not machine learning.

## Dataset
- Source: Online Retail Dataset (UK-based e-commerce transactions)
- Period: 2010 – 2011
- Records: ~500,000 transactions
- Key fields: InvoiceNo, InvoiceDate, CustomerID, StockCode, Quantity, UnitPrice, Country

## Project Architecture

```t
Retail_Data_Engineering/
│
├── data/                    # Raw dataset
│
├── notebooks/               # Exploration, cleaning, and analysis notebooks
│   └── retail_pipeline.ipynb
│
├── etl/                     # ETL and database scripts
│   ├── create_database.py
│   ├── create_schema.sql
│   ├── run_schema.py
│   └── check_tables.py
│
├── retail.db                # SQLite database
├── requirements.txt
└── README.md
```

## What Was Done

1. Data Ingestion
 • Loaded raw CSV data into Pandas
 • Inspected schema, data types, and missing values


2. Data Cleaning & Validation
 • Removed cancelled transactions
 • Removed negative quantities and prices
 • Converted date fields to proper datetime format
 • Validated data quality using assert checks


3. Data Modelling
 • Designed relational tables:
 • customers
 • products
 • orders
 • sales_summary
 • Created derived metrics such as total revenue per invoice


4. Database Implementation
 • Implemented schema in SQLite
 • Loaded cleaned data into database tables
 • Created indexes on frequently queried columns:
 • InvoiceNo
 • CustomerID
 • InvoiceDate


5. Analytical Queries
 • Monthly revenue trends
 • Top countries by revenue
 • Top customers by revenue
 • All queries executed using SQL and visualized in Python


## Key Engineering Concepts Demonstrated
- Data validation with assertions
- Relational data modelling
- SQL aggregation and grouping
- Indexing for query performance
- SQLite as a lightweight analytical database
- SQL + Python integration

## Tools and Libraries
- Python
- Pandas
- SQLite
- SQL
- Matplotlib

## How to Run
 1. Install dependencies:

pip install -r requirements.txt

 2. Run notebooks:

 - retail_ppipeline.ipynb


## Outcome
The final database supports fast analytical queries on cleaned, well-structured retail data and demonstrates practical data engineering fundamentals applicable to real production pipelines.
