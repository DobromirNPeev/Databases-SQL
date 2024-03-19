/*4. Напишете заявка, която извежда средната цена на персоналните компютри,
произведени от производител ‘A’.*/

SELECT AVG(pc.price) as avgprice
FROM pc JOIN product ON pc.model = product.model
WHERE product.maker = 'A'