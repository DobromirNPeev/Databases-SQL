/*9. Напишете заявка, която извежда средната цена на персоналните компютри за
всяка честота по-голяма от 800.*/

SELECT pc.speed,AVG(pc.price) AS avgprice
FROM pc
WHERE pc.speed > 800
GROUP BY pc.speed,pc.price