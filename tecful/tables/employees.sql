CREATE TABLE `employees` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Height` decimal(10,0) DEFAULT NULL,
  `EMail` varchar(100) DEFAULT NULL,
  `Weight` decimal(10,0) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `BloodType` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
);
INSERT INTO `employees` VALUES (1,'シマゴロー',168,'simagoro@nekoyasudo',72,1987,'1956-10-01','A'),(2,'ゴッチン',161,'gochin@nekoyasudo',60,1987,'1953-12-25','B'),(3,'マキ子',155,'maki@nekoyasudo',52,1987,'1958-08-16','O'),(4,'マル',158,'maru@nekoyasudo',45,1987,'1954-01-12','AB'),(5,'ミチロー',170,'michiro@nekoyasudo',70,1987,'1965-02-14','A'),(6,'チー',173,'coo@nekoyasudo',76,1987,'1964-09-15','A'),(7,'サラ',162,'sara@nekoyasudo',50,1988,'1960-10-28','A'),(8,'みなみ',153,'minami@nekoyasudo',42,1988,'1962-09-03','O'),(9,'プリン',148,'prin@nekoyasudo',48,1988,'1968-03-14','B'),(10,'ぴー子',156,'pko@nekoyasudo',52,1988,'1971-11-13','O'),(11,'ごま',180,'goma@nekoyasudo',78,1988,'1971-04-15','O'),(12,'ぱんだ',185,'panda@nekoyasudo',95,1988,'1971-06-01','B'),(13,'猫丸',172,'nekomaru@nekoyasudo',80,1989,'1972-01-15','B'),(14,'ニャン太',178,'nyantaro@nekoyasudo',58,1989,'1972-02-03','B'),(15,'モンチー',169,'monchi@nekoyasudo',55,1991,'1973-05-06','A'),(16,'ぴよ',155,'piyo@nekoyasudo',62,1991,'1973-07-14','A'),(17,'ラスカル',165,'rasukal@nekoyasudo',51,1992,'1974-04-10','AB'),(18,'くま',190,'kuma@nekoyasudo',115,1992,'1970-03-03','O'),(19,'ゴン',176,'gon@nekoyasudo',78,1993,'1975-11-16','O'),(20,'チー',169,'q@nekoyasudo',56,1994,'1976-05-25','O'),(21,'太助',164,'tasuke@nekoyasudo',50,1996,'1978-10-03','B'),(22,'トントン',155,'tonton@nekoyasudo',45,1996,'1978-12-25','B'),(23,'マー',158,'ma@nekoyasudo',44,1997,'1979-04-03','A'),(24,'サリー',149,'sary@nekoyasudo',38,1999,'1981-02-02','A'),(25,'うさぎ',161,'usa@nekoyasudo',43,1999,'1981-08-08','A'),(26,'うー太',170,'uta@nekoyasudo',63,2001,'1983-03-26','A'),(27,'ローリー',147,'roly@nekoyasudo',40,2003,'1985-05-26','A'),(28,'マイケル',160,'mikel@nekoyasudo',49,2004,'1986-06-30','AB'),(29,'スー',163,'su@nekoyasudo',52,2006,'1988-09-08','O'),(30,'ミーヤ',168,'miya@nekoyasudo',51,2007,'1989-07-07','B');

#### __テーブル employees__
***

##### __カラム__

- $ ID$ : 従業員ID
- $Name$ : 従業員名
- $Height$ : 身長
- $EMail$ : メールアドレス
- $Year$ : 入社年
- $Birthday$ : 誕生年
- $BloodType$ : 血液型

| ID | Name  | Height |        EMail        | Weight | Year |  Birthday  | BloodType |
|----|-------|--------|---------------------|--------|------|------------|-----------|
| 1  | シマゴロー | 168    | simagoro@nekoyasudo | 72     | 1987 | 1956-10-01 | A         |
| 2  | ゴッチン  | 161    | gochin@nekoyasudo   | 60     | 1987 | 1953-12-25 | B         |
| 3  | マキ子   | 155    | maki@nekoyasudo     | 52     | 1987 | 1958-08-16 | O         |
| 4  | マル    | 158    | maru@nekoyasudo     | 45     | 1987 | 1954-01-12 | AB        |
| 5  | ミチロー  | 170    | michiro@nekoyasudo  | 70     | 1987 | 1965-02-14 | A         |
| 6  | チー    | 173    | coo@nekoyasudo      | 76     | 1987 | 1964-09-15 | A         |
| 7  | サラ    | 162    | sara@nekoyasudo     | 50     | 1988 | 1960-10-28 | A         |
| 8  | みなみ   | 153    | minami@nekoyasudo   | 42     | 1988 | 1962-09-03 | O         |
| 9  | プリン   | 148    | prin@nekoyasudo     | 48     | 1988 | 1968-03-14 | B         |
| 10 | ぴー子   | 156    | pko@nekoyasudo      | 52     | 1988 | 1971-11-13 | O         |
| 11 | ごま    | 180    | goma@nekoyasudo     | 78     | 1988 | 1971-04-15 | O         |
| 12 | ぱんだ   | 185    | panda@nekoyasudo    | 95     | 1988 | 1971-06-01 | B         |
| 13 | 猫丸    | 172    | nekomaru@nekoyasudo | 80     | 1989 | 1972-01-15 | B         |
| 14 | ニャン太  | 178    | nyantaro@nekoyasudo | 58     | 1989 | 1972-02-03 | B         |
| 15 | モンチー  | 169    | monchi@nekoyasudo   | 55     | 1991 | 1973-05-06 | A         |
| 16 | ぴよ    | 155    | piyo@nekoyasudo     | 62     | 1991 | 1973-07-14 | A         |
| 17 | ラスカル  | 165    | rasukal@nekoyasudo  | 51     | 1992 | 1974-04-10 | AB        |
| 18 | くま    | 190    | kuma@nekoyasudo     | 115    | 1992 | 1970-03-03 | O         |
| 19 | ゴン    | 176    | gon@nekoyasudo      | 78     | 1993 | 1975-11-16 | O         |
| 20 | チー    | 169    | q@nekoyasudo        | 56     | 1994 | 1976-05-25 | O         |
| 21 | 太助    | 164    | tasuke@nekoyasudo   | 50     | 1996 | 1978-10-03 | B         |
| 22 | トントン  | 155    | tonton@nekoyasudo   | 45     | 1996 | 1978-12-25 | B         |
| 23 | マー    | 158    | ma@nekoyasudo       | 44     | 1997 | 1979-04-03 | A         |
| 24 | サリー   | 149    | sary@nekoyasudo     | 38     | 1999 | 1981-02-02 | A         |
| 25 | うさぎ   | 161    | usa@nekoyasudo      | 43     | 1999 | 1981-08-08 | A         |
| 26 | うー太   | 170    | uta@nekoyasudo      | 63     | 2001 | 1983-03-26 | A         |
| 27 | ローリー  | 147    | roly@nekoyasudo     | 40     | 2003 | 1985-05-26 | A         |
| 28 | マイケル  | 160    | mikel@nekoyasudo    | 49     | 2004 | 1986-06-30 | AB        |
| 29 | スー    | 163    | su@nekoyasudo       | 52     | 2006 | 1988-09-08 | O         |
| 30 | ミーヤ   | 168    | miya@nekoyasudo     | 51     | 2007 | 1989-07-07 | B         |