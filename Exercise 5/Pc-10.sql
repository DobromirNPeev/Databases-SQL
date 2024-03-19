/*10. Напишете заявка, която извежда средния размер на диска на тези персонални
компютри, произведени от производители, които произвеждат и принтери.
Резултатът да се изведе за всеки отделен производител.*/

SELECT makers.maker,AVG(pc.hd) as avghd
FROM pc JOIN product ON product.model = pc.model JOIN (SELECT product.maker
														FROM pc JOIN product ON pc.model = product.model
														INTERSECT
														SELECT product.maker
														FROM printer JOIN product ON printer.model = product.model) as makers ON product.maker = makers.maker
GROUP BY makers.maker