CREATE DATABASE steam;

USE steam;
CREATE TABLE Genre (
  id integer,
  name varchar(35),
  PRIMARY KEY (id)
);
CREATE TABLE Developers(
  id integer,
  name varchar(35),
  PRIMARY KEY (id)
);
CREATE TABLE Publishers(
  id integer,
  name varchar(35),
  PRIMARY KEY (id)
);
CREATE TABLE Games (
  id integer,
  dlcof int default NULL,
  price float(24),
  developer int,
  publisher int,
  relasedate DATE,
  name varchar(35),
  PRIMARY KEY (id),
  CONSTRAINT FK_dlcof FOREIGN KEY (dlcof) REFERENCES Games(id),
  CONSTRAINT FK_developer FOREIGN KEY (developer) REFERENCES Developers(id),
  CONSTRAINT FK_publisher FOREIGN KEY (publisher) REFERENCES Publishers(id)
  );

  CREATE TABLE Items(
  id integer,
  game int,
  name varchar(35),
  PRIMARY KEY (id),
  CONSTRAINT FK_game FOREIGN KEY (game) REFERENCES Games(id)
);

CREATE TABLE Achivements(
  id integer,
  game int,
  name varchar(35),
  PRIMARY KEY (id)
);
CREATE TABLE Adress(
  id integer,
  name varchar(35),
  PRIMARY KEY (id)
);

CREATE TABLE Users(
  id integer,
  name varchar(35),
  surname varchar(35),
  email varchar(35), 
  birthday DATE,
  wallet integer,
  phone NUMERIC(11),
  registerdate DATE,
  isactive integer,  
  adress integer,
  PRIMARY KEY (id),
  CONSTRAINT FK_adress FOREIGN KEY (adress) REFERENCES Adress(id)
  
);
CREATE TABLE Friends(
  firstid integer,
  secondid integer,
  status integer,
  PRIMARY KEY (firstid,secondid),
  CONSTRAINT FK_firstid FOREIGN KEY (firstid) REFERENCES Users(id),
  CONSTRAINT FK_secondid FOREIGN KEY (secondid) REFERENCES Users(id)

);

CREATE TABLE Groups(
  id integer,
  name varchar(35),
  createdate DATE,
  creator integer,
  PRIMARY KEY (id),
  CONSTRAINT FK_creator FOREIGN KEY (creator) REFERENCES Users(id)

);

CREATE TABLE GenreOfGame(
  Gameid integer,
  Genreid integer,
  PRIMARY KEY (Gameid,Genreid),
  CONSTRAINT FK_Gameid_TableGenreOfGame FOREIGN KEY (Gameid) REFERENCES Games(id),
  CONSTRAINT FK_Genreid_TableGenreOfGame FOREIGN KEY (Genreid) REFERENCES Genre(id)

);

CREATE TABLE Buy(
  userid integer,
  gameid integer,
  price integer,
  gamekey varchar(35),
  date DATE,
  PRIMARY KEY (gamekey),
  CONSTRAINT FK_userid_TableBuy FOREIGN KEY (userid) REFERENCES Users(id),
  CONSTRAINT FK_gameid_TableBuy FOREIGN KEY (gameid) REFERENCES Games(id)

);
CREATE TABLE Useritems(
  instanceid integer,
  userid integer,
  gameitemid integer,
  buyprice integer,
  sellprice integer,
  itemstatus integer,
  buydate DATE,
  selldate DATE,
  PRIMARY KEY (instanceid),
  CONSTRAINT FK_userid_tableitems FOREIGN KEY (userid) REFERENCES Users(id),
  CONSTRAINT FK_itemid_tableitems FOREIGN KEY (gameitemid) REFERENCES Items(id)

);
CREATE TABLE Members (
  groupid INT NOT NULL default '0',
  userid INT NOT NULL default '0',
  PRIMARY KEY  (groupid,userid),
  CONSTRAINT FK_groupid_tablemembers FOREIGN KEY (groupid) REFERENCES Groups(id),
  CONSTRAINT FK_userid_tablemembers FOREIGN KEY (userid) REFERENCES Users(id)
);

CREATE TABLE EarnedAchivements (
  achivementid INT NOT NULL default '0',
  userid INT NOT NULL default '0',
  date DATE,
  PRIMARY KEY  (achivementid,userid),
  CONSTRAINT FK_achivementid FOREIGN KEY (achivementid) REFERENCES Achivements(id),
  CONSTRAINT FK_userid_tableearnedachivements FOREIGN KEY (userid) REFERENCES Users(id)
);

