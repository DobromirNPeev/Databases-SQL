--Напишете заявка, която извежда имената на корабите, пуснати на вода
--преди 1918. Задайте псевдоним shipName на колоната.

SELECT NAME as shipName
FROM SHIPS
WHERE LAUNCHED < 1918