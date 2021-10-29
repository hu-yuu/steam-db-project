use steam
--RPGLovers grubunun adý RolePlayLovers yapýlýyor
UPDATE Groups
SET name = 'RolePlayLovers'
WHERE name = 'RPGLovers'
-- mail adresi mustafacandan211@gmail.com olan kullanýcý adýný canklot yapýyor
UPDATE Users
SET name = 'canklot'
WHERE email = 'mustafacandan211@gmail.com'
--mail adresi mustafacandan211@gmail.com olan kullanýcý  telefon numarasýný deðiþtiriyor
UPDATE Users
SET phone = '05052104848'
WHERE email = 'mustafacandan211@gmail.com'

-- Respawn adlý devoloper ismini Respawn entertainment olarak deðiþtiriyor
UPDATE Developers
SET name = 'Respawn entertainment'
WHERE name = 'Respawn'
-- Sýerra adlý devoloper ismini Valve olarak deðiþtiriyor
UPDATE Publishers
SET name = 'Valve'
WHERE name = 'Sýerra'
-- 3 Numaralý kullanýcýnýn 4 numaralý oyundan 2018-05-05 tarihinde düþürdüðü item satýþa koyuluyor
UPDATE Useritems
SET itemstatus = 1
WHERE userid = 3 and gameitemid=4 and buydate='2018-05-05'
--Maraþ þehrinin adý kahraman maraþ oluyor
UPDATE Adress
SET name = 'Kahramanmaraþ'
WHERE name = 'Maraþ'
--Witcher 3 oyununun fiyatý 20 lira oluyor
UPDATE Games
SET price = 20
WHERE name = 'Witcher 3'