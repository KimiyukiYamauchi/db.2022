CREATE TABLE `series` (
  `SERIES_CD` char(4) NOT NULL,
  `SERIES_NAME` varchar(60) DEFAULT NULL,
  `SERIES_NAME_JP` varchar(120) DEFAULT NULL,
  PRIMARY KEY(`SERIES_CD`)
);

INSERT INTO `series` (`SERIES_CD`, `SERIES_NAME`, `SERIES_NAME_JP`) VALUES
('S001', 'Tim Burton Version', 'ティム・バートン版'),
('S002', 'Dark Knight Trilogy', 'ダークナイト トリロジー'),
('S003', 'Justice League', 'ジャスティス・リーグ'),
('S004', 'Marvel Cinematic Universe', 'マーベル・シネマティック・ユニバース'),
('S005', 'Kick Ass', 'キック・アス'),
('S999', 'unknown', '未定');


####__問題文__
***
各シリーズのシリーズコード、シリーズ名、シリーズ名（日本語）を持つテーブル$series$が与えられます。

#### __テーブル series__
***

##### __カラム__

- SERIES_CD : シリーズコード
- SERIES_NAME : シリーズ名
- SERIES_NAME_JP : シリーズ名（日本語）

| SERIES_CD |        SERIES_NAME        |   SERIES_NAME_JP   |
|-----------|---------------------------|--------------------|
| S001      | Tim Burton Version        | ティム・バートン版          |
| S002      | Dark Knight Trilogy       | ダークナイト トリロジー       |
| S003      | Justice League            | ジャスティス・リーグ         |
| S004      | Marvel Cinematic Universe | マーベル・シネマティック・ユニバース |
| S005      | Kick Ass                  | キック・アス             |
| S999      | unknown                   | 未定                 |