--Напишете заявка, която извежда имената на актьорите, участвали във филми от
--1995, продуцирани от студио MGM.

SELECT STARNAME
FROM STARSIN JOIN MOVIE 
ON MOVIETITLE = TITLE
WHERE MOVIEYEAR = 1995 AND STUDIONAME = 'MGM'