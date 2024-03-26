/*1. Напишете заявка, която извежда заглавие и година на всички филми, които са
по-дълги от 120 минути и са снимани преди 2000 г. Ако дължината на филма е
неизвестна, заглавието и годината на този филм също да се изведат.*/

SELECT MOVIE.TITLE,MOVIE.YEAR,MOVIE.LENGTH
FROM MOVIE 
WHERE MOVIE.LENGTH > 120 AND MOVIE.YEAR < 2000 OR MOVIE.LENGTH IS NULL