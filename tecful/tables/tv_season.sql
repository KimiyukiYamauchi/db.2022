CREATE TABLE `tv_season` (
  `TV_SERIES_CD` char(4) NOT NULL, -- ＴＶシリーズコード
  `TV_SEASON_NUM` int(4) NOT NULL, -- ＴＶシーズンナンバー
  `TV_SEASON_NAME` varchar(60) DEFAULT NULL, -- ＴＶシーズン名
  `TV_SEASON_NAME_JP` varchar(120) DEFAULT NULL, -- ＴＶシーズン名（日本語）
  PRIMARY KEY(`TV_SERIES_CD`, `TV_SEASON_NUM`)
);

INSERT INTO `tv_season` (`TV_SERIES_CD`, `TV_SEASON_NUM`, `TV_SEASON_NAME`, `TV_SEASON_NAME_JP`) VALUES
('1001', 1, 'SESON1', '第1シーズン'),
('2001', 1, 'SESON1', 'シーズン１'),
('2001', 2, 'SESON2', 'シーズン２'),
('3001', 1, 'SESON1', 'シーズン１');