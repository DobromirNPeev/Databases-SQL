--Напишете заявка, която извежда двойките модели на персонални компютри,
--които имат еднаква честота и памет. Двойките трябва да се показват само по
--веднъж, например само (i, j), но не и (j, i).

SELECT DISTINCT pc.model,p.model
FROM pc JOIN pc AS p
ON pc.model < p.model
WHERE pc.speed = p.speed AND pc.ram = p.ram