/*4. Напишете заявка, която за всеки актьор извежда име на актьора и броя на
филмите, в които актьорът е участвал.*/

SELECT MOVIESTAR.NAME, COUNT(STARSIN.MOVIETITLE) as num_of_movies
FROM MOVIESTAR lEFT JOIN STARSIN ON STARSIN.STARNAME = MOVIESTAR.NAME
GROUP BY MOVIESTAR.NAME