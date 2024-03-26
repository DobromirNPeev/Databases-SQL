/*2. Напишете заявка, която извежда име и пол на всички актьори (мъже и жени),
чието име започва с 'J' и са родени след 1948 година. Резултатът да бъде
подреден по име в намаляващ ред.*/

SELECT MOVIESTAR.NAME,MOVIESTAR.GENDER
FROM MOVIESTAR
WHERE MOVIESTAR.NAME LIKE 'J%' AND MOVIESTAR.BIRTHDATE > 1948
ORDER BY MOVIESTAR.NAME DESC