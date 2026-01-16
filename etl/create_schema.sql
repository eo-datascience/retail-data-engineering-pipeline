-- =========================
-- FACT TABLE
-- =========================
CREATE TABLE IF NOT EXISTS fact_orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    InvoiceNo TEXT NOT NULL,
    InvoiceDate TEXT NOT NULL,
    CustomerID INTEGER,
    StockCode TEXT NOT NULL,
    Quantity INTEGER NOT NULL,
    UnitPrice REAL NOT NULL,
    TotalAmount REAL NOT NULL,
    Country TEXT NOT NULL
);

-- =========================
-- DIMENSION: CUSTOMERS
-- =========================
CREATE TABLE IF NOT EXISTS dim_customers (
    customer_id INTEGER PRIMARY KEY,
    country TEXT
);

-- =========================
-- DIMENSION: PRODUCTS
-- =========================
CREATE TABLE IF NOT EXISTS dim_products (
    stock_code TEXT PRIMARY KEY,
    description TEXT,
    unit_price REAL
);

-- =========================
-- DIMENSION: DATE
-- =========================
CREATE TABLE IF NOT EXISTS dim_date (
    date_id INTEGER PRIMARY KEY AUTOINCREMENT,
    date TEXT UNIQUE,
    year INTEGER,
    month INTEGER,
    month_name TEXT,
    quarter INTEGER,
    year_month TEXT
);