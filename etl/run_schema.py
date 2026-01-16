import sqlite3

conn = sqlite3.connect("retail.db")

with open("etl/create_schema.sql", "r") as f:
    schema = f.read()

conn.executescript(schema)
conn.close()