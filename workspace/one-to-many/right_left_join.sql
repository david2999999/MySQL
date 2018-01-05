SELECT * FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT * FROM orders
RIGHT JOIN customers
    ON customers.id = orders.customer_id;   
    
SELECT * FROM orders
LEFT JOIN customers
    ON customers.id = orders.customer_id;   
    
SELECT * FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id;