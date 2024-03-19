/*8. Напишете заявка, която извежда производителите с най-висока цена на
персонален компютър.*/

SELECT product.maker,pc.price
FROM pc JOIN product ON pc.model = product.model
WHERE pc.price >= ALL(SELECT pc.price
					 FROM pc)