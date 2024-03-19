/*3. Напишете заявка, която извежда средната честота на лаптопите с цена над 1000*/

SELECT AVG(laptop.speed)
FROM laptop
WHERE laptop.price > 1000