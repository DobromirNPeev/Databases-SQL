/*8. Да се намали наполовина цената на всеки компютър и да се добавят по 20 GB към всеки твърд
диск.*/

SELECT *
FROM pc

UPDATE pc
SET pc.price=pc.price/2,pc.hd=pc.hd+20

SELECT *
FROM pc