
-- Northstar Retail | 2025 Sales Analysis
-- Verify total transactions, revenue, profit and margin

SELECT
    COUNT(*) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(clean_profit), 2) AS total_profit,
    ROUND(
        100.0 * SUM(clean_profit) / SUM(revenue),
        2
    ) AS profit_margin_pct
FROM sales;
