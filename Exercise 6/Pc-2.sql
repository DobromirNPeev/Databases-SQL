/*2. Да се изведат различните модели компютри, чиято цена е по-ниска от най-евтиния лаптоп, произвеждан от същия производител.*/

SELECT DISTINCT pc.model
FROM pc JOIN product ON pc.model = product.model
WHERE pc.price < (SELECT MIN(laptop.price) FROM laptop JOIN product AS p1 ON laptop.model =p1.model WHERE product.maker=p1.maker)

