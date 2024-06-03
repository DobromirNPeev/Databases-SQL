/*Задача 4. Напишете заявка, която извежда име на клиента и обща стойност на направените от него
поръчки, само за клиентите с поръчки.*/

SELECT Customer.Customer_Name,SUM(Product.Standard_Price) as sum_orders
FROM Customer JOIN Order_t ON Customer.Customer_ID=Order_t.Customer_ID JOIN Order_line ON Order_t.Order_ID=Order_line.Order_ID JOIN Product ON Product.Product_ID=Order_line.Product_ID
GROUP BY Customer.Customer_Name