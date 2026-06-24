SELECT 
    d.product_name,
    f.days_of_supply,
    f.stock_units
FROM fact_inventory f
JOIN dim_product d ON f.product_id = d.product_id
WHERE f.days_of_supply < 7
ORDER BY f.days_of_supply ASC;