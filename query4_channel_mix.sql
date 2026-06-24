SELECT 
    c.channel_name,
    SUM(f.revenue_inr) AS total_revenue
FROM fact_sales f
JOIN dim_channel c ON f.channel_id = c.channel_id
GROUP BY c.channel_name
ORDER BY total_revenue DESC;