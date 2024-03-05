--Напишете заявка, която извежда производителите на тези персонални
--компютри с най-малко RAM памет, които имат най-бързи процесори.

SELECT product.makerFROM product JOIN  pc ON product.model = pc.modelWHERE pc.ram <= ALL (SELECT p.ram					FROM pc AS p)UNIONSELECT product.makerFROM product JOIN  pc ON product.model = pc.modelWHERE pc.speed >= ALL (SELECT p.speed						FROM pc AS p)