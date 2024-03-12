/*Напишете заявка, която извежда производител, модел и тип на продукт
за тези производители, за които съответният продукт не се продава
(няма го в таблиците PC, Laptop или Printer)*/

SELECT product.model,product.maker,product.type
FROM product LEFT JOIN pc ON product.model = pc.model
WHERE product.type ='PC' AND pc.code is null
UNION
SELECT product.model,product.maker,product.type
FROM product LEFT JOIN printer ON product.model = printer.model
WHERE product.type = 'Printer' AND printer.code is null
UNION
SELECT product.model,product.maker,product.type
FROM product LEFT JOIN laptop ON product.model = laptop.model
WHERE product.type = 'Laptop' AND laptop.code is null
