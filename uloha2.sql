--uloha2
SELECT  orders.order_id, customers.customer_name, orders.sales FROM  orders
JOIN  customers ON orders.customer_id = customers.customer_id WHERE orders.sales > 500 ORDER BY  orders.sales DESC;
--uloha3
SELECT orders.order_id, customers.customer_name, products.category,  orders.sales
FROM  orders JOIN  customers ON orders.customer_id = customers.customer_id
JOIN  products ON orders.product_id = products.product_id;
--uloha4
SELECT customers.region, SUM(orders.sales) AS celkova_hodnota_predaja
FROM customers LEFT JOIN  orders ON customers.customer_id = orders.customer_id
GROUP BY customers.region;
--uloha5
SELECT products.product_name, SUM(orders.sales) AS celkova_hodnota_predaja
FROM products LEFT JOIN orders ON products.product_id = orders.product_id
GROUP BY products.product_name;