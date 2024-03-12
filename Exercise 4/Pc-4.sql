/*Намерете всички модели персонални компютри, които нямат регистриран
производител.*/

SELECT product.maker
FROM product right JOIN pc ON product.model = pc.model AND product.type = 'PC'
WHERE product.maker is null