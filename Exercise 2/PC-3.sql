--Напишете заявка, която извежда производителите, които произвеждат лаптопи,
--но не произвеждат персонални компютри.

SELECT maker
FROM product
WHERE type = 'laptop'
EXCEPT
SELECT maker
FROM product
WHERE type = 'pc'