/*6. Напишете заявка, която извежда средната цена на персоналните компютри
според различните им честоти*/

SELECT speed,AVG(pc.price) AS avgprice
FROM pc
GROUP BY pc.speed
