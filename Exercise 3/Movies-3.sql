--Напишете заявка, която извежда имената на всички филми с дължина,
--по-голяма от дължината на филма ‘Star Wars’

SELECT MOVIE.TITLE
FROM MOVIE
WHERE MOVIE.LENGTH > ANY (SELECT MOVIE.LENGTH
						FROM MOVIE
						WHERE MOVIE.TITLE = 'Star wars')