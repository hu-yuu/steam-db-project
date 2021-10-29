--  ----------------------------------------------------------INSERT--------------------------------------------------------------------------
--Genre id-name
  INSERT INTO Genre VALUES(1,'RPG');
  INSERT INTO Genre VALUES(2,'FPS');
  INSERT INTO Genre VALUES(3,'TPS');
  INSERT INTO Genre VALUES(4,'Online');
  INSERT INTO Genre VALUES(5,'Adventure');
  INSERT INTO Genre VALUES(6,'Football');
  INSERT INTO Genre VALUES(7,'Magic');
  INSERT INTO Genre VALUES(8,'strategy');
  INSERT INTO Genre VALUES(9,'figt');
  INSERT INTO Genre VALUES(11,'offline');
  INSERT INTO Genre VALUES(12,'race');
  INSERT INTO Genre VALUES(13,'action');
  

  --Achivements id-game-name
  INSERT INTO Achivements VALUES(1,1,'Cant touch this');
  INSERT INTO Achivements VALUES(2,1,'Kill the boss');
  INSERT INTO Achivements VALUES(3,1,'Kill 50 men');
  INSERT INTO Achivements VALUES(4,1,'One punch');
  INSERT INTO Achivements VALUES(5,1,'Serial killer');

  INSERT INTO Achivements VALUES(6,2,'Win 1st place');
  INSERT INTO Achivements VALUES(7,2,'Buy a ferrari');
  INSERT INTO Achivements VALUES(8,2,'Win the world cup');
  INSERT INTO Achivements VALUES(9,2,'Open a new map');
  

  --Developers id-name
  INSERT INTO Developers VALUES(1, 'Bethesta Game Studios');
  INSERT INTO Developers VALUES(2, 'Valve');
  INSERT INTO Developers VALUES(3, 'Crytek');
  INSERT INTO Developers VALUES(4, 'CD project');
  INSERT INTO Developers VALUES(5, 'From Software');
  INSERT INTO Developers VALUES(6, 'Activision');
  INSERT INTO Developers VALUES(7, 'Electronic Arts');
  INSERT INTO Developers VALUES(8, 'Epic Games');
  INSERT INTO Developers VALUES(9, 'Gameloft');
  INSERT INTO Developers VALUES(10, 'Konami');
  INSERT INTO Developers VALUES(11, 'FromSoftware');
  INSERT INTO Developers VALUES(12, 'Rockstar');
  INSERT INTO Developers VALUES(13, 'Ubisoft');


  --Publishers id-name
  INSERT INTO Publishers VALUES(1,'Bethesta Soft Works');
  INSERT INTO Publishers VALUES(2,'Electronic Arts');
  INSERT INTO Publishers VALUES(3,'Sýerra');
  INSERT INTO Publishers VALUES(4,'Ubisoft');
  INSERT INTO Publishers VALUES(5,'Sony');
  INSERT INTO Publishers VALUES(6,'Square Enix');
  INSERT INTO Publishers VALUES(7,'Nintendo');
  INSERT INTO Publishers VALUES(8,'Sega');
  INSERT INTO Publishers VALUES(9,'Capcom');
  INSERT INTO Publishers VALUES(10,'Blizzard');
  INSERT INTO Publishers VALUES(11,'CD project red');
  INSERT INTO Publishers VALUES(12, 'Konami');
  INSERT INTO Publishers VALUES(13, 'Bandai Namco Entertainment');
  INSERT INTO Developers VALUES(14, 'Valve');
  INSERT INTO Developers VALUES(15, 'Respawn')
  INSERT INTO Developers VALUES(16, 'Rockstar')


  
  --Games                id-dlcof-price-devoloper-publisher-relasedate-name
  INSERT INTO Games VALUES(1, NULL,100,1,1 , '2011-11-11' , 'Skyrim');
  INSERT INTO Games VALUES(2, 1,   20 ,1,1 , '2012-01-01' , 'Dawnguard');
  INSERT INTO Games VALUES(3, 1,   20 ,1,1 , '2012-02-02' , 'Hearthfire');
  INSERT INTO Games VALUES(4, 1,   20 ,1,1 , '2013-03-03' , 'Dragonborn');

  INSERT INTO Games VALUES(5, NULL, 50 ,4,4 , '2016-10-28' , 'Witcher 3');
  INSERT INTO Games VALUES(6, 5,    10 ,4,4 , '2016-10-28' , 'Blood and vine');
  INSERT INTO Games VALUES(7, 5,    10 ,4,4 , '2016-10-28' , 'Harts of stone');
  
  INSERT INTO Games VALUES(8, NULL, 200 ,10,12 , '2017-09-12' , 'Pro evolotion soccer 2017');

  INSERT INTO Games VALUES(9, NULL, 160 ,11,13 , '2016-03-24' , 'Dark souls 3');

  INSERT INTO Games VALUES(10, NULL, 20 ,14,2 , '2012-12-21' , 'CS:GO');

  INSERT INTO Games VALUES(12, NULL, 0 ,15,2 , '2019-04-02' , 'Apex Legends ');

  INSERT INTO Games VALUES(13, NULL, 120 ,16,12 , '2015-04-14' , 'Gta V');

  INSERT INTO Games VALUES(14, NULL, 80 ,3,2 , '2011-03-22' , 'Crysis 2');

  INSERT INTO Games VALUES(15, NULL, 70 ,13,2 , '2015-04-14' , 'Farcry 3');

  INSERT INTO Games VALUES(16, NULL, 20 ,2,3 , '2015-04-14' , 'Half-Life');

  INSERT INTO Games VALUES(17, NULL, 120 ,2,2 , '2019-01-01' , 'Fifa 2019');

  INSERT INTO Games VALUES(18, NULL, 80 ,1,1 , '2008-11-28' , 'Fall out 3');

  --Adress id-name
  INSERT INTO Adress VALUES(1,'Adana');
  INSERT INTO Adress VALUES(77,'Yalova');
  INSERT INTO Adress VALUES(09,'Aydýn');
  INSERT INTO Adress VALUES(10,'Balýkesir');
  INSERT INTO Adress VALUES(43,'Ýstanbul');
  INSERT INTO Adress VALUES(06,'Ankara');
  INSERT INTO Adress VALUES(35,'Ýzmir');
  INSERT INTO Adress VALUES(16,'Bursa');
  INSERT INTO Adress VALUES(53,'Rize');
  INSERT INTO Adress VALUES(20,'Denizli');
  INSERT INTO Adress VALUES(46,'Maraþ');


--users id-name-surname-email-birthday-wallet-phone-registerdate-isactive-adress

  INSERT INTO Users VALUES(1,'Mustafa','Candan','mustafacandan211@gmail.com','1999-02-14',15,05052104849,'2018-02-02',1,77);
  INSERT INTO Users VALUES(2,'Hüseyin','Yüzügüldü','hüseyinyzgld@gmail.com','1999-01-01',5,05052105059,'2018-01-02',1,09);
  INSERT INTO Users VALUES(3,'Yusuf','Erden','yusulerden@gmail.com','1998-04-04',0,05068105752,'2018-05-04',1,77);
  INSERT INTO Users VALUES(4,'Saygýn','Yýldýz','saygýnyýldýz@gmail.com','1998-06-12',0,05062195752,'2018-05-04',1,77);
  INSERT INTO Users VALUES(5,'Emre','Çelik','emre@gmail.com','1998-04-12',0,05062175552,'2018-07-04',1,77);
  INSERT INTO Users VALUES(6,'Ömer','Kara','ömerkara@gmail.com','1995-06-12',0,05062305752,'2017-05-04',1,77);
  INSERT INTO Users VALUES(7,'Mehmet','ak','mehmetak@gmail.com','1993-06-02',0,05062307752,'2015-05-04',1,77);
  INSERT INTO Users VALUES(8,'Ali','Haklý','alimail@gmail.com','1994-06-02',0,05020307752,'2016-05-04',1,16);
  INSERT INTO Users VALUES(9,'Furkan','Þen','furkansen@gmail.com','1993-08-06',0,05062332752,'2015-05-04',1,06);
  INSERT INTO Users VALUES(10,'Anýl','Göktaþ','anýlgmail@gmail.com','1998-05-06',0,05062311152,'2015-08-20',1,43);
  
  --Friends firstid-secondid-status
  INSERT INTO Friends VALUES(1,2,1);
  INSERT INTO Friends VALUES(1,3,1);
  INSERT INTO Friends VALUES(1,4,1);
  INSERT INTO Friends VALUES(1,5,1);
  INSERT INTO Friends VALUES(1,6,1);
  INSERT INTO Friends VALUES(1,7,1);
  INSERT INTO Friends VALUES(1,8,1);
  INSERT INTO Friends VALUES(1,9,1);

  INSERT INTO Friends VALUES(2,9,1);
  INSERT INTO Friends VALUES(2,8,1);
  INSERT INTO Friends VALUES(2,7,1);
  INSERT INTO Friends VALUES(2,6,1);
  INSERT INTO Friends VALUES(2,5,1);

  INSERT INTO Friends VALUES(3,9,1);
  INSERT INTO Friends VALUES(3,6,1);
  INSERT INTO Friends VALUES(3,4,1);

  INSERT INTO Friends VALUES(5,6,1);

  

  
  --Groups id-name-createdate-creator
  INSERT INTO Groups VALUES(1,'RPGLovers','2018-01-01',1);
  INSERT INTO Groups VALUES(2,'FPSLovers','2018-02-01',2);
  INSERT INTO Groups VALUES(3,'MinecraftKingdom','2018-03-01',3);
  INSERT INTO Groups VALUES(4,'Gta5boys','2018-04-01',4);
  INSERT INTO Groups VALUES(5,'Turkishgamers','2018-05-01',5);
  INSERT INTO Groups VALUES(6,'Groupwithoutpurpose','2018-06-01',1);
  INSERT INTO Groups VALUES(7,'Groupname','2018-07-01',3);
  INSERT INTO Groups VALUES(8,'Wearethekings','2018-08-01',5);
  INSERT INTO Groups VALUES(9,'Racers','2019-01-01',7);
  INSERT INTO Groups VALUES(10,'Gamergirls','2019-01-02',9);

  

  --Items id-game-name
  INSERT INTO Items VALUES(1,10,'karambit');
  INSERT INTO Items VALUES(2,10,'KumfýrtýnasýM4a1');
  INSERT INTO Items VALUES(3,10,'GoldenAk47');
  INSERT INTO Items VALUES(4,10,'MoonriseUmp45');
  INSERT INTO Items VALUES(5,10,'HowlerM4a4');
  INSERT INTO Items VALUES(6,10,'MeduaAwp');
  INSERT INTO Items VALUES(7,10,'AtherisAwp');
  INSERT INTO Items VALUES(8,10,'VulkanAk47');
  INSERT INTO Items VALUES(9,10,'AsimovAwp');
  INSERT INTO Items VALUES(10,10,'RedlineAk47');
  INSERT INTO Items VALUES(11,10,'MomentumAug');
 
  

  --Useritems   instanceid-userid-itemid-buyprice-sellprice-itemstatus-buydate-selldate
  INSERT INTO Useritems VALUES(1,1,1,0,0,0,'2018/05/05',NULL);
  INSERT INTO Useritems VALUES(2,1,1,0,0,0,'2018/06/05',NULL);
  INSERT INTO Useritems VALUES(3,1,1,0,0,0,'2018/07/05',NULL); --1. kullanýcý 1.itemden 3 tane düþürdü

  INSERT INTO Useritems VALUES(4,1,1,5,0,0,'2016/08/05',NULL);
  INSERT INTO Useritems VALUES(5,1,1,5,0,0,'2017/09/05',NULL);
  INSERT INTO Useritems VALUES(6,1,1,5,0,0,'2018/10/05',NULL); --1. kullanýcý 1.itemden 3 tane sattý 5 paraya

  INSERT INTO Useritems VALUES(7,2,2,5,6,0,'2018/11/05',NULL);
  INSERT INTO Useritems VALUES(8,2,2,5,6,0,'2018/12/05',NULL); --2. kullanýcý 2.itemden 2 tane  5 paradan aldý 6 paraya sattý 2 satýþ yaptý

  INSERT INTO Useritems VALUES(9,3,4,0,0,0,'2018/05/05',NULL);  --3. kullanýcý 4.itemden 1 tane düþürdü
  INSERT INTO Useritems VALUES(10,3,4,10,0,0,'2018/05/06',NULL);--3. kullanýcý 4.itemden 1 tane aldý 10 paraya

  INSERT INTO Useritems VALUES(11,4,2,0,0,0,'2018/05/07',NULL); --4. kullanýcý 2.itemden 1 tane düþürdü
  INSERT INTO Useritems VALUES(12,4,2,0,6,1,'2018/05/08',NULL); --4. kullanýcý 2.itemi satýþa koydu

  INSERT INTO Useritems VALUES(34,5,2,5,6,0,'2018/05/08',NULL); --5. kullanýcý 2.itemden 6 tane  5 paraya aldý 6 paraya sattý 6 tane sattý
  INSERT INTO Useritems VALUES(13,5,2,5,6,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(14,5,2,5,6,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(15,5,2,5,6,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(16,5,2,5,6,0,'2018/05/08',NULL); 
  INSERT INTO Useritems VALUES(17,5,2,5,6,0,'2018/05/08',NULL);

  INSERT INTO Useritems VALUES(18,6,3,20,0,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(19,6,4,30,0,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(20,6,5,40,0,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(21,6,6,50,0,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(22,6,7,60,0,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(23,6,8,70,0,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(24,6,9,80,0,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(25,6,10,90,0,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(26,6,11,80,0,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(27,6,11,70,0,0,'2018/05/08',NULL);

  INSERT INTO Useritems VALUES(28,7,11,70,0,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(29,7,11,70,0,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(30,7,10,70,0,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(31,7,9,70,0,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(32,7,8,70,0,0,'2018/05/08',NULL);
  INSERT INTO Useritems VALUES(33,7,7,70,0,0,'2018/05/08',NULL);

  INSERT INTO Useritems VALUES(35,8,1,10,0,0,'2019/05/08',NULL);
  INSERT INTO Useritems VALUES(36,8,2,10,0,0,'2019/05/08',NULL);
  INSERT INTO Useritems VALUES(37,8,3,10,0,0,'2019/05/08',NULL);
  INSERT INTO Useritems VALUES(38,8,4,10,0,0,'2019/05/08',NULL);
  INSERT INTO Useritems VALUES(39,8,5,10,0,0,'2019/05/08',NULL);
  INSERT INTO Useritems VALUES(40,8,6,10,0,0,'2019/05/08',NULL);


  
  --Members  groupdis-userid
  INSERT INTO Members VALUES(1,1);
  INSERT INTO Members VALUES(1,2);
  INSERT INTO Members VALUES(1,3);
  INSERT INTO Members VALUES(1,4);
  INSERT INTO Members VALUES(1,5);

  INSERT INTO Members VALUES(2,2);
  INSERT INTO Members VALUES(2,4);
  INSERT INTO Members VALUES(2,6);
  INSERT INTO Members VALUES(2,8);

  INSERT INTO Members VALUES(3,3);
  INSERT INTO Members VALUES(3,6);
  INSERT INTO Members VALUES(3,9);

  INSERT INTO Members VALUES(3,4);

  INSERT INTO Members VALUES(5,5);
  INSERT INTO Members VALUES(5,10);


  --EarnedAchivements achivementid-userid-date
  INSERT INTO EarnedAchivements VALUES(1,1,'2018-01-01');
  INSERT INTO EarnedAchivements VALUES(2,1,'2018-02-02');
  INSERT INTO EarnedAchivements VALUES(3,1,'2019-02-03');
  INSERT INTO EarnedAchivements VALUES(4,1,'2018-02-04');
  INSERT INTO EarnedAchivements VALUES(5,1,'2018-02-05');

  INSERT INTO EarnedAchivements VALUES(2,2,'2018-02-06');
  INSERT INTO EarnedAchivements VALUES(4,2,'2018-02-07');
  INSERT INTO EarnedAchivements VALUES(6,2,'2018-02-08');
  INSERT INTO EarnedAchivements VALUES(8,2,'2018-02-09');

  INSERT INTO EarnedAchivements VALUES(3,3,'2018-03-01');
  INSERT INTO EarnedAchivements VALUES(6,3,'2018-03-01');
  INSERT INTO EarnedAchivements VALUES(9,3,'2018-03-01');

  INSERT INTO EarnedAchivements VALUES(5,5,'2019-04-01');
  INSERT INTO EarnedAchivements VALUES(9,5,'2019-04-01');


  --GenreOfGame gameid-genreid
  INSERT INTO GenreOfGame VALUES(1,1);
  INSERT INTO GenreOfGame VALUES(1,3);
  INSERT INTO GenreOfGame VALUES(1,5);
  INSERT INTO GenreOfGame VALUES(1,7);
  INSERT INTO GenreOfGame VALUES(1,11);
  

  INSERT INTO GenreOfGame VALUES(2,1);
  INSERT INTO GenreOfGame VALUES(2,3);
  INSERT INTO GenreOfGame VALUES(2,5);
  INSERT INTO GenreOfGame VALUES(4,7);
  INSERT INTO GenreOfGame VALUES(4,11);

  INSERT INTO GenreOfGame VALUES(8,6);
  INSERT INTO GenreOfGame VALUES(8,4);

  INSERT INTO GenreOfGame VALUES(9,1);
  INSERT INTO GenreOfGame VALUES(9,3);
  INSERT INTO GenreOfGame VALUES(9,4);
  INSERT INTO GenreOfGame VALUES(9,7);

  INSERT INTO GenreOfGame VALUES(10,2);
  INSERT INTO GenreOfGame VALUES(10,4);

  INSERT INTO GenreOfGame VALUES(12,2);
  INSERT INTO GenreOfGame VALUES(12,4);

  INSERT INTO GenreOfGame VALUES(13,1);
  INSERT INTO GenreOfGame VALUES(13,12);
  INSERT INTO GenreOfGame VALUES(13,13);

  INSERT INTO GenreOfGame VALUES(14,2);
  INSERT INTO GenreOfGame VALUES(14,13);

  INSERT INTO GenreOfGame VALUES(15,2);
  INSERT INTO GenreOfGame VALUES(15,13);

  INSERT INTO GenreOfGame VALUES(16,2);
  INSERT INTO GenreOfGame VALUES(16,13);

  INSERT INTO GenreOfGame VALUES(17,6);

  INSERT INTO GenreOfGame VALUES(18,1);
  INSERT INTO GenreOfGame VALUES(18,5);
  INSERT INTO GenreOfGame VALUES(18,13);
  
  
  
  --Buy userid-gameid-price-gamekey-date
  INSERT INTO Buy VALUES(1,1,100,'key1233','2018-04-02');
  INSERT INTO Buy VALUES(1,2,20,'key1235','2018-04-03');
  INSERT INTO Buy VALUES(1,3,20,'key1236','2018-04-04');
  INSERT INTO Buy VALUES(1,5,50,'key1237','2018-04-05');
  INSERT INTO Buy VALUES(1,6,10,'key1238','2018-04-06');
  INSERT INTO Buy VALUES(1,7,10,'key1239','2018-04-07');

  INSERT INTO Buy VALUES(2,1,100,'key1210','2018-05-04');
  INSERT INTO Buy VALUES(2,5,50,'key12311','2018-06-04');
  INSERT INTO Buy VALUES(2,8,20,'key12312','2018-07-04');
  INSERT INTO Buy VALUES(2,9,10,'key12313','2018-08-04');

  INSERT INTO Buy VALUES(3,5,50,'key12314','2019-05-04');
  INSERT INTO Buy VALUES(3,8,200,'key1215','2019-06-04');
  INSERT INTO Buy VALUES(3,9,160,'key1216','2019-07-04');

  INSERT INTO Buy VALUES(5,17,20,'key1217','2019-07-04');
  INSERT INTO Buy VALUES(5,16,20,'key1218','2019-07-04');
  INSERT INTO Buy VALUES(5,15,20,'key1219','2019-07-04');

  INSERT INTO Buy VALUES(6,8,20,'key1220','2019-07-04');
  INSERT INTO Buy VALUES(6,17,20,'key1221','2019-07-04');

  INSERT INTO Buy VALUES(7,14,80,'key1222','2019-07-04');

  INSERT INTO Buy VALUES(8,4,20,'key1223','2019-07-04');
  INSERT INTO Buy VALUES(8,18,20,'key12124','2019-07-04');

  INSERT INTO Buy VALUES(9,16,10,'key12125','2019-07-04');

  INSERT INTO Buy VALUES(1,8,25,'key12126','2017-07-04');
  INSERT INTO Buy VALUES(2,10,25,'key12127','2017-08-04');


