SELECT
    sub_category,
    ROUND(AVG(discount) * 100, 2) AS avg_discount_pct,
    ROUND(SUM(profit), 2)          AS total_profit
FROM orders
GROUP BY sub_category
ORDER BY avg_discount_pct DESC;
