/*Задача 7. Намерете за всеки размер на твърд диск на персонален компютър между 10 и 30 GB, найниската цена за съответния размер..*/

SELECT pc.hd,MIN(pc.price) as min_price
FROM pc JOIN pc as pc1 ON pc.code=pc1.code
WHERE pc.hd>=10 AND pc.hd<=30
GROUP BY pc.hd
