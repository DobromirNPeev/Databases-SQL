--Напишете заявка, която извежда имената на продуцентите с нетни активи поголеми от тези на Stephen Spielberg.

SELECT MOVIEEXEC.NAME
FROM MOVIEEXEC,MOVIEEXEC AS m
WHERE MOVIEEXEC.NETWORTH > m.NETWORTH AND m.NAME = 'Stephen Spielberg'