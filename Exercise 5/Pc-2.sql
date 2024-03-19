/*2. Напишете заявка, която извежда средния размер на екраните на лаптопите за
всеки производител.*/

SELECT product.maker,AVG(laptop.screen) as avgscreen
FROM laptop JOIN product ON laptop.model = product.model
GROUP BY product.maker