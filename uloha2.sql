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
--uloha6
SELECT customers.customer_name, orders.order_id, orders.sales
FROM customers FULL OUTER JOIN orders ON customers.customer_id = orders.customer_id;
--ulôha7
SELECT customers.region, SUM(orders.sales) AS celkova_hodnota_predaja
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.region;
--uloha8
SELECT customers.customer_name, COUNT(orders.order_id) AS pocet_objednavok
FROM customers LEFT JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_name;
--uloha9
SELECT products.category, AVG(orders.discount) AS priemerna_zlava FROM products JOIN orders ON products.product_id = orders.product_id GROUP BY products.category;
--uloha10
SELECT customers.customer_name, SUM(orders.sales) AS celkova_hodnota_nakupov FROM customers JOIN orders ON customers.customer_id = orders.customer_id GROUP BY customers.customer_name HAVING SUM(orders.sales) > 2000;
--uloha11
SELECT customers.region, SUM(orders.sales) AS celkova_hodnota_predaja, AVG(orders.discount) AS priemerna_zlava, COUNT(orders.order_id) AS pocet_objednavok FROM customers JOIN orders ON customers.customer_id = orders.customer_id GROUP BY customers.region;
--uloha12
SELECT customers.region, SUM(CASE WHEN orders.sales > 1000 THEN 1 ELSE 0 END) AS pocet_high_value, SUM(CASE WHEN orders.sales <= 1000 THEN 1 ELSE 0 END) AS pocet_low_value FROM customers JOIN orders ON customers.customer_id = orders.customer_id GROUP BY customers.region;
--uloha13