# Superstore Sales & profitability analysis

📌Problem
  Analyzed 9,977 retail orders from a US-based superstore dataset to identify where the business was losing
  money and why, then built a live, interactive dashboard to communicate the findings.

📂Dataset
  Source: Superstore Sales Dataset (Kaggle)
  Size: ~9,800 rows, 21 columns
  Fields: Order details, customer info, product category, sales, profit, discount, region, ship 

🛠️ Tools Used:
  Excel: Pivot Tables, SUMIFS/COUNTIFS/AVERAGEIFS, INDEX/MATCH, structured Tables
  SQL: CTEs, window functions (RANK/PARTITION BY), CASE expressions, aggregation
  Power BI: Live MySQL connection, DAX measures, interactive slicers, KPI cards
  
🔎Process:
  • Excel: Cleaned raw data (removed 17 duplicate rows), converted to a structured Table, added a
    calculated Profit Margin column, and built pivot tables to explore profit by category, sub-category,
    discount level, and region.
  • SQL (MySQL): Loaded the cleaned dataset into a MySQL database and wrote queries ranging from
    grouped aggregations to a CTE with a window function (RANK() OVER PARTITION BY) to find the
    top-profit sub-category per region, and a CASE-based query to classify every order as Profitable /
    Breakeven / Loss.
  • Power BI: Connected live to the MySQL database and built an interactive dashboard with four charts,
    three KPI cards, and a region slicer, cross-validating every figure against the Excel and SQL results.
    
📊Key Findings:
  • 18.7% of all orders are unprofitable (1,869 of 9,977), concentrated almost entirely in the Tables
    (−$17.7K total profit) and Bookcases (−$3.5K) sub-categories.
  • Both loss-making sub-categories carry above-average discounts (26.1% and 21.1% vs. a 15.6%
    company-wide average) relative to their already-thin base margins — while other heavily discounted
    sub-categories like Binders (37.2%) and Machines (30.6%) remain profitable, showing the issue is
    discount depth combined with weak margin, not discounting alone.
  • Copiers is the strongest profit performer, ranking #1 by profit in 3 of the 4 sales regions despite modest
    sales volume — a strong margin signal.
  • The Central region converts sales to profit less efficiently (7.9% margin) than West (14.9%), despite
    West having far higher sales volume

📈Dashboard:
  
  <img width="596" height="337" alt="Screenshot 2026-07-31 175144" src="https://github.com/user-attachments/assets/cf90780d-11cf-4034-b48f-7f9e3db66a62" />




