CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `Code` int(11) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `ClassID` int(11) DEFAULT NULL,
  `PrefecturalID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
);
INSERT INTO `customers` VALUES (1,2001,'タマ','江戸川区下小岩',2,13),(2,2002,'ハナ','江戸川区北小岩',2,13),(3,2003,'ミケ','館林市緑町',2,10),(4,2004,'キク','江戸川区西小岩',2,13),(5,1005,'ウメ','中野区ねこた町',2,13),(6,1006,'トラネコ商会','札幌市南区',1,1),(7,2007,'クロ','台東区浅草橋',2,13),(8,2008,'トラ','川崎市多摩区',2,14),(9,1009,'スーパーニャンコ','江戸川区南小岩',1,13),(10,1010,'ぶち雑貨店','江戸川区南小岩',1,13),(11,1011,'ミーストア','龍ケ崎市下町',1,8),(12,2012,'タロ','江戸川区南小岩',2,13),(13,1013,'雑貨サクラ','江戸川区西小岩',1,13),(14,2014,'チー','江戸川区南小岩',2,13),(15,2015,'シロ','荒川区北千住',2,13),(16,1016,'株式会社スズナリ','松山市東山町',1,38),(17,1017,'エリザベス商会','江戸川区東小岩',1,13),(18,2018,'ポンタ','江戸川区南小岩',2,13),(19,2019,'ジロー','江戸川区南篠崎',2,13),(20,2020,'ニャン太','江戸川区南小岩',2,13),(21,2021,'ミミ','さいたま市桜区',2,11),(22,2022,'ミミミ','さいたま市桜区',2,11),(23,1023,'有限会社チョコグリーン','大阪市中央区',1,27),(24,2024,'チャー','水戸市大工町',2,8),(25,2025,'みーすけ','武蔵野市吉祥寺',2,13),(26,2026,'チロ','江戸川区南小岩',2,13),(27,1027,'パーコ株式会社','取手市井野',1,8),(28,1028,'トニー商店','江戸川区北篠崎',1,13),(29,2029,'ギン','横浜市青葉区',2,14),(30,1030,'プーストア','江東区大島',1,13);

#### __テーブル customers__
***

##### __カラム__

- $ ID$ : 顧客ID
- $Code$ : 顧客コード
- $Name $ : 顧客名
- $Address $ : 顧客住所
- $CustomerClassID $ : 顧客クラスID
- $PrefecturalID $ : 都道府県ID

| ID | Code |    Name     | Address | ClassID | PrefecturalID |
|----|------|-------------|---------|---------|---------------|
| 1  | 2001 | タマ          | 江戸川区下小岩 | 2       | 13            |
| 2  | 2002 | ハナ          | 江戸川区北小岩 | 2       | 13            |
| 3  | 2003 | ミケ          | 館林市緑町   | 2       | 10            |
| 4  | 2004 | キク          | 江戸川区西小岩 | 2       | 13            |
| 5  | 1005 | ウメ          | 中野区ねこた町 | 2       | 13            |
| 6  | 1006 | トラネコ商会      | 札幌市南区   | 1       | 1             |
| 7  | 2007 | クロ          | 台東区浅草橋  | 2       | 13            |
| 8  | 2008 | トラ          | 川崎市多摩区  | 2       | 14            |
| 9  | 1009 | スーパーニャンコ    | 江戸川区南小岩 | 1       | 13            |
| 10 | 1010 | ぶち雑貨店       | 江戸川区南小岩 | 1       | 13            |
| 11 | 1011 | ミーストア       | 龍ケ崎市下町  | 1       | 8             |
| 12 | 2012 | タロ          | 江戸川区南小岩 | 2       | 13            |
| 13 | 1013 | 雑貨サクラ       | 江戸川区西小岩 | 1       | 13            |
| 14 | 2014 | チー          | 江戸川区南小岩 | 2       | 13            |
| 15 | 2015 | シロ          | 荒川区北千住  | 2       | 13            |
| 16 | 1016 | 株式会社スズナリ    | 松山市東山町  | 1       | 38            |
| 17 | 1017 | エリザベス商会     | 江戸川区東小岩 | 1       | 13            |
| 18 | 2018 | ポンタ         | 江戸川区南小岩 | 2       | 13            |
| 19 | 2019 | ジロー         | 江戸川区南篠崎 | 2       | 13            |
| 20 | 2020 | ニャン太        | 江戸川区南小岩 | 2       | 13            |
| 21 | 2021 | ミミ          | さいたま市桜区 | 2       | 11            |
| 22 | 2022 | ミミミ         | さいたま市桜区 | 2       | 11            |
| 23 | 1023 | 有限会社チョコグリーン | 大阪市中央区  | 1       | 27            |
| 24 | 2024 | チャー         | 水戸市大工町  | 2       | 8             |
| 25 | 2025 | みーすけ        | 武蔵野市吉祥寺 | 2       | 13            |
| 26 | 2026 | チロ          | 江戸川区南小岩 | 2       | 13            |
| 27 | 1027 | パーコ株式会社     | 取手市井野   | 1       | 8             |
| 28 | 1028 | トニー商店       | 江戸川区北篠崎 | 1       | 13            |
| 29 | 2029 | ギン          | 横浜市青葉区  | 2       | 14            |
| 30 | 1030 | プーストア       | 江東区大島   | 1       | 13            |