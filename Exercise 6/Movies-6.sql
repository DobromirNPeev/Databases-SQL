﻿/*6. Напишете заявка, която извежда името на най-младия актьор (мъж).*/

SELECT MOVIESTAR.NAME
FROM MOVIESTAR
WHERE MOVIESTAR.GENDER = 'M' AND MOVIESTAR.BIRTHDATE >= ALL (SELECT M.BIRTHDATE FROM MOVIESTAR AS M WHERE M.GENDER ='M') 