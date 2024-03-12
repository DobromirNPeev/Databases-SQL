/*Намерете всички производители, които правят както лаптопи, така и
принтери.*/

SELECT product.maker
FROM product JOIN laptop ON product.model = laptop.model
INTERSECT
SELECT product.maker
FROM product JOIN printer ON product.model = printer.model
