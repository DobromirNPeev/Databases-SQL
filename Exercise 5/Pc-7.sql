/*7. Напишете заявка, която извежда производителите, които са произвели поне 3
различни персонални компютъра (с различен код).*/

SELECT product.maker,COUNT(pc.code) AS number_of_pcs
FROM pc JOIN product ON pc.model = product.model
GROUP BY product.maker
HAVING COUNT(pc.code) >= 3
