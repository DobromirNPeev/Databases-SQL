--Напишете заявка, която извежда имената на тези държави, които имат както
--бойни кораби, така и бойни крайцери.

SELECT DISTINCT CLASSES.COUNTRY
FROM CLASSES JOIN CLASSES AS CL ON CLASSES.COUNTRY = CL.COUNTRY
WHERE (CLASSES.TYPE = 'bb' AND CL.TYPE = 'bc') OR (CLASSES.TYPE = 'bc' AND CL.TYPE = 'bb')