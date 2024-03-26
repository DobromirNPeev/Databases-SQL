/*4. Напишете заявка, която извежда за всеки компютър код на продукта,
производител и брой компютри, които имат цена, по-голяма или равна на
неговата.*/

SELECT pc.code,product.maker,(SELECT COUNT(*) FROM pc AS pc1 WHERE pc.price <= pc1.price AND pc.code!=pc1.code),pc.price
FROM pc JOIN product ON pc.model = product.model