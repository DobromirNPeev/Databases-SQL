/*Задача 6. Намалете с 5% цената на онези персонални компютри, които имат производители,
такива че средната цена на продаваните от тях принтери е над 800.*/

UPDATE pc
SET pc.price=pc.price*0.95
WHERE pc.model IN (SELECT pc.model
       FROM pc
                JOIN product
                     ON product.model = pc.model
	   WHERE product.maker IN
	   (SELECT product.maker
	   FROM printer JOIN product ON printer.model=product.model
	   WHERE product.maker IN (SELECT product.maker
								FROM pc JOIN product ON pc.model=product.model)
	   GROUP BY product.maker
	   HAVING AVG(printer.price) > 800))