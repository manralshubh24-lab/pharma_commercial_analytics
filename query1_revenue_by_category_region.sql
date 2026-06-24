SELECT 
    p.category,
    g.region,
    SUM(f.revenue_inr) AS total_revenue,
    SUM(f.target_revenue) AS total_target,
    ROUND(SUM(f.revenue_inr)/SUM(f.target_revenue)*100, 2) AS achievement_pct
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
JOIN dim_geography g ON f.geo_id = g.geo_id
GROUP BY p.category, g.region
ORDER BY total_revenue DESC