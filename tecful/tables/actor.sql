CREATE TABLE `actor` (
  `ACTOR_CD` char(5) NOT NULL,
  `ACTOR_NAME` varchar(36) DEFAULT NULL,
  `ACTOR_NAME_JP` varchar(36) DEFAULT NULL,
  PRIMARY KEY(`ACTOR_CD`)
);

INSERT INTO `actor` (`ACTOR_CD`, `ACTOR_NAME`, `ACTOR_NAME_JP`) VALUES
('AC001', 'Michael Keaton', 'マイケル・キートン'),
('AC002', 'Christian Bale', 'クリスチャン・ベール'),
('AC003', 'Ben Affleck', 'ベン・アフレック'),
('AC004', 'Gal Gadot', 'ガル・ガドット'),
('AC005', 'Chris Evans', 'クリス・エヴァンス'),
('AC006', 'Robert Downey, Jr.', 'ロバート・ダウニー・Jr'),
('AC007', 'Tom Holland', 'トム・ホランド'),
('AC008', 'Chloë Grace Moretz', 'クロエ・グレース・モレッツ'),
('AC009', 'Scarlett Johansson', 'スカーレット・ヨハンソン'),
('AC010', 'Samuel Leroy Jackson', 'サミュエル・L・ジャクソン'),
('AC011', 'Clark Gregg', 'クラーク・グレッグ'),
('AC012', 'Gwyneth Kate Paltrow', 'グウィネス・パルトロー'),
('AC013', 'Christopher Hemsworth', 'クリス・ヘムズワース'),
('AC014', 'Thomas William Hiddleston', 'トム・ヒドルストン'),
('AC015', 'Jason Momoa', 'ジェイソン・モモア'),
('AC016', 'Henry Cavill', 'ヘンリー・カヴィル'),
('AC017', 'Duke (Henry) Sanada', '真田広之'),
('AC018', 'Benjamin McKenzie', 'ベンジャミン・マッケンジー'),
('AC019', 'Hayley Elizabeth Atwell', 'ヘイリー・アトウェル'),
('AC020', 'Jack Nicholson', 'ジャック・ニコルソン'),
('AC021', 'Kim Basinger', 'キム・ベイシンガー'),
('AC022', 'Michelle Pfeiffer', 'ミシェル・ファイファー'),
('AC023', 'Danny DeVito', 'ダニー・デヴィート'),
('AC024', 'Christopher Walken', 'クリストファー・ウォーケン'),
('AC025', 'Liam Neeson', 'リーアム・ニーソン'),
('AC026', 'Sir Michael Caine', 'マイケル・ケイン'),
('AC027', 'Gary Oldman', 'ゲイリー・オールドマン'),
('AC028', 'Anne Jacqueline Hathaway', 'アン・ハサウェイ'),
('AC029', 'Morgan Freeman', 'モーガン・フリーマン'),
('AC030', 'Paul Rudd', 'ポール・ラッド'),
('AC031', 'Laurence Fishburne', 'ローレンス・フィッシュバーン'),
('AC032', 'Michael Douglas', 'マイケル・ダグラス'),
('AC033', 'Heath Andrew Ledger', 'ヒース・アンドリュー・レジャー');

####__問題文__
***
俳優の俳優コード、俳優名、俳優名(日本語)を持つテーブル$actor$が与えられます。

#### __テーブル actor__
***

##### __カラム__

- ACTOR_CD : 俳優コード
- ACTOR_NAME : 俳優名
- ACTOR_NAME_JP : 俳優名(日本語)


| ACTOR_CD |        ACTOR_NAME         |  ACTOR_NAME_JP  |
|----------|---------------------------|-----------------|
| AC001    | Michael Keaton            | マイケル・キートン       |
| AC002    | Christian Bale            | クリスチャン・ベール      |
| AC003    | Ben Affleck               | ベン・アフレック        |
| AC004    | Gal Gadot                 | ガル・ガドット         |
| AC005    | Chris Evans               | クリス・エヴァンス       |
| AC006    | Robert Downey, Jr.        | ロバート・ダウニー・Jr    |
| AC007    | Tom Holland               | トム・ホランド         |
| AC008    | Chloe Grace Moretz        | クロエ・グレース・モレッツ   |
| AC009    | Scarlett Johansson        | スカーレット・ヨハンソン    |
| AC010    | Samuel Leroy Jackson      | サミュエル・L・ジャクソン   |
| AC011    | Clark Gregg               | クラーク・グレッグ       |
| AC012    | Gwyneth Kate Paltrow      | グウィネス・パルトロー     |
| AC013    | Christopher Hemsworth     | クリス・ヘムズワース      |
| AC014    | Thomas William Hiddleston | トム・ヒドルストン       |
| AC015    | Jason Momoa               | ジェイソン・モモア       |
| AC016    | Henry Cavill              | ヘンリー・カヴィル       |
| AC017    | Duke (Henry) Sanada       | 真田広之            |
| AC018    | Benjamin McKenzie         | ベンジャミン・マッケンジー   |
| AC019    | Hayley Elizabeth Atwell   | ヘイリー・アトウェル      |
| AC020    | Jack Nicholson            | ジャック・ニコルソン      |
| AC021    | Kim Basinger              | キム・ベイシンガー       |
| AC022    | Michelle Pfeiffer         | ミシェル・ファイファー     |
| AC023    | Danny DeVito              | ダニー・デヴィート       |
| AC024    | Christopher Walken        | クリストファー・ウォーケン   |
| AC025    | Liam Neeson               | リーアム・ニーソン       |
| AC026    | Sir Michael Caine         | マイケル・ケイン        |
| AC027    | Gary Oldman               | ゲイリー・オールドマン     |
| AC028    | Anne Jacqueline Hathaway  | アン・ハサウェイ        |
| AC029    | Morgan Freeman            | モーガン・フリーマン      |
| AC030    | Paul Rudd                 | ポール・ラッド         |
| AC031    | Laurence Fishburne        | ローレンス・フィッシュバーン  |
| AC032    | Michael Douglas           | マイケル・ダグラス       |
| AC033    | Heath Andrew Ledger       | ヒース・アンドリュー・レジャー |