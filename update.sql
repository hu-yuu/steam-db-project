use steam
--RPGLovers grubunun ad� RolePlayLovers yap�l�yor
UPDATE Groups
SET name = 'RolePlayLovers'
WHERE name = 'RPGLovers'
-- mail adresi mustafacandan211@gmail.com olan kullan�c� ad�n� canklot yap�yor
UPDATE Users
SET name = 'canklot'
WHERE email = 'mustafacandan211@gmail.com'
--mail adresi mustafacandan211@gmail.com olan kullan�c�  telefon numaras�n� de�i�tiriyor
UPDATE Users
SET phone = '05052104848'
WHERE email = 'mustafacandan211@gmail.com'

-- Respawn adl� devoloper ismini Respawn entertainment olarak de�i�tiriyor
UPDATE Developers
SET name = 'Respawn entertainment'
WHERE name = 'Respawn'
-- S�erra adl� devoloper ismini Valve olarak de�i�tiriyor
UPDATE Publishers
SET name = 'Valve'
WHERE name = 'S�erra'
-- 3 Numaral� kullan�c�n�n 4 numaral� oyundan 2018-05-05 tarihinde d���rd��� item sat��a koyuluyor
UPDATE Useritems
SET itemstatus = 1
WHERE userid = 3 and gameitemid=4 and buydate='2018-05-05'
--Mara� �ehrinin ad� kahraman mara� oluyor
UPDATE Adress
SET name = 'Kahramanmara�'
WHERE name = 'Mara�'
--Witcher 3 oyununun fiyat� 20 lira oluyor
UPDATE Games
SET price = 20
WHERE name = 'Witcher 3'