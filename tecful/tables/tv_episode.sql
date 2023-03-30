CREATE TABLE `tv_episode` (
  `TV_SERIES_CD` char(4) NOT NULL, -- ＴＶシリーズコード
  `TV_SEASON_NUM` int(4) NOT NULL, -- ＴＶシーズンナンバー
  `TV_EPISODE_NUM` int(4) NOT NULL, -- ＴＶタイトルナンバー
  `TV_EPISODE_CD` char(7) NOT NULL, -- ＴＶエピソードコード
  `TV_EPISODE_TITLE` varchar(100) DEFAULT NULL, -- ＴＶタイトル
  `TV_EPISODE_TITLE_JP` varchar(200) DEFAULT NULL, -- ＴＶタイトル(日本語)
  `TV_EPISODE_LIVEDAY` date DEFAULT NULL, -- 配信日
  `TV_EPISODE_CHARGE` int(8) DEFAULT 0, -- 料金
  PRIMARY KEY(`TV_SERIES_CD`, `TV_SEASON_NUM`, `TV_EPISODE_NUM`)
);

INSERT INTO `tv_episode` (`TV_SERIES_CD`, `TV_SEASON_NUM`, `TV_EPISODE_NUM`, `TV_EPISODE_CD`, `TV_EPISODE_TITLE`, `TV_EPISODE_TITLE_JP`, `TV_EPISODE_LIVEDAY`, `TV_EPISODE_CHARGE`) VALUES
('1001', 1, 1, '1001001', 'Pilot', 'シールド精鋭チーム誕生', '2013-10-01', 0),
('1001', 1, 2, '1001002', '084', '０８４', '2013-10-01', 50),
('1001', 1, 3, '1001003', 'The Asset', 'グラヴィトニウム', '2013-10-01', 50),
('1001', 1, 4, '1001004', 'Eye Spy', '裏切り者を救え', '2013-10-01', 50),
('2001', 1, 1, '2001001', 'Now is Not the End', 'キャプテン・アメリカの恋人', '2015-12-01', 0),
('2001', 1, 2, '2001002', 'Bridge and Tunnel', 'ミルク・トラックを追え', '2015-12-01', 50),
('2001', 1, 3, '2001003', 'Time and Tide', '執事の過去', '2015-12-01', 50),
('2001', 1, 4, '2001004', 'The Blitzkrieg Button', 'ハワードの帰還', '2015-12-01', 50),
('2001', 1, 5, '2001005', 'The Iron Ceiling', 'ベラルーシ行き', '2015-12-01', 50),
('2001', 1, 6, '2001006', 'A Sin to Err', '取り返せない過ち', '2015-12-01', 50),
('2001', 1, 7, '2001007', 'Snafu', '催眠博士', '2015-12-01', 50),
('2001', 1, 8, '2001008', 'Valediction', 'ミッドナイト・オイル', '2015-12-01', 50),
('2001', 2, 1, '2001009', 'The Lady in the Lake', 'SSR ロサンゼルス支局', '2016-12-01', 50),
('2001', 2, 2, '2001010', 'A View in the Dark', '天文台の夜景', '2016-12-01', 50),
('2001', 2, 3, '2001011', 'Better Angels', '女優の秘密', '2016-12-01', 50),
('2001', 2, 4, '2001012', 'Smoke & Mirrors', '煙と鏡', '2016-12-01', 50),
('2001', 2, 5, '2001013', 'The Atomic Job', '決死の5人組', '2016-12-01', 50),
('2001', 2, 6, '2001014', 'Life of the Party', 'パーティの夜', '2016-12-01', 50),
('2001', 2, 7, '2001015', 'Monsters', 'モンスター', '2016-12-01', 50),
('3001', 1, 1, '3001001', 'Pilot', '正義の消えた街', '2015-10-01', 0),
('3001', 1, 2, '3001002', 'Selina Kyle', 'セリーナ・カイル', '2015-10-01', 50),
('3001', 1, 3, '3001003', 'The Balloonman', 'バルーンマン', '2015-10-02', 50),
('3001', 1, 4, '3001004', 'Arkham', 'アーカム', '2015-10-02', 50);

####__問題文__
***

ＴＶシリーズコード、ＴＶシーズンナンバー、ＴＶタイトルナンバー、ＴＶエピソードコード、ＴＶタイトル、ＴＶタイトル(日本語)、配信日、料金の列を持つテーブルtv_episodeが与えられます。
`ＴＶタイトルの昇順に`**ＴＶタイトル**、**ＴＶタイトル(日本語)**、**料金+100**を出力してください。
その際、それぞれ以下のように列別名で取り出しなさい。

| 通常の列名 | 列別名 |
| :--- | :--- |
| TV_SERIES_NAME | ＴＶシリーズ名 |
| TV_SERIES_NAME_JP  | ＴＶシリーズ名(日本語) |

`注意：まず".header on"を入力後、SQL文を入力してください`


#### __テーブル tv_series__
***

##### __カラム__

- TV_SERIES_CD : ＴＶシリーズコード
- TV_SERIES_NAME : ＴＶシーズンナンバー
- TV_SERIES_NAME_JP : ＴＶタイトルナンバー
- TV_SERIES_NAME_JP : ＴＶエピソードコード
- TV_SERIES_NAME_JP : ＴＶタイトル
- TV_SERIES_NAME_JP : ＴＶタイトル(日本語)
- TV_SERIES_NAME_JP : 配信日
- TV_SERIES_NAME_JP : 料金

| TV_SERIES_CD | TV_SEASON_NUM | TV_EPISODE_NUM | TV_EPISODE_CD |   TV_EPISODE_TITLE    | TV_EPISODE_TITLE_JP | TV_EPISODE_LIVEDAY | TV_EPISODE_CHARGE |
|--------------|---------------|----------------|---------------|-----------------------|---------------------|--------------------|-------------------|
| 1001         | 1             | 1              | 1001001       | Pilot                 | シールド精鋭チーム誕生         | 2013-10-01         | 0                 
|
| 1001         | 1             | 2              | 1001002       | 084                   | ０８４                 | 2013-10-01         | 50                |       
| 1001         | 1             | 3              | 1001003       | The Asset             | グラヴィトニウム            | 2013-10-01         | 50                |  
| 1001         | 1             | 4              | 1001004       | Eye Spy               | 裏切り者を救え             | 2013-10-01         | 50                |   
| 2001         | 1             | 1              | 2001001       | Now is Not the End    | キャプテン・アメリカの恋人       | 2015-12-01         | 0               
  |
| 2001         | 1             | 2              | 2001002       | Bridge and Tunnel     | ミルク・トラックを追え         | 2015-12-01         | 50                
|
| 2001         | 1             | 3              | 2001003       | Time and Tide         | 執事の過去               | 2015-12-01         | 50                |     
| 2001         | 1             | 4              | 2001004       | The Blitzkrieg Button | ハワードの帰還             | 2015-12-01         | 50                |   
| 2001         | 1             | 5              | 2001005       | The Iron Ceiling      | ベラルーシ行き             | 2015-12-01         | 50                |
| 2001         | 1             | 6              | 2001006       | A Sin to Err          | 取り返せない過ち            | 2015-12-01         | 50                |  
| 2001         | 1             | 7              | 2001007       | Snafu                 | 催眠博士                | 2015-12-01         | 50                |      
| 2001         | 1             | 8              | 2001008       | Valediction           | ミッドナイト・オイル          | 2015-12-01         | 50                |
| 2001         | 2             | 1              | 2001009       | The Lady in the Lake  | SSR ロサンゼルス支局        | 2016-12-01         | 50                |  
| 2001         | 2             | 2              | 2001010       | A View in the Dark    | 天文台の夜景              | 2016-12-01         | 50                |    
| 2001         | 2             | 3              | 2001011       | Better Angels         | 女優の秘密               | 2016-12-01         | 50                |     
| 2001         | 2             | 4              | 2001012       | Smoke & Mirrors       | 煙と鏡                 | 2016-12-01         | 50                |       
| 2001         | 2             | 5              | 2001013       | The Atomic Job        | 決死の5人組              | 2016-12-01         | 50                |
| 2001         | 2             | 6              | 2001014       | Life of the Party     | パーティの夜              | 2016-12-01         | 50                |    
| 2001         | 2             | 7              | 2001015       | Monsters              | モンスター               | 2016-12-01         | 50                |     
| 3001         | 1             | 1              | 3001001       | Pilot                 | 正義の消えた街             | 2015-10-01         | 0                 |   
| 3001         | 1             | 2              | 3001002       | Selina Kyle           | セリーナ・カイル            | 2015-10-01         | 50                |  
| 3001         | 1             | 3              | 3001003       | The Balloonman        | バルーンマン              | 2015-10-02         | 50                |    
| 3001         | 1             | 4              | 3001004       | Arkham                | アーカム                | 2015-10-02         | 50                |      