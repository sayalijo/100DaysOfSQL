SELECT w.name AS Warehouse_Name, SUM(w.units* p.width * p.length * p.height) AS volume
FROM warehouse w, products p
WHERE p.product_id = w.product_id
GROUP BY w.name
ORDER BY w.name;