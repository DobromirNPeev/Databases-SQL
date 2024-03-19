/*4. Напишете заявка, която извежда за всеки клас първата и последната година, в
която кораб от съответния клас е пуснат на вода.*/

SELECT CLASSES.CLASS,MIN(SHIPS.LAUNCHED) AS First_year,MAX(SHIPS.LAUNCHED) AS Last_year
FROM CLASSES JOIN SHIPS ON CLASSES.CLASS = SHIPS.CLASS
GROUP BY CLASSES.CLASS