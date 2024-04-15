/*7. Производител А купува производител B. На всички продукти на В променете производителя да
бъде А.*/

UPDATE product
SET product.maker='A'
WHERE product.maker='B'