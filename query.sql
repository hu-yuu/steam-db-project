use steam;
--Dropbox sorgusu 1
--CS:GO oyunu için en 5 item alan ya da satan kullanýcýlarýn toplam 2018 yýlý CS:GO item satýþ ve alýþ tutarlarý
select sum(buyprice+sellprice) as toplam ,sum(buyprice) as alistop,sum(sellprice) as satistop 
from Useritems INNER JOIN Items ON Items.id= Useritems.gameitemid INNER JOIN Games ON Games.id = Items.game  
where userid IN (select userid 
from Useritems INNER JOIN Items ON Items.id= Useritems.gameitemid INNER JOIN Games ON Games.id = Items.game
Where buyprice>0 or sellprice>0  AND Games.name ='CS:GO'
group by userid 
having count(userid)>5) and useritems.buydate>'2018.01.01' and useritems.buydate< '2019.01.01' AND Games.name ='CS:GO'

--Dropbox sorgusu 2
--Kütüphanesinde hiç futbol kategorisinde oyun olmayan kullanýcýlarýn en çok oyuna sahip olduklarý 3 kategori ism
SELECT TOP 3 Genre.name
FROM Users INNER JOIN Buy ON Users.id= Buy.userid INNER JOIN Games ON Games.id =Buy.gameid INNER JOIN GenreOfGame ON Games.id = GenreOfGame.Gameid 
INNER JOIN Genre ON GenreOfGame.Genreid = Genre.id
WHERE Users.id IN (SELECT DISTINCT  Users.id
FROM Users INNER JOIN Buy ON Users.id= Buy.userid INNER JOIN Games ON Games.id =Buy.gameid INNER JOIN GenreOfGame ON Games.id = GenreOfGame.Gameid 
INNER JOIN Genre ON GenreOfGame.Genreid = Genre.id
EXCEPT
SELECT DISTINCT  Users.id
FROM Users INNER JOIN Buy ON Users.id= Buy.userid INNER JOIN Games ON Games.id =Buy.gameid INNER JOIN GenreOfGame ON Games.id = GenreOfGame.Gameid 
INNER JOIN Genre ON GenreOfGame.Genreid = Genre.id
WHERE Genre.name = 'Football')
GROUP BY Genre.name
ORDER BY COUNT(Genre.name) DESC


--2017 yýlý sonrasý  KumfýrtýnasýM4a1 e sahip olmuþ toplam insan sayýsý 

SELECT Count(DISTINCT Users.id)
FROM Users INNER JOIN Useritems ON Users.id= Useritems.userid INNER JOIN Items ON Items.id = Useritems.gameitemid
WHERE Items.name ='KumfýrtýnasýM4a1'  AND  Useritems.buydate >'2017/01/01' 

--


--Bethesdanýn yaptýðý en çok satan oyun adý ve fiyatý 

SELECT TOP 1 Games.name ,Games.price
FROM Developers INNER JOIN Games ON Developers.id=Games.developer INNER JOIN Buy ON Games.id= Buy.gameid
WHERE Developers.name='Bethesta Game Studios'
GROUP BY Games.name, Games.price
ORDER BY Count(Buy.gameid) DESC 

-- yalovada yaþayan kullanýcýlarýn en cok sahip 3 olduðu oyun 

SELECT TOP 3 Games.name
FROM Games INNER JOIN Buy ON Games.id= Buy.gameid INNER JOIN Users ON Users.id= Buy.userid
WHERE Users.id IN (SELECT Users.id
FROM Users INNER JOIN Adress ON Users.adress = Adress.id
WHERE Adress.name = 'Yalova') 
GROUP BY Games.name
ORDER BY COUNT(Buy.gameid) DESC




