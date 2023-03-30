CREATE TABLE `hero_movie` (
  `MOVIE_CD` char(4) NOT NULL,
  `MOVIE_TITLE` varchar(100) DEFAULT NULL,
  `MOVIE_TITLE_JP` varchar(200) DEFAULT NULL,
  `MOVIE_YEAR` int(4) DEFAULT 0,
  `LIVE_YEAR` date DEFAULT NULL,
  `COMIC` varchar(20) DEFAULT NULL,
  `SERIES_CD` varchar(8) DEFAULT NULL,
  `CHARGE` int(8) DEFAULT 0,
  `PRE_MOVIE_CD` varchar(8) DEFAULT NULL,
  PRIMARY KEY(`MOVIE_CD`)
);

INSERT INTO `hero_movie` (`MOVIE_CD`, `MOVIE_TITLE`, `MOVIE_TITLE_JP`, `MOVIE_YEAR`, `LIVE_YEAR`, `COMIC`, `SERIES_CD`, `CHARGE`, `PRE_MOVIE_CD`) VALUES
('1001', 'BAT MAN', 'バットマン', 1989, '2017-12-01', 'DC', 'S001', 50, '1001'),
('1002', 'Batman Returns', 'バットマン リターンズ', 1992, '2017-12-01', 'DC', 'S001', 80, '1001'),
('1003', 'Batman Begins', 'バットマン ビギンズ ', 2005, '2018-03-01', 'DC', 'S002', 100, '1003'),
('1004', 'The Dark Knight', 'ダークナイト', 2008, '2018-03-01', 'DC', 'S002', 100, '1003'),
('1005', 'The Dark Knight Rises', 'ダークナイト ライジング', 2012, '2018-03-01', 'DC', 'S002', 100, '1004'),
('1006', 'Batman vs Superman: Dawn of Justice', 'バットマン vs スーパーマン ジャスティスの誕生', 2016, '2019-01-10', 'DC', 'S003', 100, '1006'),
('1007', 'Justice League', 'ジャスティス・リーグ', 2017, '2019-01-10', 'DC', 'S003', 100, '1006'),
('1008', 'WONDER WOMAN', 'ワンダーウーマン', 2017, '2019-01-10', 'DC', 'S003', 150, '1008'),
('1009', 'Captain America: The First Avenger', 'キャプテン・アメリカ/ザ・ファースト・アベンジャー', 2011, '2019-03-15', 'MARVEL', 'S004', 100, '1009'),
('1010', 'Captain America: The Winter Soldier', 'キャプテン・アメリカ/ウィンター・ソルジャー', 2014, '2019-03-15', 'MARVEL', 'S004', 100, '1009'),
('1011', 'Iron Man ', 'アイアンマン', 2008, '2019-04-05', 'MARVEL', 'S004', 100, '1011'),
('1012', 'Iron Man 2', 'アイアンマン2', 2010, '2019-04-05', 'MARVEL', 'S004', 100, '1011'),
('1013', 'Iron Man 3', 'アイアンマン3', 2013, '2019-04-05', 'MARVEL', 'S004', 100, '1012'),
('1014', 'Spider-Man: Homecoming', 'スパイダーマン:ホームカミング', 2017, '2019-04-05', 'MARVEL', 'S004', 150, '1014'),
('1015', 'Spider-Man: Far From Home', 'スパイダーマン:ファー・フロム・ホーム', 2019, '2019-04-05', 'MARVEL', 'S004', 0, '1014'),
('1016', 'Avengers', 'アベンジャーズ', 2012, '2019-04-05', 'MARVEL', 'S004', 80, '1016'),
('1017', 'Avengers: Age of Ultron', 'アベンジャーズ/エイジ・オブ・ウルトロン', 2015, '2019-04-05', 'MARVEL', 'S004', 80, '1016'),
('1018', 'Captain America: Civil War', 'シビル・ウォー/キャプテン・アメリカ', 2016, '2019-04-05', 'MARVEL', 'S004', 80, '1017'),
('1019', 'Kick-Ass', 'キック・アス', 2010, '2015-07-04', 'Icon Comics', 'S005', 70, '1019'),
('1020', 'Kick-Ass 2', 'キック・アス/ジャスティス・フォーエバー', 2013, '2015-07-04', 'Icon Comics', 'S005', 70, '1019'),
('1021', 'Ant-Man', 'アントマン', 2015, '2015-12-01', 'MARVEL', 'S004', 90, '1021'),
('1022', 'Avengers: Infinity War', 'アベンジャーズ/インフィニティ・ウォー', 2018, '2018-12-01', 'MARVEL', 'S004', 100, '1018'),
('1023', 'Avengers: Endgame', 'アベンジャーズ/エンドゲーム', 2019, '2019-12-01', 'MARVEL', 'S004', 200, '1022'),
('1024', 'Aquaman', 'アクアマン', 2018, '2019-12-01', 'DC', 'S003', 150, '1024');

#### __テーブル hero_movie__
***

##### __カラム__

- MOVIE_CD : 映画コード
- MOVIE_TITLE : 映画タイトル
- MOVIE_TITLE_JP : 映画タイトル(日本語)
- MOVIE_YEAR : 公開年度
- LIVE_YEAR : 配信年度
- COMIC : 原作コミック
- SERIES_CD : シリーズコード
- CHARGE : 料金
- PRE_MOVIE_CD : 前作映画コード

| MOVIE_CD |             MOVIE_TITLE             |      MOVIE_TITLE_JP       | MOVIE_YEAR | LIVE_YEAR  |    COMIC    | SERIES_CD | CHARGE | PRE_MOVIE_CD |        
|----------|-------------------------------------|---------------------------|------------|------------|-------------|-----------|--------|--------------|
| 1001     | BAT MAN                             | バットマン                     | 1989       | 2017-12-01 | DC          | S001      | 50     | 1001         |   
| 1002     | Batman Returns                      | バットマン リターンズ               | 1992       | 2017-12-01 | DC          | S001      | 80     | 1001         |
| 1003     | Batman Begins                       | バットマン ビギンズ                | 2005       | 2018-03-01 | DC          | S002      | 100    | 1003         
|
| 1004     | The Dark Knight                     | ダークナイト                    | 2008       | 2018-03-01 | DC          | S002      | 100    | 1003         |  
| 1005     | The Dark Knight Rises               | ダークナイト ライジング              | 2012       | 2018-03-01 | DC          | S002      | 100    | 1004         |
| 1006     | Batman vs Superman: Dawn of Justice | バットマン vs スーパーマン ジャスティスの誕生 | 2016       | 2019-01-10 | DC          | S003      | 100    | 1006         |
| 1007     | Justice League                      | ジャスティス・リーグ                | 2017       | 2019-01-10 | DC          | S003      | 100    | 1006         |
| 1008     | WONDER WOMAN                        | ワンダーウーマン                  | 2017       | 2019-01-10 | DC          | S003      | 150    | 1008         |
| 1009     | Captain America: The First Avenger  | キャプテン・アメリカ/ザ・ファースト・アベンジャー | 2011       | 2019-03-15 | MARVEL      | S004      | 100    | 1009         |
| 1010     | Captain America: The Winter Soldier | キャプテン・アメリカ/ウィンター・ソルジャー    | 2014       | 2019-03-15 | MARVEL      | S004      | 100    | 1009         |
| 1011     | Iron Man                            | アイアンマン                    | 2008       | 2019-04-05 | MARVEL      | S004      | 100    | 1011         |  
| 1012     | Iron Man 2                          | アイアンマン2                   | 2010       | 2019-04-05 | MARVEL      | S004      | 100    | 1011         |  
| 1013     | Iron Man 3                          | アイアンマン3                   | 2013       | 2019-04-05 | MARVEL      | S004      | 100    | 1012         |  
| 1014     | Spider-Man: Homecoming              | スパイダーマン:ホームカミング           | 2017       | 2019-04-05 | MARVEL      | S004      | 150    | 1014         |
| 1015     | Spider-Man: Far From Home           | スパイダーマン:ファー・フロム・ホーム       | 2019       | 2019-04-05 | MARVEL      | S004      | 0      | 1014         |
| 1016     | Avengers                            | アベンジャーズ                   | 2012       | 2019-04-05 | MARVEL      | S004      | 80     | 1016         | 
| 1017     | Avengers: Age of Ultron             | アベンジャーズ/エイジ・オブ・ウルトロン      | 2015       | 2019-04-05 | MARVEL      | S004      | 80     | 1016         |
| 1018     | Captain America: Civil War          | シビル・ウォー/キャプテン・アメリカ        | 2016       | 2019-04-05 | MARVEL      | S004      | 80     | 1017         |
| 1019     | Kick-Ass                            | キック・アス                    | 2010       | 2015-07-04 | Icon Comics | S005      | 70     | 1019         |  
| 1020     | Kick-Ass 2                          | キック・アス/ジャスティス・フォーエバー      | 2013       | 2015-07-04 | Icon Comics | S005      | 70     | 1019         |
| 1021     | Ant-Man                             | アントマン                     | 2015       | 2015-12-01 | MARVEL      | S004      | 90     | 1021         |   
| 1022     | Avengers: Infinity War              | アベンジャーズ/インフィニティ・ウォー       | 2018       | 2018-12-01 | MARVEL      | S004      | 100    | 1018         |
| 1023     | Avengers: Endgame                   | アベンジャーズ/エンドゲーム            | 2019       | 2019-12-01 | MARVEL      | S004      | 200    | 1022         |
| 1024     | Aquaman                             | アクアマン                     | 2018       | 2019-12-01 | DC          | S003      | 150    | 1024         |   