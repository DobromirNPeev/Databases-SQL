--Напишете заявка, която извежда имената на актьорите мъже, участвали във
--филма The Usual Suspects.

SELECT NAME
FROM STARSIN JOIN MOVIESTAR
ON MOVIESTAR.name = STARSIN.STARNAME
WHERE MOVIETITLE = 'The Usual Suspects' AND GENDER = 'M'