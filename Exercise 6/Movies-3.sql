/*3. Напишете заявка, която извежда име на студио и брой на актьорите,
участвали във филми, които са създадени от това студио.*/

SELECT MOVIE.STUDIONAME,COUNT(DISTINCT STARSIN.STARNAME) AS num_of_stars
FROM STARSIN JOIN MOVIE ON STARSIN.MOVIETITLE = MOVIE.TITLE
GROUP BY MOVIE.STUDIONAME