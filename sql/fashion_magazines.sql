SELECT  customers.customer_name, PRINTF('$%.2f', SUM((subscriptions.subscription_length * subscriptions.price_per_month))) AS 'Amount Due'
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id
JOIN subscriptions 
	ON subscriptions.subscription_id = orders.subscription_id
WHERE description = "Fashion Magazine" AND order_status = "unpaid"
GROUP BY customers.customer_name;