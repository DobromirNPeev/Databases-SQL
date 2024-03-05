--Напишете заявка, която извежда лаптопите, чиято честота е по-ниска от
--честотата на всички персонални компютри.

SELECT *
FROM laptop
WHERE laptop.speed < ALL ( SELECT pc.speed
							FROM pc)