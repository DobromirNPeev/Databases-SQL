--Напишете заявка, която извежда производителите на персонални
--компютри с честота над 500.

SELECT DISTINCT product.maker
FROM product,(SELECT pc.model
					FROM pc
					WHERE pc.speed > 500) as pcmodel
WHERE product.model = pcmodel.model
