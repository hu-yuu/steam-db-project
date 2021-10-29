use steam;
-------------------------FPSLovers adlý grup siliniyor. Önce üyelikler sonra grup------------------
--DELETE FROM Members WHERE groupid in ( select Groups.id from Groups where name='FPSLovers' );  
--Delete From Groups where name='FPSLovers';
-----------------------------------------------------------------------------------------------------------


------------------------2.Kullanýcý 3.kullanýcýyý arkadaþlýktan çýkarýyor----------------------------------
--DELETE FROM Friends WHERE firstid=2 and secondid=3;  
-----------------------------------------------------------------------------------------------------------


-----------------Gta v oyunun siliniyor. Önce oyunun tür baðlantýlarý siliniyor-----------------------
--DELETE FROM GenreOfGame WHERE Gameid in (select id from Games WHERE name='Gta V');      
--Delete from Games where name='Gta V';  --Buda oyunu siliyor
---------------------------------------------------------------------------------------------------


--------------------Mustafa adlý kullanýcý siliniyor. Önce tüm arkadaþlýklarý , sonra grup üyelikleri sonra kurduðu gruplarýn üyelikleri , sonra kurduðu gruplar , sonra oyun satýn alma geçmiþi , sonra itemleri sonra , baþarýmlarý sonra, kendisi -------------------------
--Delete from Friends where firstid in (select Users.id from Users Where name ='Mustafa')
--Delete from Members where Members.userid in (select Users.id from Users Where name ='Mustafa')
--Delete from Members where Members.userid in (Select members.userid from Members where Members.groupid in (select groupid from Groups where creator in ( select userid from Users where name='Mustafa')))
--Delete from Groups where creator in (select Users.id from Users Where name ='Mustafa' )
--Delete from Buy where buy.userid in (select Users.id from Users Where name ='Mustafa' )
--Delete from Useritems where Useritems.userid in (select Users.id from Users Where name ='Mustafa' )
--Delete from EarnedAchivements where EarnedAchivements.userid in (select Users.id from Users Where name ='Mustafa' )
--Delete from Users Where name ='Mustafa'
-------------------------------------------------------------------------------------------------------------------------------------


------------------Crytek adlý developer siliniyor--- Önce geliþtirdikleri oyunlarýn tür baðlantýlarý sonra oyunlarýn satýlma geçmiþi sonra oyunlar sonra geliþtiricinin kendisi--------
--DELETE FROM GenreOfGame WHERE Gameid in (select Games.id from Games where Games.developer in ( select Developers.id from Developers where name='Crytek'))
--Delete from Buy where Buy.gameid in (select Games.id from Games where Games.developer in ( select Developers.id from Developers where name='Crytek'))
--Delete from Games where Games.developer in ( select Developers.id from Developers where name='Crytek')
--Delete from Developers where name='Crytek'
--------------------------------------------------------------------------------------------------------------

