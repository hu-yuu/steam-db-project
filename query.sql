use steam;
--Dropbox sorgusu 1
--CS:GO oyunu i�in en 5 item alan ya da satan kullan�c�lar�n toplam 2018 y�l� CS:GO item sat�� ve al�� tutarlar�
select sum(buyprice+sellprice) as toplam ,sum(buyprice) as alistop,sum(sellprice) as satistop 
from Useritems INNER JOIN Items ON Items.id= Useritems.gameitemid INNER JOIN Games ON Games.id = Items.game  
where userid IN (select userid 
from Useritems INNER JOIN Items ON Items.id= Useritems.gameitemid INNER JOIN Games ON Games.id = Items.game
Where buyprice>0 or sellprice>0  AND Games.name ='CS:GO'
group by userid 
having count(userid)>5) and useritems.buydate>'2018.01.01' and useritems.buydate< '2019.01.01' AND Games.name ='CS:GO'

--Dropbox sorgusu 2
--K�t�phanesinde hi� futbol kategorisinde oyun olmayan kullan�c�lar�n en �ok oyuna sahip olduklar� 3 kategori ism
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


--2017 y�l� sonras�  Kumf�rt�nas�M4a1 e sahip olmu� toplam insan say�s� 

SELECT Count(DISTINCT Users.id)
FROM Users INNER JOIN Useritems ON Users.id= Useritems.userid INNER JOIN Items ON Items.id = Useritems.gameitemid
WHERE Items.name ='Kumf�rt�nas�M4a1'  AND  Useritems.buydate >'2017/01/01' 

--


--Bethesdan�n yapt��� en �ok satan oyun ad� ve fiyat� 

SELECT TOP 1 Games.name ,Games.price
FROM Developers INNER JOIN Games ON Developers.id=Games.developer INNER JOIN Buy ON Games.id= Buy.gameid
WHERE Developers.name='Bethesta Game Studios'
GROUP BY Games.name, Games.price
ORDER BY Count(Buy.gameid) DESC 

-- yalovada ya�ayan kullan�c�lar�n en cok sahip 3 oldu�u oyun 

SELECT TOP 3 Games.name
FROM Games INNER JOIN Buy ON Games.id= Buy.gameid INNER JOIN Users ON Users.id= Buy.userid
WHERE Users.id IN (SELECT Users.id
FROM Users INNER JOIN Adress ON Users.adress = Adress.id
WHERE Adress.name = 'Yalova') 
GROUP BY Games.name
ORDER BY COUNT(Buy.gameid) DESC




