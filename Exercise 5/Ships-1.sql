/*1. Напишете заявка, която извежда броя на класовете бойни кораби*/

SELECT COUNT(*) AS bbcount
FROM CLASSES
WHERE CLASSES.TYPE = 'bb'