/*5. Напишете заявка, която извежда средната цена на персоналните компютри и
лаптопите за производител ‘B’.*/

SELECT AVG(price)
FROM (SELECT laptop.price
		FROM laptop JOIN product ON laptop.model = product.model
		WHERE product.maker = 'B'
		UNION ALL
		SELECT pc.price
		FROM pc JOIN product ON pc.model = product.model
		WHERE product.maker = 'B') AS price
