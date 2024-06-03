/*Задача 3. Напишете заявка, която извежда id и описание на продукт, както и поръчано количество, за
всички продукти.*/

SELECT DISTINCT Product.Product_ID,Product.Product_Description,COUNT(Order_line.Ordered_Quantity) as ordered_times
FROM Product LEFT JOIN Order_line ON Product.Product_ID=Order_line.Product_ID
GROUP BY Product.Product_ID,Product.Product_Description
