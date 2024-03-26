/*5. Напишете заявка, която извежда име на битките, които са по-мащабни (с
повече участващи страни) от битката при Surigao Strait*/

SELECT OUTCOMES.BATTLE
FROM OUTCOMES
GROUP BY OUTCOMES.BATTLE
HAVING COUNT(OUTCOMES.SHIP) > (SELECT COUNT(OUTCOMES.SHIP) FROM OUTCOMES WHERE OUTCOMES.BATTLE='Surigao Strait')