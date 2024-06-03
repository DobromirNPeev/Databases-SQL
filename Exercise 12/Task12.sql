/*Задача 12. Намерете всяка страна в колко битки е участвала.
Забележка: Ако страната не е участвала в нито една битка (защото (а) няма кораби или (б) има
кораби, но те не са участвали в битка), то трябва да се покаже в резултата с брой кораби 0.*/

SELECT CLASSES.COUNTRY,COUNT(OUTCOMES.BATTLE)
FROM OUTCOMES RIGHT JOIN SHIPS ON OUTCOMES.SHIP=SHIPS.NAME RIGHT JOIN CLASSES ON CLASSES.CLASS=SHIPS.CLASS
GROUP BY CLASSES.COUNTRY