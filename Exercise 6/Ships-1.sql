/*1. Напишете заявка, която извежда имената на всички кораби без повторения,
които са участвали в поне една битка и чиито имена започват с C или K.*/

SELECT DISTINCT SHIPS.NAME
FROM SHIPS JOIN OUTCOMES ON SHIPS.NAME = OUTCOMES.SHIP
WHERE SHIPS.NAME LIKE 'C%' OR SHIPS.NAME LIKE 'K%'