/*9. За всеки лаптоп от производител B добавете по един инч към диагонала на екрана.*/

UPDATE laptop
SET laptop.screen=laptop.screen+1
WHERE laptop.model IN (SELECT laptop.model
						FROM laptop JOIN product ON laptop.model=product.model
						WHERE product.maker = 'B');