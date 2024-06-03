/*Задача 2. Напишете заявка, която извежда id и описание на продукт, както и колко пъти е бил поръчан,
само за тези продукти, които са били поръчвани.*/

SELECT DISTINCT Product.Product_ID,Product.Product_Description,SUM(Order_line.Ordered_Quantity) as ordered_times
FROM Product JOIN Order_line ON Product.Product_ID=Order_line.Product_ID
WHERE Order_line.Order_ID IS NOT NULL
GROUP BY Product.Product_ID,Product.Product_Description

