SELECT orders.order_id, customers.customer_name, products.category,  orders.sales
FROM  orders JOIN  customers ON orders.customer_id = customers.customer_id
JOIN  products ON orders.product_id = products.product_id;