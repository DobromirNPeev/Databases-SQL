/*8. Напишете заявка, която извежда заглавие и година на филма, и брой на
актьорите, участвали в този филм за тези филми с повече от двама актьори.*/

SELECT MOVIE.TITLE,MOVIE.YEAR,COUNT(STARSIN.STARNAME) AS num_of_actors
FROM MOVIE JOIN STARSIN ON MOVIE.TITLE=STARSIN.MOVIETITLE
GROUP BY MOVIE.TITLE,MOVIE.YEAR
HAVING COUNT(STARSIN.STARNAME) > 2