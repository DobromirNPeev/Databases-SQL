/*3. Един модел компютри може да се предлага в няколко разновидности с
различна цена. Да се изведат тези модели компютри, чиято средна цена (на
различните му разновидности) е по-ниска от най-евтиния лаптоп, произвеждан
от същия производител.*/

SELECT DISTINCT pc.model,AVG(pc.price) AS avg_price
FROM pc JOIN product ON pc.model = product.model
GROUP BY pc.model,product.maker
HAVING AVG(pc.price) < (SELECT MIN(laptop.price) FROM laptop JOIN product AS p1 ON laptop.model =p1.model WHERE product.maker=p1.maker)