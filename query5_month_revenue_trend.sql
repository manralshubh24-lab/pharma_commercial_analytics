SELECT 
    d.month_name,
    d.month,
    SUM(f.revenue_inr) AS total_revenue
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.month_name, d.month
ORDER BY d.month ASC;