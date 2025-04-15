import pandas as pd
import sqlite3

# Load CSV
df = pd.read_csv("supply_chain_data.csv")

# Connect to SQLite
conn = sqlite3.connect("supply_chain.db")

# Load data into SQL table
df.to_sql("supply_chain", conn, if_exists="replace", index=False)

# Close connection
conn.close()

print("✅ Data imported successfully into SQLite.")
