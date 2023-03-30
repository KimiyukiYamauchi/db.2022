CREATE TABLE `tv_series` (
  `TV_SERIES_CD` char(4) NOT NULL PRIMARY KEY, -- ＴＶシリーズコード
  `TV_SERIES_NAME` varchar(100) DEFAULT NULL, -- ＴＶシリーズ名
  `TV_SERIES_NAME_JP` varchar(200) DEFAULT NULL -- ＴＶシリーズ名(日本語)
);

INSERT INTO `tv_series` (`TV_SERIES_CD`, `TV_SERIES_NAME`, `TV_SERIES_NAME_JP`) VALUES
('1001', 'Marvel''s Agents of S.H.I.E.L.D.', 'エージェント・オブ・シールド'),
('2001', 'Marvel''s Agent Carter', 'エージェント・カーター'),
('3001', 'GOTHAM', 'ゴッサム');

####__問題文__
***

ＴＶシリーズコード、ＴＶシリーズ名、ＴＶシリーズ名(日本語)の列を持つテーブルtv_seriesが与えられます。
`ＴＶシリーズコードの降順に`**ＴＶシリーズコード**と**ＴＶシリーズ名(日本語)**を出力してください。

#### __テーブル tv_series__
***

##### __カラム__

- TV_SERIES_CD : ＴＶシリーズコード
- TV_SERIES_NAME : ＴＶシリーズ名
- TV_SERIES_NAME_JP : ＴＶシリーズ名(日本語)

| TV_SERIES_CD |         TV_SERIES_NAME          | TV_SERIES_NAME_JP |
|--------------|---------------------------------|-------------------|
| 1001         | Marvel's Agents of S.H.I.E.L.D. | エージェント・オブ・シールド    |
| 2001         | Marvel's Agent Carter           | エージェント・カーター       |
| 3001         | GOTHAM                          | ゴッサム              |
