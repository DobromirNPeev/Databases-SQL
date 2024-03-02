--Напишете заявка, която извежда имената на актьорите, които са мъже
--или живеят на Prefect Rd.

SELECT NAME
FROM MOVIESTAR
WHERE GENDER = 'M'OR ADDRESS = 'Prefect Rd.'