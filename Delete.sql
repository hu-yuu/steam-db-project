use steam;
-------------------------FPSLovers adl� grup siliniyor. �nce �yelikler sonra grup------------------
--DELETE FROM Members WHERE groupid in ( select Groups.id from Groups where name='FPSLovers' );  
--Delete From Groups where name='FPSLovers';
-----------------------------------------------------------------------------------------------------------


------------------------2.Kullan�c� 3.kullan�c�y� arkada�l�ktan ��kar�yor----------------------------------
--DELETE FROM Friends WHERE firstid=2 and secondid=3;  
-----------------------------------------------------------------------------------------------------------


-----------------Gta v oyunun siliniyor. �nce oyunun t�r ba�lant�lar� siliniyor-----------------------
--DELETE FROM GenreOfGame WHERE Gameid in (select id from Games WHERE name='Gta V');      
--Delete from Games where name='Gta V';  --Buda oyunu siliyor
---------------------------------------------------------------------------------------------------


--------------------Mustafa adl� kullan�c� siliniyor. �nce t�m arkada�l�klar� , sonra grup �yelikleri sonra kurdu�u gruplar�n �yelikleri , sonra kurdu�u gruplar , sonra oyun sat�n alma ge�mi�i , sonra itemleri sonra , ba�ar�mlar� sonra, kendisi -------------------------
--Delete from Friends where firstid in (select Users.id from Users Where name ='Mustafa')
--Delete from Members where Members.userid in (select Users.id from Users Where name ='Mustafa')
--Delete from Members where Members.userid in (Select members.userid from Members where Members.groupid in (select groupid from Groups where creator in ( select userid from Users where name='Mustafa')))
--Delete from Groups where creator in (select Users.id from Users Where name ='Mustafa' )
--Delete from Buy where buy.userid in (select Users.id from Users Where name ='Mustafa' )
--Delete from Useritems where Useritems.userid in (select Users.id from Users Where name ='Mustafa' )
--Delete from EarnedAchivements where EarnedAchivements.userid in (select Users.id from Users Where name ='Mustafa' )
--Delete from Users Where name ='Mustafa'
-------------------------------------------------------------------------------------------------------------------------------------


------------------Crytek adl� developer siliniyor--- �nce geli�tirdikleri oyunlar�n t�r ba�lant�lar� sonra oyunlar�n sat�lma ge�mi�i sonra oyunlar sonra geli�tiricinin kendisi--------
--DELETE FROM GenreOfGame WHERE Gameid in (select Games.id from Games where Games.developer in ( select Developers.id from Developers where name='Crytek'))
--Delete from Buy where Buy.gameid in (select Games.id from Games where Games.developer in ( select Developers.id from Developers where name='Crytek'))
--Delete from Games where Games.developer in ( select Developers.id from Developers where name='Crytek')
--Delete from Developers where name='Crytek'
--------------------------------------------------------------------------------------------------------------

